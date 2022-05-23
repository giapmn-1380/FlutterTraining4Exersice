import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giapmn_training_4_exercise/gen/assets.gen.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';
import 'package:giapmn_training_4_exercise/styles/custom_shape.dart';
import 'package:giapmn_training_4_exercise/styles/custom_text_style.dart';
import 'package:giapmn_training_4_exercise/views/screens/login/LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [CustomColor.bgPrimary, CustomColor.bgSecondary])),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 32.0, right: 32.0),
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: Assets.images.logo.image(fit: BoxFit.contain),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "Find and Meet people around\nyou to find LOVE",
                  style: CustomTextStyle.fontSize14
                      .copyWith(color: CustomColor.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 84.0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Assets.svgs.icFacebook.svg(width: 25.0, height: 25.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: 1.5,
                            height: 30.0,
                            decoration:
                                BoxDecoration(color: CustomColor.bgPrimary),
                          ),
                        ),
                        Text("Sign in with Facebook",
                            style: TextStyle(
                                color: CustomColor.bgPrimary, fontSize: 16.0))
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      primary: Colors.white,
                      minimumSize: const Size(double.infinity, 60.0),
                      shape: CustomShape.buttonShapeRadius30
                          .copyWith(side: BorderSide.none),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Assets.svgs.icTwitter.svg(width: 25.0, height: 25.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: 1.5,
                            height: 30.0,
                            decoration:
                                BoxDecoration(color: CustomColor.bgPrimary),
                          ),
                        ),
                        Text("Sign in with Twitter",
                            style: TextStyle(
                                color: CustomColor.bgPrimary, fontSize: 16.0))
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      primary: Colors.white,
                      minimumSize: const Size(double.infinity, 60.0),
                      shape: CustomShape.buttonShapeRadius30
                          .copyWith(side: BorderSide.none),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign up",
                        style: TextStyle(
                            color: CustomColor.bgPrimary, fontSize: 16.0)),
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      primary: Colors.white,
                      minimumSize: const Size(double.infinity, 60.0),
                      shape: CustomShape.buttonShapeRadius30
                          .copyWith(side: BorderSide.none),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RichText(
                  text: TextSpan(
                      text: "ALREADY REGISTERED? SIGN IN",
                      style: TextStyle(
                        color: CustomColor.white,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
