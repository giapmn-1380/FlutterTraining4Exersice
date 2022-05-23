import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giapmn_training_4_exercise/gen/assets.gen.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';
import 'package:giapmn_training_4_exercise/styles/custom_shape.dart';
import 'package:giapmn_training_4_exercise/styles/custom_text_style.dart';
import 'package:giapmn_training_4_exercise/views/screens/register/RegisterScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    final customTextStyle = CustomTextStyle();

    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [CustomColor.bgPrimary, CustomColor.bgSecondary])),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 100.0, left: 32.0, right: 32.0),
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
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Text(
                        "SIGN IN",
                        style: CustomTextStyle.fontSize24
                            .copyWith(color: CustomColor.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        obscureText: false,
                        style:
                            TextStyle(color: CustomColor.text, fontSize: 18.0),
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          hintStyle: TextStyle(
                              color: CustomColor.text, fontSize: 18.0),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: CustomColor.text)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: CustomColor.text)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        obscureText: true,
                        style:
                            TextStyle(color: CustomColor.text, fontSize: 18.0),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: CustomColor.text, fontSize: 18.0),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: CustomColor.text)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: CustomColor.text)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Transform.scale(
                              scale: 1.0,
                              child: Checkbox(
                                side: BorderSide(
                                    color: CustomColor.white,
                                    width: 2,
                                    style: BorderStyle.solid),
                                activeColor: CustomColor.bgPrimary,
                                shape: CustomShape.buttonShapeRadius4,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = !isChecked;
                                  });
                                },
                              )),
                          Text(
                            "Remember Password",
                            style: TextStyle(color: CustomColor.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text("GET STARTED",
                              style: TextStyle(
                                  color: CustomColor.bgPrimary,
                                  fontSize: 18.0)),
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            primary: Colors.white,
                            minimumSize: const Size(double.infinity, 60.0),
                            shape: CustomShape.buttonShapeRadius30
                                .copyWith(side: BorderSide.none),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Assets.svgs.icFacebook
                                  .svg(width: 25.0, height: 25.0),
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                primary: Colors.white,
                                minimumSize: const Size(60.0, 60.0),
                                shape: const CircleBorder(),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Assets.svgs.icTwitter
                                    .svg(width: 25.0, height: 25.0),
                                style: ElevatedButton.styleFrom(
                                  elevation: 2,
                                  primary: Colors.white,
                                  minimumSize: const Size(60.0, 60.0),
                                  shape: const CircleBorder(),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "FORGOT PASSWORD",
                        style: TextStyle(
                          color: CustomColor.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  child: Container(
                height: 80,
                decoration: BoxDecoration(color: CustomColor.bgCreateAccount),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "DONT HAVE ACCOUNT ? ",
                          style: TextStyle(color: CustomColor.bgPrimary)),
                      TextSpan(
                          text: "SIGN UP",
                          style: TextStyle(
                            color: CustomColor.white,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push<MaterialPageRoute>(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const RegisterScreen()),
                              );
                            }),
                    ]))
                  ],
                ),
              ))
            ],
          )),
    );
  }
}
