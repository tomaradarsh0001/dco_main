import 'package:dco/Screens/ForgotPassword.dart';
import 'package:dco/Screens/Home.dart';
import 'package:dco/utilities/app_color.dart';
import 'package:dco/utilities/app_constant.dart';
import 'package:dco/utilities/app_font.dart';
import 'package:dco/utilities/app_image.dart';
import 'package:dco/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  Login({super.key, required this.title});

  final String title;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = true;

  _showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "No",
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes", style: TextStyle(color: Colors.black)),
      onPressed: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.AreYouSureText[language]),
      content: Text(AppLanguage.ExitAppText[language]),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return _showAlertDialog(context);
        // return Future.value(false);
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  height: MediaQuery.of(context).size.height * 100 / 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  2.1 /
                                  100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 62 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 33 / 100,
                              child: Image.asset(AppImage.AppLogoIcon),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.5 /
                                  100,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    46 /
                                    100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                4 /
                                                100),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          70 /
                                          100,
                                      child: Text(
                                        AppLanguage.LoginText[language],
                                        style: const TextStyle(
                                            fontFamily: AppFont.fontFamily,
                                            color: AppColor.secondaryColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                3 /
                                                100),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                70 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                6 /
                                                100,
                                        decoration: BoxDecoration(
                                          color: AppColor.primaryColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      2 /
                                                      100,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      6 /
                                                      100,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      6 /
                                                      100,
                                                  child: Image.asset(
                                                      AppImage.userprofileicon),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      55 /
                                                      100,
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(6)),
                                                  ),
                                                  child: TextFormField(
                                                    style: const TextStyle(
                                                        color: AppColor
                                                            .secondaryColor),
                                                    keyboardType:
                                                        TextInputType.name,
                                                    maxLength: 50,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      fillColor:
                                                          AppColor.primaryColor,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 0,
                                                              left: 2,
                                                              top: 3),
                                                      filled: true,
                                                      counterText: '',
                                                      hintText: AppLanguage
                                                              .UsernameText[
                                                          language],
                                                      hintStyle: const TextStyle(
                                                          color: AppColor
                                                              .texfilledColor,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  66 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.1 /
                                                  100,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              2.6 /
                                              100,
                                    ),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                70 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                6 /
                                                100,
                                        color: AppColor.primaryColor,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      2 /
                                                      100,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      6 /
                                                      100,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      6 /
                                                      100,
                                                  child: Image.asset(
                                                      AppImage.LockIcon),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      62 /
                                                      100,
                                                  // height: MediaQuery.of(context)
                                                  //         .size
                                                  //         .height *
                                                  //     5.5 /
                                                  //     100,

                                                  child: TextFormField(
                                                    style: const TextStyle(
                                                        color: AppColor
                                                            .secondaryColor),
                                                    keyboardType:
                                                        TextInputType.text,
                                                    obscureText:
                                                        _passwordVisible,
                                                    maxLength: 16,
                                                    textAlignVertical:
                                                        TextAlignVertical
                                                            .center,
                                                    decoration: InputDecoration(
                                                      counterText: '',
                                                      border: InputBorder.none,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 0,
                                                              left: 2,
                                                              top: 4),
                                                      filled: true,
                                                      suffixIcon: TextButton(
                                                        child: Text(
                                                          _passwordVisible
                                                              ? AppLanguage
                                                                      .ShowText[
                                                                  language]
                                                              : AppLanguage
                                                                      .HideText[
                                                                  language],
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 13),
                                                        ),
                                                        onPressed: () {
                                                          setState(() {
                                                            _passwordVisible =
                                                                !_passwordVisible;
                                                          });
                                                        },
                                                      ),
                                                      hintText: AppLanguage
                                                              .PasswordText[
                                                          language],
                                                      hintStyle: const TextStyle(
                                                          color: AppColor
                                                              .texfilledColor,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  66 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.1 /
                                                  100,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              4 /
                                              100,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Home()));
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                70 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                6 /
                                                100,
                                        decoration: const BoxDecoration(
                                          color: AppColor.themeColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          AppLanguage.LoginText[language],
                                          style: const TextStyle(
                                              color: AppColor.secondaryColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              3 /
                                              100,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotPassword()));
                                      },
                                      child: Text(
                                        AppLanguage
                                            .ForgotPasswordText[language],
                                        style: const TextStyle(
                                          color: AppColor.secondaryColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          //  decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                35 /
                                                100,
                                        height: 0.8,
                                        color: AppColor.secondaryColor)
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 100 / 100,
                          alignment: Alignment.center,
                          color: AppColor.themeColor,
                          child: Text(
                            AppLanguage.CopyrightText[language],
                            style: const TextStyle(
                                color: AppColor.secondaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
