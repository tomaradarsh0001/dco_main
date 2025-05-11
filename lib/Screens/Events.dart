import 'package:dco/Screens/EventSubCategory.dart';
import 'package:dco/Screens/Success.dart';
import 'package:dco/utilities/app_color.dart';
import 'package:dco/utilities/app_font.dart';
import 'package:flutter/material.dart';
import '../utilities/app_constant.dart';
import '../utilities/app_image.dart';
import '../utilities/app_language.dart';

class Events extends StatefulWidget {


  const Events({Key? key}) : super(key: key);
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  bool calender1 = false;
  bool calender2 = false;

 
   _showAlertDialog1(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        AppLanguage.NoText[language],
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text(AppLanguage.YesText[language],
       style: TextStyle(color: Colors.black),),
      
      onPressed: () {
         Navigator.pushNamed(
                              context,
                              SuccessScreen.routeName,
                              arguments: SuccessClass(
                                message: AppLanguage
                                    .EventCongretulationText[language],
                                title:
                                    AppLanguage.SuccessText[language],
                                screenName: "eventscreen",
                              ),
                            );
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.AreYouSureText[language]),
      content: Text(
       AppLanguage.EventModelText[language],
      ),
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        systemOverlayStyle: Constant.systemUiOverlayStyle,
        leading: InkWell(
            onTap: () {},
            child: IconButton(
              icon: Image.asset(
                AppImage.backicon,
                height: 25,
                width: 25,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventSubCategory()),
                );
              },
            )),
        title: Text(AppLanguage.EventsText[language],
            style: Constant.appBarCenterTitleStyle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    height: MediaQuery.of(context).size.height * 7 / 100,
                    color: AppColor.greyBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 92 / 100,
                          child: Text(
                            AppLanguage.TableTennisText[language],
                            style: const TextStyle(
                                color: Colors.black,
                                 fontFamily: AppFont.fontFamily,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 95 / 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                        AppImage.locationIcon,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        AppLanguage
                                            .NethajiIndoorStadiumText[language],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                4 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                4 /
                                                100,
                                            child: Image.asset(
                                              AppImage.calenderwhiteIcon,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5 /
                                                100,
                                          ),
                                          Container(
                                            child: Text(
                                              AppLanguage
                                                  .EventsDateText[language],
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  Container(
                    child: Text(AppLanguage.NovemberText[language],
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  GestureDetector(
                    onTap: () {
                      calender1 = !calender1;
                      setState(() {});
                    },
                   child: calender1? Container(
                      height: MediaQuery.of(context).size.width * 53 / 100,
                      width: MediaQuery.of(context).size.width * 97/ 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                   AppImage.calenderImage1,
                                  
                                  ))),

                      // child: Image.asset(
                      //   AppImage.calenderImage,
                      // ),
                    ):Container(
                      height: MediaQuery.of(context).size.width * 53 / 100,
                      width: MediaQuery.of(context).size.width * 98 / 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                   AppImage.calenderImage
                                  ))),

                      // child: Image.asset(
                      //   AppImage.calenderImage,
                      // ),
                    ),

                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (calender1) {
                             _showAlertDialog1(context);
                            }
                          },
                          child: Container(
                            height:
                                MediaQuery.of(context).size.height * 4.5 / 100,
                            width: MediaQuery.of(context).size.width * 48 / 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color:AppColor.themeColor,
                                borderRadius: BorderRadius.circular(6)),
                            child: Text(
                                AppLanguage.MarkAvilaibilityText[language],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1.3 / 100,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2 / 100,
                    width: MediaQuery.of(context).size.width * 91 / 100,
                    color: Color(0xffebebeb),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1.5 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    height: MediaQuery.of(context).size.height * 7 / 100,
                    color: AppColor.greyBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 92 / 100,
                          child: Text(
                            AppLanguage.HockeyText[language],
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 95 / 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                        AppImage.locationIcon,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        AppLanguage
                                            .NethajiIndoorStadiumText[language],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                            4 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                4 /
                                                100,
                                            child: Image.asset(
                                              AppImage.calenderwhiteIcon,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5 /
                                                100,
                                          ),
                                          Container(
                                            child: Text(
                                              AppLanguage
                                                  .EventsDateText[language],
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  Container(
                    child: Text(AppLanguage.DecemberText[language],
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 53 / 100,
                    width: MediaQuery.of(context).size.width * 97 / 100,
                    child: Image.asset(
                      AppImage.calenderImage,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 4.5 / 100,
                          width: MediaQuery.of(context).size.width * 48 / 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColor.themeColor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                              AppLanguage.MarkAvilaibilityText[language],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1.1 / 100,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2 / 100,
                    width: MediaQuery.of(context).size.width * 91 / 100,
                    color: Color(0xffebebeb),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
