import 'package:flutter/material.dart';
import 'package:pet_selection/resources/values/strings.dart';
import 'package:pet_selection/ui/views/home/home_view_model.dart';

import 'home_components.dart';

final HomeViewModel _homeViewModel = HomeViewModel();

////////////////////////////////////////////////////////////////////////
// HANDLES DESKTOP SCREEN
////////////////////////////////////////////////////////////////////////

class Home4Desktop extends StatelessWidget {
  const Home4Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          _homeViewModel.getCurrentUser(name),
        ),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            onPressed: () => _homeViewModel.goToPetSelectionScreen(),
            child: Text('Select pets'),
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _homeViewModel.googleLogout();
              print('you click logout iconButton');
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('List of favorite pets:', style: TextStyle(fontSize: 24.0)),
          ListOfFavouritePetWidget(),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES TABLET SCREEN PORTRAIT
////////////////////////////////////////////////////////////////////////

class Home4TabletPortrait extends StatelessWidget {
  const Home4TabletPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES MOBILE SCREEN PORTRAIT
////////////////////////////////////////////////////////////////////////

class Home4MobilePortrait extends StatelessWidget {
  const Home4MobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*return Column(
      children: <Widget>[
        Container(
          color: red,
          height: 50.0,
        ),
      ],
    );*/
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          _homeViewModel.getCurrentUser(name),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              //print('you click logout icon');
              _homeViewModel.googleLogout();
            },
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES MOBILE SCREEN LANDSCAPE
////////////////////////////////////////////////////////////////////////

class Home4MobileLandscape extends StatelessWidget {
  const Home4MobileLandscape({Key? key}) : super(key: key);

  @override /*color: white,
      height: 500.0,*/
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
