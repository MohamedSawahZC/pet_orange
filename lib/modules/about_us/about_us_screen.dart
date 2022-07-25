import 'package:flutter/material.dart';
import 'package:ms_widgets/ms_widgets.dart';

import '../../shared/constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 600,
            width: double.maxFinite,
            decoration:
                BoxDecoration(gradient: LinearGradient(colors: gradient)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not only people need a house',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\n sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\n Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\n Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    defaultButton(
                      hoverColor: Color(0xFFFFFFFF),
                      buttonWidth: 250,
                      buttonHeight: 50,
                      backgroundColor: Colors.white,
                      borderColor: Colors.transparent,
                      function: () {},
                      text: 'Help them',
                      textStyle: TextStyle(
                          color: Colors.black,
                        fontSize: 20
                      ),
                      borderRadius: BorderRadius.circular(15),
                      isUpperCase: false,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/dog2.png',
                      width: 350,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            width: double.maxFinite,
            decoration:
            BoxDecoration(gradient: LinearGradient(colors: gradient)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not only people need a house',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\n sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\n Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\n Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    defaultButton(
                      hoverColor: Color(0xFFFFFFFF),
                      buttonWidth: 250,
                      buttonHeight: 50,
                      backgroundColor: Colors.white,
                      borderColor: Colors.transparent,
                      function: () {},
                      text: 'Help them',
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),
                      borderRadius: BorderRadius.circular(15),
                      isUpperCase: false,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/dog2.png',
                      width: 350,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            width: double.maxFinite,
            decoration:
            BoxDecoration(gradient: LinearGradient(colors: gradient)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              ],
            ),
          ),

        ],
      ),
    );
  }
}
