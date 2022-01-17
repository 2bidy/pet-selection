import 'package:firebase_auth/firebase_auth.dart';
import 'package:pet_selection/app/app.locator.dart';
import 'package:pet_selection/app/app.router.dart';
import 'package:pet_selection/core/services/authentication/authentication.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// BUSINESS LOGIC AND INTERACTION WITH THE SERVICES
// Once you change sth in dis viewModel you will be able to call notifyListener() which
// will rebuild that builder as u see in d reactive constructor(on the model's VIEW)

class UserAccessViewModel extends BaseViewModel {
  // Dis is where we will use the navigation service to navigate to our View. we get
  // our navService from our locator which is our Stacked Package wrapped version of
  // the Get_it package. Before we can even do dat we have to setUp our dependency
  // system in our app file (APP PACKAGE ). Which will be d last part of d app setUp

  final _authService = locator<AuthenticationService>();
  final _navService = locator<NavigationService>();

  final String _title = 'UserAccess';
  String get title => _title;

  Future signUp({
    required String email,
    required String password,
  }) async {
    //navService.navigateTo(Routes.signUpView);
    //setBusy(true);

    var result = await _authService.signUpWithEmail(
      email: email,
      password: password,
    );

    //setBusy(false);

    if (result is bool) {
      if (result) {
        _navService.navigateTo(Routes.homeView);
      } else {
        return result;
      }
    } else {
      return result;
    }
  }

  Future logIn({
    required String email,
    required String password,
  }) async {
    //navService.navigateTo(Routes.signUpView);
    //setBusy(true);

    var result = await _authService.loginWithEmail(
      email: email,
      password: password,
    );

    //setBusy(false);

    /*if (result is bool) {
      if (result) {
        _navService.navigateTo(Routes.homeView);
      } else {
        return result;
      }
    } else {
      return result;
    }*/

    if (result != null) {
      // (result != null)
      _navService.navigateTo(Routes.homeView);
    } else {
      return result;
    }
  }

  void googleLogin() {
    _authService.googleLoginAuth();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        notifyListeners();
        _navService.navigateTo(Routes.homeView);
      } else {
        print('User is not signed in!');
      }
    });

    /*_authService.googleLoginAuth();
    if (!_authService.hasLogOut()) {
      notifyListeners();
      _navService.navigateTo(Routes.homeView);
    }*/
    /*try {
      final user = await _googleSignIn.signIn();
      if (user == null) return;
      _signedInUser = user;

      final googleAuth = await user.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // We are now ready to use the above credential to signIn into firebase
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }*/
    //notifyListeners();
  }

  void goToHomeScreen() {
    _navService.navigateTo(Routes.homeView);
  }
}
