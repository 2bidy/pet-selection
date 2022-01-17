import 'package:flutter/material.dart';

import 'package:pet_selection/ui/views/pet_selection/pet_selection_components.dart';

//final PetSelectionViewModel _petSelectionViewModel = PetSelectionViewModel();

////////////////////////////////////////////////////////////////////////
// HANDLES DESKTOP SCREEN PORTRAIT
////////////////////////////////////////////////////////////////////////

class PetSelectionPage4Desktop extends StatelessWidget {
  const PetSelectionPage4Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 90.0, bottom: 15.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Select your kind of pet and view details',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          SearchAndSelectFromListOfPet(),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES TABLET SCREEN PORTRAIT
////////////////////////////////////////////////////////////////////////

class PetSelectionPage4Tablet extends StatelessWidget {
  const PetSelectionPage4Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container();
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES MOBILE SCREEN PORTRAIT
////////////////////////////////////////////////////////////////////////

class PetSelectionPage4MobilePortrait extends StatelessWidget {
  const PetSelectionPage4MobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container();
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES TABLET SCREEN LANDSCAPE
////////////////////////////////////////////////////////////////////////

class PetSelectionPage4MobileLandScape extends StatelessWidget {
  const PetSelectionPage4MobileLandScape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container();
  }
}
