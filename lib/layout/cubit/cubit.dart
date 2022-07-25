import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_orange/layout/cubit/states.dart';
import 'package:pet_orange/modules/Services/services_screen.dart';

import '../../modules/Request/request_screen.dart';
import '../../modules/about_us/about_us_screen.dart';
import '../../modules/category/category_screen.dart';


class PagesLayout extends Cubit<PagesStates> {
  PagesLayout() : super(PagesInitialStates());

  static PagesLayout get(context) => BlocProvider.of(context);
  List<Widget> screens = [
    AboutUs(),
    CategoryScreen(),
    ServicesScreen(),
    RequestScreen(),
  ];
  int currentScreen=0;

  void changeCurrentScreen(int index){
    currentScreen = index;
    emit(PagesChangeState());
  }

  
}