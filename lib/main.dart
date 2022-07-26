import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_orange/layout/cubit/cubit.dart';
import 'package:pet_orange/modules/Login/cubit/cubit.dart';
import 'package:pet_orange/modules/Login/login_screen.dart';
import 'package:pet_orange/modules/Request/cubit/cubit.dart';
import 'package:pet_orange/test.dart';

import 'layout/pages_layout.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:(context)=>PagesLayout(),
        ),
        BlocProvider(
          create:(context)=>RequestCubit(),
        ),
        BlocProvider(
          create:(context)=>LoginCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Jannah',
        ),
        home: HomePage(),
      ),
    );
  }
}



