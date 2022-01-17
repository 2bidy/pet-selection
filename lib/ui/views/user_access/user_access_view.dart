import 'package:flutter/material.dart';
import 'package:pet_selection/resources/theme/colours.dart';
import 'package:pet_selection/ui/views/user_access/user_access_responsive_ui.dart';
import 'package:pet_selection/ui/views/user_access/user_access_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class UserAccessView extends StatefulWidget {
  const UserAccessView({Key? key}) : super(key: key);

  @override
  _UserAccessViewState createState() => _UserAccessViewState();
}

class _UserAccessViewState extends State<UserAccessView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserAccessViewModel>.reactive(
      viewModelBuilder: () => UserAccessViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: greyBlue,
        body: ScreenTypeLayout.builder(
          mobile: (context) => OrientationLayoutBuilder(
            portrait: (context) => UserAccessPage4MobilePortrait(),
            landscape: (context) => UserAccessPage4MobileLandscape(),
          ),
          tablet: (context) => OrientationLayoutBuilder(
            portrait: (context) => UserAccessPage4TabletPortrait(),
            landscape: (context) => UserAccessPage4Desktop(),
          ),
          desktop: (context) => UserAccessPage4Desktop(),
        ),
      ),
    );
  }
}
