import 'package:flutter/material.dart';
import 'package:pet_selection/ui/views/home/home_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'home_responsive_ui.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => Home4MobilePortrait(),
          landscape: (context) => Home4MobileLandscape(),
        ),
        tablet: (context) => OrientationLayoutBuilder(
          portrait: (context) => Home4TabletPortrait(),
          landscape: (context) => Home4Desktop(),
        ),
        desktop: (context) => Home4Desktop(),
      ),
    );
  }
}
