import 'package:nomadlodge_backend_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class TasksEndpoint extends Endpoint {
  Future<User?> getUserByAuthIdentifier(
      Session session, String authIdentifier) async {
    var user = await User.db.findFirstRow(session,  where: (t) => t.authUserIdentifier.equals(authIdentifier),);
    return user;
  }

  Future<User> createUser(Session session, User user) async {
    var newUser = await User.db.insertRow(session, user);
    return newUser;
  }
}
