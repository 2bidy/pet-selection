// This file contains all the widgets or components that is shared by all the
// views in this project

import 'package:flutter/material.dart';
import 'package:pet_selection/resources/theme/colours.dart';
import 'package:pet_selection/resources/values/strings.dart';
import 'package:pet_selection/ui/views/user_access/user_access_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants.dart';
import 'landing_page/landing_page_view_model.dart';

// The logo display on all of the screens
class DisplayLogo extends StatelessWidget {
  final double width;
  final double height;

  const DisplayLogo({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: Image.asset(
        'lib/assets/pet_co_logo.png',
        width: width, //80.0,
        height: height, //70.0,
        //alignment: Alignment.topLeft,
      ),
    );
  }
}

final LandingPageViewModel _landingPageViewModel = LandingPageViewModel();
final UserAccessViewModel _userAccessViewModel = UserAccessViewModel();

// This widget is used by LandingPageView and UserAccessView
/*class CustomElevatedBtn extends StatelessWidget {
  */ /*final Size? sizeGlobal;
  final double? radiusGlobal;*/ /*
  final String data;
  final String? inputEmail;
  final String? inputPassword;
  const CustomElevatedBtn({
    Key? key,
    this.data = 'GET STARTED',
    this.inputEmail,
    this.inputPassword,
    */ /*this.sizeGlobal,
    this.radiusGlobal,*/ /*
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        Size size = sizeOfEBtn;
        double radius = 12.0;
        if (sizingInfo.isDesktop) {
          size;
          radius;
        }
        if (sizingInfo.isTablet) {
          // We can also considering custom 4 Port&Land
          size;
          radius;
        }
        if (sizingInfo.isMobile) {
          if (orientation == Orientation.landscape) {
            size = Size(150.0, 25.0);
            radius = 6.0;
          } else {
            // The else is for mobile portrait
            size = Size(350.0, 40.0);
            radius = 8.0;
          }
        }

        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: orange,
            onPrimary: Colors.white,
            //textStyle: elevatedButtonTextStyle,
            fixedSize: size,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          // (data == signInCAPTxt) ? _userAccessViewModel.logIn(email: inputEmail!, password: inputPassword!) ,
          onPressed: () {
            if (data == 'GET STARTED') {
              _landingPageViewModel.goToNextScreen();
            }
            if (data == signInCAPTxt) {
              _userAccessViewModel.logIn(
                  email: inputEmail!, password: inputPassword!);
              //_userAccessViewModel.goToNextScreen();
            }
            if (data == createAccountCAPTxt) {
              _userAccessViewModel.signUp(
                  email: inputEmail!, password: inputPassword!);
              //_userAccessViewModel.goToNextScreen();
            }
          },
          child: Text(data),
        );
      },
    );
  }
}*/

class CustomElevatedBtn extends StatefulWidget {
  /*final Size? sizeGlobal;
  final double? radiusGlobal;*/
  final String data;
  final String? inputEmail;
  final String? inputPassword;
  const CustomElevatedBtn({
    Key? key,
    this.data = 'GET STARTED',
    this.inputEmail,
    this.inputPassword,
    /*this.sizeGlobal,
    this.radiusGlobal,*/
  }) : super(key: key);

  @override
  State<CustomElevatedBtn> createState() => _CustomElevatedBtnState();
}

class _CustomElevatedBtnState extends State<CustomElevatedBtn> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        Size size = sizeOfEBtn;
        double radius = 12.0;
        if (sizingInfo.isDesktop) {
          size;
          radius;
        }
        if (sizingInfo.isTablet) {
          // We can also considering custom 4 Port&Land
          size;
          radius;
        }
        if (sizingInfo.isMobile) {
          if (orientation == Orientation.landscape) {
            size = Size(300.0, 38.0);
            radius = 6.0;
          } else {
            // The else is for mobile portrait
            size = Size(350.0, 40.0);
            radius = 8.0;
          }
        }

        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: orange,
            onPrimary: Colors.white,
            //textStyle: elevatedButtonTextStyle,
            fixedSize: size,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          // (data == signInCAPTxt) ? _userAccessViewModel.logIn(email: inputEmail!, password: inputPassword!) ,
          onPressed: () {
            if (widget.data == 'GET STARTED') {
              _landingPageViewModel.goToNextScreen();
            }
            if (widget.data == continueWithGoogleTxt) {
              _userAccessViewModel.googleLogin();
            }
            if (widget.data == signInCAPTxt) {
              _userAccessViewModel.logIn(
                  email: widget.inputEmail!, password: widget.inputPassword!);
              //_userAccessViewModel.goToNextScreen();
            }
            if (widget.data == createAccountCAPTxt) {
              _userAccessViewModel.signUp(
                  email: widget.inputEmail!, password: widget.inputPassword!);
              //_userAccessViewModel.goToNextScreen();
            }
          },
          child: Text(widget.data),
        );
      },
    );
  }
}
