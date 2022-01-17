import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_selection/app/app.locator.dart';
import 'package:pet_selection/app/app.router.dart';
import 'package:pet_selection/core/services/authentication/authentication.dart';
import 'package:pet_selection/core/services/database/firestore.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// BUSINESS LOGIC AND INTERACTION WITH THE SERVICES
// Once you change sth in dis viewModel you will be able to call notifyListener() which
// will rebuild that builder as u see in d reactive constructor(on the model's VIEW)

class HomeViewModel extends BaseViewModel {
  // Dis is where we will use the navigation service to navigate to our View. we get
  // our navService from our locator which is our Stacked Package wrapped version of
  // the Get_it package. Before we can even do dat we have to setUp our dependency
  // system in our app file (APP PACKAGE ). Which will be d last part of d app setUp
  final _authService = locator<AuthenticationService>();
  final _fireStoreDBService = locator<FirestoreDBService>();
  final _navService = locator<NavigationService>();

  CollectionReference getPetsCollectionRef(String document) {
    return _fireStoreDBService.collectionRef(document);
  }

  // This method get the current user signedIn from the Authentication class
  String getCurrentUser(String inputData) {
    var outputData = _authService.currentUser(inputData);
    return outputData.toString();
  }

  // Logout the user
  void googleLogout() {
    try {
      _authService.googleLogoutAuth();
      notifyListeners();
      _navService.navigateTo(Routes.userAccessView);
    } catch (e) {
      print('fail');
    }
  }

  // perform navigation function to the desired screen on button click
  void goToPetSelectionScreen() {
    _navService.navigateTo(Routes.petSelectionView);
  }

  // Get the ID of the current user that is signedIN
  String getCurrentUserID() => _authService.currentUserID;
}
