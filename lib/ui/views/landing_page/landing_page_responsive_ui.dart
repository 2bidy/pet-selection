import 'package:flutter/material.dart';
import 'package:pet_selection/resources/theme/colours.dart';

import '../views_shared_components.dart';

////////////////////////////////////////////////////////////////////////
// HANDLES DESKTOP SCREEN
////////////////////////////////////////////////////////////////////////

class LandingPage4Desktop extends StatelessWidget {
  const LandingPage4Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DisplayLogo(width: 70.0, height: 60.0),
        const SizedBox(height: 60.0),
        Expanded(
          child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            color: Colors.black12,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Search',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ' Your Favorite Pet',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  color: green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'On our platform today!',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'We help you create a gallery of your best pets',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        const CustomElevatedBtn(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'lib/assets/pet_image.jpg',
                    scale: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES TABLET SCREEN PORTRAIT
////////////////////////////////////////////////////////////////////////

class LandingPage4Tablet extends StatelessWidget {
  const LandingPage4Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: const DisplayLogo(width: 70.0, height: 60.0),
        ),
        const SizedBox(height: 60.0),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            color: Colors.black12,
            //height: 200.0,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/pet_image.jpg',
                  height: 300.0,
                  width: 300.0,
                ),
                SizedBox(height: 30.0),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Search',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' Your Favorite Pet',
                        style: TextStyle(
                          fontSize: 32.0,
                          color: green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'On our platform today!',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'We help you create a gallery of your best pets',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 20.0),
                const CustomElevatedBtn(),
                /*ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: orange,
                    onPrimary: yellow,
                    //textStyle: elevatedButtonTextStyle,
                    fixedSize: sizeOfEBtn,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () => {},
                  child: Text('Get Started'),
                )*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES MOBILE SCREEN PORTRAIT
////////////////////////////////////////////////////////////////////////

class LandingPage4MobilePortrait extends StatelessWidget {
  const LandingPage4MobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: const DisplayLogo(width: 70.0, height: 60.0),
        ),
        const SizedBox(height: 40.0),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            color: white, //Colors.black12,
            //height: 200.0,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/pet_image.jpg',
                  /*height: 100.0,
                  width: 100.0,*/
                  scale: 0.5,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Search',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' Your Favorite Pet',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'On our platform today!',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'We help you create a gallery of your best pets.',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5.0),
                const CustomElevatedBtn(),
                /*ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: orange,
                    onPrimary: white,
                    */ /*textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),*/ /*
                    fixedSize: Size(370.0, 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () => {},
                  child: Text('GET STARTED'),
                )*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////////////////////////////
// HANDLES MOBILE SCREEN LANDSCAPE
////////////////////////////////////////////////////////////////////////

class LandingPage4MobileLandScape extends StatelessWidget {
  const LandingPage4MobileLandScape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DisplayLogo(
          width: 40.0,
          height: 40.0,
        ),
        //const SizedBox(height: 1.0),
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(38.0, 5.0, 18.0, 5.0),
            color: Colors.black12,
            //height: 200.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Search',
                              style: TextStyle(
                                fontSize: 22.0,
                                color: black,
                                fontWeight: FontWeight.bold,
                                //fontStyle: FontStyle.normal,
                                //letterSpacing: 0.2,
                                //height: 0.9,
                              ),
                            ),
                            TextSpan(
                              text: ' Your Favorite Pet',
                              style: TextStyle(
                                fontSize: 22.0,
                                color: green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'On our platform today!',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'We help you create a gallery of your best pets',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      const CustomElevatedBtn(
                          /*sizeGlobal: Size(150.0, 25.0),
                        radiusGlobal: 6.0,*/
                          ),
                      /*ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: orange,
                          onPrimary: white,
                          //textStyle: elevatedButtonTextStyle,
                          fixedSize: Size(150.0, 25.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        onPressed: () => {},
                        child: Text('Get Started  '),
                      )*/
                    ],
                  ),
                ),
                //SizedBox(width: 100.0),
                Expanded(
                  child: Image.asset(
                    'lib/assets/pet_image.jpg',
                    //height: 150, //MediaQuery.of(context).size.height,
                    //width: 150, // MediaQuery.of(context).size.width,
                    scale: 0.8,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
