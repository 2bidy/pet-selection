import 'package:flutter/material.dart';
import 'package:pet_selection/ui/views/landing_page/landing_page_responsive_ui.dart';
import 'package:pet_selection/ui/views/landing_page/landing_page_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  _LandingPageViewState createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LandingPageViewModel>.reactive(
      viewModelBuilder: () => LandingPageViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        /*appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const DisplayLogo(),
        ),*/
        body: ScreenTypeLayout.builder(
          mobile: (context) => OrientationLayoutBuilder(
            portrait: (context) => LandingPage4MobilePortrait(),
            landscape: (context) => LandingPage4MobileLandScape(),
          ),
          tablet: (context) => OrientationLayoutBuilder(
            portrait: (context) => LandingPage4Tablet(),
            landscape: (context) => LandingPage4Desktop(),
          ),
          desktop: (context) => LandingPage4Desktop(),
        ),
        /*body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //const DisplayLogo(),
            //const SizedBox(height: 150.0),
            //const LandingPage4Desktop(),
          ],
        ),*/
      ),
    );
  }
}
