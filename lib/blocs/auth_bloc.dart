import 'package:e_dnevnik/Providers/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthBloc {
  final authService = Auth();
  final googleSignIn = GoogleSignIn(scopes:['email']);

  Stream<User> get currentUser => authService.currentUser;

  loginGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential= GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken:  googleAuth.accessToken
      );

      // sign in->Firebase

      final result = await authService.gSignUp(credential);

      print(result.user);
    } catch (e) {
      print(e);
    }
  }
}