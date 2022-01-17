import 'package:flutter/material.dart';
import 'package:pet_selection/ui/views/pet_selection/pet_selection_responsive_ui.dart';
import 'package:pet_selection/ui/views/pet_selection/pet_selection_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class PetSelectionView extends StatefulWidget {
  const PetSelectionView({Key? key}) : super(key: key);

  @override
  _PetSelectionViewState createState() => _PetSelectionViewState();
}

class _PetSelectionViewState extends State<PetSelectionView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetSelectionViewModel>.reactive(
      viewModelBuilder: () => PetSelectionViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: ScreenTypeLayout.builder(
          mobile: (context) => OrientationLayoutBuilder(
            portrait: (context) => const PetSelectionPage4MobilePortrait(),
            landscape: (context) => const PetSelectionPage4MobileLandScape(),
          ),
          tablet: (context) => OrientationLayoutBuilder(
            portrait: (context) => const PetSelectionPage4Tablet(),
            landscape: (context) => const PetSelectionPage4Desktop(),
          ),
          desktop: (context) => const PetSelectionPage4Desktop(),
        ),
      ),
    );
  }
}
