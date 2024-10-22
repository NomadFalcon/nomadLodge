import 'package:nomadlodge_backend_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'dart:math';
import 'dart:convert';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class UserEndpoint extends Endpoint {
  Future<User?> getUserByAuthIdentifier(
      Session session, String authIdentifier) async {
        print("called getUserByAuthIdentifier with $authIdentifier");
    var user = await User.db.findFirstRow(session,  where: (t) => t.authUserIdentifier.equals(authIdentifier),);
    print("got from getUserByAuthIdentifier a $user");
    return user;
  }

  String getRandString(int len) {
    var random = Random.secure();
    var values = List<int>.generate(len, (i) =>  random.nextInt(255));
    return base64UrlEncode(values);
  }
  Future<User?> createUser(Session session, User user, Location? location) async {
    var existingUser = await User.db.findFirstRow(session,  where: (t) => t.email.equals(user.email),);
    if(existingUser != null) {
      return null;
    }
    print("creating user with $user");
    var newUser = await User.db.insertRow(session, user);
     print("id creating user with $user");
    if(newUser.authUserIdentifier == null) {
      final invitation = UserInvitation(code: getRandString(6), url: "www.nomadlodge.com", userId: newUser.id!, email: newUser.email);
      
      final createdInvitation =  await UserInvitation.db.insertRow(session, invitation);
      if(location != null && location.team != null) {
        LocationTeam  team = location.team!;
        team.invitations.add(createdInvitation);
        team.users.add(newUser);
        LocationTeam.db.updateRow(session, team);
      }
      print("creating userinvitation with $createdInvitation");
      //TODO: Send email with invitation code
    }

    return newUser;
  }

  Future<User?> associateUserFromInvitation(Session session, String invitationCode, String authIdentifier) async {
    var userInvitation = await UserInvitation.db.findFirstRow(session,  where: (t) => t.code.equals(invitationCode), include: UserInvitation.include(user: User.include()));
    if(userInvitation != null) {
      var user = userInvitation.user!;
      user.authUserIdentifier = authIdentifier;
      final updatedUser = await User.db.updateRow(session, user);
      return updatedUser;
    } 

    return null;
  }

  Future<UserDevice> addDevice(Session session, UserDevice userDevice) async {
    var existingUserDevice = await UserDevice.db.findFirstRow(session,  where: (t) => t.token.equals(userDevice.token),);
    if(existingUserDevice != null) {
      return existingUserDevice;
    }
    var newUserDevice = await UserDevice.db.insertRow(session, userDevice);
    return newUserDevice;
  }

  Future<void> removeDeviceWithToken(Session session, String userDeviceToken) async {
    var userDevice = await UserDevice.db.findFirstRow(session,  where: (t) => t.token.equals(userDeviceToken),);
    if(userDevice != null) {
      await UserDevice.db.deleteRow(session, userDevice);
    }
    return;
  }
}
