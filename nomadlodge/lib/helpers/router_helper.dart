import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'
    hide PhoneAuthProvider, EmailAuthProvider;
import 'user_helpers.dart';
import '/../decorations.dart';
import 'package:serverpod_client/serverpod_client.dart';

class RouterHelper {
  late final Client client;
  late final SessionManager sessionManager;

  static Map<String, WidgetBuilder> getRoutes(
      BuildContext context,
      AuthStateChangeAction<MFARequired> mfaAction,
      ActionCodeSettings actionCodeSettings,
      EmailLinkAuthProvider emailLinkProviderConfig) {
    return {
      ...getAuthRoutes(
          context, mfaAction, actionCodeSettings, emailLinkProviderConfig),
      ...getUserRoutes(context, mfaAction)
    };
  }

  static Map<String, WidgetBuilder> getAuthRoutes(
      BuildContext context,
      AuthStateChangeAction<MFARequired> mfaAction,
      ActionCodeSettings actionCodeSettings,
      EmailLinkAuthProvider emailLinkProviderConfig) {
    return {
      '/': (context) {
        return SignInScreen(
          actions: [
            ForgotPasswordAction((context, email) {
              Navigator.pushNamed(
                context,
                '/forgot-password',
                arguments: {'email': email},
              );
            }),
            VerifyPhoneAction((context, _) {
              Navigator.pushNamed(context, '/phone');
            }),
            AuthStateChangeAction<SignedIn>((context, state) {
              UserHelpers().saveUser(state.user!);
              Navigator.pushReplacementNamed(context, '/profile');
            }),
            AuthStateChangeAction<UserCreated>((context, state) {
              if (!state.credential.user!.emailVerified) {
                Navigator.pushNamed(context, '/verify-email');
              } else {
                Navigator.pushReplacementNamed(context, '/profile');
              }
            }),
            AuthStateChangeAction<CredentialLinked>((context, state) {
              if (!state.user.emailVerified) {
                Navigator.pushNamed(context, '/verify-email');
              } else {
                Navigator.pushReplacementNamed(context, '/profile');
              }
            }),
            mfaAction,
            EmailLinkSignInAction((context) {
              Navigator.pushReplacementNamed(context, '/email-link-sign-in');
            }),
          ],
          styles: const {
            EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
          },
          headerBuilder: headerImage('assets/images/flutterfire_logo.png'),
          sideBuilder: sideImage('assets/images/flutterfire_logo.png'),
          subtitleBuilder: (context, action) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                action == AuthAction.signIn
                    ? 'Welcome to Firebase UI! Please sign in to continue.'
                    : 'Welcome to Firebase UI! Please create an account to continue',
              ),
            );
          },
          footerBuilder: (context, action) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  action == AuthAction.signIn
                      ? 'By signing in, you agree to our terms and conditions.'
                      : 'By registering, you agree to our terms and conditions.',
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            );
          },
        );
      },
      '/verify-email': (context) {
        return EmailVerificationScreen(
          headerBuilder: headerIcon(Icons.verified),
          sideBuilder: sideIcon(Icons.verified),
          actionCodeSettings: actionCodeSettings,
          actions: [
            EmailVerifiedAction(() {
              Navigator.pushReplacementNamed(context, '/profile');
            }),
            AuthCancelledAction((context) {
              FirebaseUIAuth.signOut(context: context);
              Navigator.pushReplacementNamed(context, '/');
            }),
          ],
        );
      },
      '/phone': (context) {
        return PhoneInputScreen(
          actions: [
            SMSCodeRequestedAction((context, action, flowKey, phone) {
              Navigator.of(context).pushReplacementNamed(
                '/sms',
                arguments: {
                  'action': action,
                  'flowKey': flowKey,
                  'phone': phone,
                },
              );
            }),
          ],
          headerBuilder: headerIcon(Icons.phone),
          sideBuilder: sideIcon(Icons.phone),
        );
      },
      '/sms': (context) {
        final arguments =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

        return SMSCodeInputScreen(
          actions: [
            AuthStateChangeAction<SignedIn>((context, state) {
              Navigator.of(context).pushReplacementNamed('/profile');
            })
          ],
          flowKey: arguments?['flowKey'],
          action: arguments?['action'],
          headerBuilder: headerIcon(Icons.sms_outlined),
          sideBuilder: sideIcon(Icons.sms_outlined),
        );
      },
      '/forgot-password': (context) {
        final arguments =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

        return ForgotPasswordScreen(
          email: arguments?['email'],
          headerMaxExtent: 200,
          headerBuilder: headerIcon(Icons.lock),
          sideBuilder: sideIcon(Icons.lock),
        );
      },
      '/email-link-sign-in': (context) {
        return EmailLinkSignInScreen(
          actions: [
            AuthStateChangeAction<SignedIn>((context, state) {
              Navigator.pushReplacementNamed(context, '/');
            }),
          ],
          provider: emailLinkProviderConfig,
          headerMaxExtent: 200,
          headerBuilder: headerIcon(Icons.link),
          sideBuilder: sideIcon(Icons.link),
        );
      },
    };
  }

  static Map<String, WidgetBuilder> getUserRoutes(
      BuildContext context, AuthStateChangeAction<MFARequired> mfaAction) {
    return {
      '/profile': (context) {
        return ProfileScreen(
          actions: [
            SignedOutAction((context) {
              Navigator.pushReplacementNamed(context, '/');
            }),
            mfaAction,
          ],
        );
      },
    };
  }
}
