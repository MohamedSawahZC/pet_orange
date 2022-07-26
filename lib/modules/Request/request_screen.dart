
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ms_widgets/ms_widgets.dart';
import 'package:pet_orange/layout/cubit/cubit.dart';
import 'package:pet_orange/modules/Login/login_screen.dart';
import 'package:pet_orange/modules/Request/cubit/cubit.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../shared/colors.dart';
import '../../shared/components.dart';
import '../../shared/constants.dart';
import 'cubit/states.dart';

class RequestScreen extends StatelessWidget {
  var selectedItem;
  List<String>items = ['Item 1','Item 2','Item 3'];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequestCubit,RequestStates>(
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
                            function: () {
                              navigateTo(context, LoginScreen());
                            },
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
                    padding: const EdgeInsets.symmetric(horizontal: 450,vertical: 100),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Request',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 60,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Image.network('https://image.shutterstock.com/image-photo/pure-youth-crazy-english-cocker-260nw-1424153078.jpg',width: 300,),
                            const SizedBox(
                              height: 20,
                            ),
                            defaultTextFormField(
                              width: 400,
                              borderRadius: BorderRadius.circular(20),
                              filledColor: Colors.white,
                              hintText: 'Name',
                              borderColor: Colors.transparent,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            //TODO Drop down section
                            Container(
                              width: 400,
                              child: defaultDropDownMenu(
                                items: items,
                                selectedItem: selectedItem,
                                borderRadius: BorderRadius.circular(20),
                                backgroundColor: Colors.white,
                                dropDownColor: Colors.white,
                                borderColor: Colors.transparent,
                                labelText: "Category",
                                alignment: Alignment.center,
                                itemTextStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.all(10),
                                onChanged: (item){
                                  selectedItem = item;
                                },
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    labelText: "Year",
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    labelText: "Months",
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    labelText: "Size",
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    labelText: "Breed",
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    alignment: Alignment.center,
                                    labelText: "Gender",
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    dropDownColor: Colors.white,
                                    labelText: "Breed",
                                    borderColor: Colors.transparent,
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,

                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    labelText: "Hair Length",
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  width: 170,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    backgroundColor: Colors.white,
                                    labelText: "Care & behavior",
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  child: defaultDropDownMenu(
                                    items: items,
                                    selectedItem: selectedItem,
                                    borderRadius: BorderRadius.circular(20),
                                    labelText: "House Trained",
                                    backgroundColor: Colors.white,
                                    dropDownColor: Colors.white,
                                    borderColor: Colors.transparent,
                                    alignment: Alignment.center,
                                    itemTextStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    onChanged: (item){
                                      selectedItem = item;
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  width: 150,
                                  child: defaultTextFormField(
                                    borderRadius: BorderRadius.circular(20),
                                    filledColor: Colors.white,
                                    hintText: 'Color',

                                    borderColor: Colors.transparent,
                                  ),

                                ),

                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),

                            const Text(
                              "Detect your current location",
                              style: TextStyle(fontWeight: FontWeight.bold),

                            ),
                            //TODO  Input Section
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              child: defaultTextFormField(
                                width: 400,
                                borderRadius: BorderRadius.circular(20),
                                filledColor: Colors.white,
                                hintText: 'Location',

                                isSecure: true,
                                suffixWidget: IconButton(
                                  icon: const Icon(Icons.place),
                                  color: Colors.black,

                                  onPressed: () {

                                  },

                                ),
                                borderColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              child: defaultTextFormField(
                                width: 400,
                                borderRadius: BorderRadius.circular(20),
                                filledColor: Colors.white,
                                hintText: 'Phone number',
                                borderColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              child: defaultTextFormField(
                                width: 400,
                                height: 200,
                                borderRadius: BorderRadius.circular(20),
                                filledColor: Colors.white,
                                hintText: 'Description',
                                borderColor: Colors.transparent,
                              ),
                            ),
                            const Text(
                              "Vaccinated (up to date)",
                              style: TextStyle(fontWeight: FontWeight.bold),

                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                child: defaultButton(
                                  hoverColor: Color(0xFFFFFFFF),
                                  buttonWidth: 400,
                                  buttonHeight: 40,
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.transparent,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: <Color>[kBlack, kBrown]),
                                  ),
                                  function: () {},
                                  text: 'Send',
                                  textStyle: TextStyle(color: kOffWhite, fontSize: 20),
                                  borderRadius: BorderRadius.circular(15),
                                  isUpperCase: false,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
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

