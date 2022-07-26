
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ms_widgets/ms_widgets.dart';
import 'package:pet_orange/layout/cubit/cubit.dart';
import 'package:pet_orange/modules/Request/cubit/cubit.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../shared/colors.dart';
import '../../shared/components.dart';
import '../../shared/constants.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class LoginScreen extends StatelessWidget {
  var selectedItem;
  List<String>items = ['Item 1','Item 2','Item 3'];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (context, state) {

      },
      builder: (context,state){
        RequestCubit cubit = RequestCubit.get(context);
        return SafeArea(
          child: SingleChildScrollView(
            child: Material(
              child: Column(
                children: [
                  // TODO Navbar
                  Container(
                    decoration:
                    BoxDecoration(gradient: LinearGradient(colors: gradient)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 150,
                          ),
                          Spacer(),
                          defaultButton(
                            backgroundColor: Colors.transparent,
                            function: () async {
                            },
                            text: 'Home',
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                            borderColor: Colors.transparent,
                          ),
                          defaultButton(
                            backgroundColor: Colors.transparent,
                            function: () async {
                            },
                            text: 'About us',
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                            borderColor: Colors.transparent,
                          ),
                          defaultButton(
                            backgroundColor: Colors.transparent,
                            function: () async {
                            },
                            text: 'Category',
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                            borderColor: Colors.transparent,
                          ),
                          defaultButton(
                            backgroundColor: Colors.transparent,
                            function: () {
                            },
                            text: 'Services',
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                            borderColor: Colors.transparent,
                          ),
                          defaultButton(
                            backgroundColor: Colors.transparent,
                            function: () {
                            },
                            text: 'Request',
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                            borderColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          defaultButton(
                            hoverColor: Colors.white,
                            backgroundColor: Colors.transparent,
                            function: () {},
                            borderRadius: BorderRadius.circular(20),
                            text: 'Sign up',
                            textStyle: TextStyle(color: kOffWhite),
                            borderColor: kOffWhite,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          defaultButton(
                            hoverColor: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            backgroundColor: Colors.transparent,
                            function: () {},
                            text: 'Login',
                            textStyle: TextStyle(color: kOffWhite),
                            borderColor: kOffWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //TODO Screen Body
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal:450.0),
                    child: Container(

                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Log in',
                              style: TextStyle(color: kBrown, fontSize: 45),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: defaultTextFormField(
                                width: 400,
                                borderRadius: BorderRadius.circular(20),
                                filledColor: Colors.white,
                                hintText: 'Email',
                                prefixWidget: Icon(
                                  Icons.email,
                                ),
                                borderColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: defaultTextFormField(
                                width: 400,
                                borderRadius: BorderRadius.circular(20),
                                filledColor: Colors.white,
                                hintText: 'Password',
                                isSecure: true,
                                prefixWidget: Icon(Icons.lock),
                                suffixWidget: Icon(
                                    Icons.remove_red_eye
                                ),
                                borderColor: Colors.transparent,
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                child: defaultButton(
                                  hoverColor:kBrown,
                                  buttonWidth: 400,
                                  buttonHeight: 50,
                                  backgroundColor: kBrown,
                                  borderColor: Colors.transparent,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: <Color>[kBrown, kBrown]),
                                  ),
                                  function: () {},
                                  text: 'Login',
                                  textStyle: TextStyle(color: kOffWhite, fontSize: 20),
                                  borderRadius: BorderRadius.circular(15),
                                  isUpperCase: false,

                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            const Text(
                              "_________________________    Or     __________________________",
                              style: TextStyle(fontWeight: FontWeight.bold, color: kBrown),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  defaultIconButton(
                                    buttomTitle: 'Facebook',
                                    iconSvgPath: facebook,
                                    onPressed: (){

                                    },
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: kBlueFb,
                                    height: 50,
                                    width: 190,
                                    textStyle: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  // TODO def

                                  SizedBox(
                                    width: 30,
                                  ),
                                  defaultIconButton(
                                    buttomTitle: 'Google',
                                    iconSvgPath: icongoogle,
                                    onPressed: (){

                                    },
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    height: 50,
                                    width: 190,
                                    textStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  )

                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Already have an account?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                    text: ' Sign up',
                                    style: TextStyle(
                                      color: kBrown,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {

                                      }),
                              ]),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //TODO Footer
                  footerBuilder(),
                ],
              ),
            ),
          ),

        );
      },
    );
  }
}


