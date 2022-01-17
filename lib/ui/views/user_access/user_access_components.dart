import 'package:flutter/material.dart';
import 'package:pet_selection/resources/values/strings.dart';
import 'package:pet_selection/ui/views/views_shared_components.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: white,
        //height: 40.0,
        //width: 220.0,
        child: CustomElevatedBtn(
          data: continueWithGoogleTxt,
        ),
        /*child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: orange,
            onPrimary: Colors.white,
            textStyle: elevatedButtonTextStyle,
            fixedSize: Size(150.0, 25.0),
            //radius = 6.0;,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          onPressed: () {
            _userAccessViewModel.googleLogin();
            //_userAccessViewModel.goToHomeScreen();
          },
          */ /*onPressed: () => StreamBuilder(
            //initialData: _userAccessViewModel.googleLogin(),
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                return HomeView(); //_userAccessViewModel.goToNextScreen();
              } else if (snapshot.hasError) {
                return Center(child: Text('Something went wrong'));
              } else {
                _userAccessViewModel.goToNextScreen();
                //return Center(child: Text('Here is a default messge'));
              }
            },
          ),*/ /*
          child: Text('Continue with Google'),
        ),*/
      ),
    );
  }
}

/*class AuthContainer extends StatefulWidget {
  @override
  State<AuthContainer> createState() => _AuthContainerState();
}

class _AuthContainerState extends State<AuthContainer> {
  bool isSetToSignIn = true;
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  */ /* @override
  void dispose() {
    // Call the dispose() method of the TextEditingController
    // here, and remember to do it before the super call, as
    // per official documentation:
    // https://api.flutter.dev/flutter/widgets/TextEditingController-class.html
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }*/ /*

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: white,
        height: 400.0,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Column(
            children: <Widget>[
              Text(
                (isSetToSignIn) ? signInTxt : createAccountTxt,
                style: TextStyle(
                  //color: grey,
                  fontSize: 26.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                  height: 0.9,
                ),
              ),
              SizedBox(height: 20.0),
              CustomTextField(
                hintText: emailHintText,
                textEditingController: _emailTextController,
              ),
              SizedBox(height: 15.0),
              CustomTextField(
                hintText: passwordHintText,
                textEditingController: _passwordTextController,
              ),
              SizedBox(height: 35.0),
              CustomElevatedBtn(
                data: (isSetToSignIn) ? signInCAPTxt : createAccountCAPTxt,
                inputEmail: _emailTextController.text,
                inputPassword: _passwordTextController.text,
              ),
              SizedBox(height: 25.0),
              TextButton(
                child: Text(
                  isSetToSignIn ? createAccountTxt : alreadyHasAccTxt,
                ),
                onPressed: () {
                  setState(() {
                    */ /*if (isSetToSignIn) {
                      isSetToSignIn = false;
                    } else {
                      isSetToSignIn = true;
                    }*/ /*
                    isSetToSignIn = !isSetToSignIn;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? textEditingController;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.textEditingController,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(290.0, 40.0),
      child: TextField(
        keyboardType: (widget.hintText == emailHintText)
            ? TextInputType.emailAddress
            : null,
        decoration: InputDecoration(hintText: widget.hintText),
        obscureText: (widget.hintText == passwordHintText) ? true : false,
        controller: widget.textEditingController,
      ),
    );
  }
}
