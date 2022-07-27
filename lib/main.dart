import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_orange/layout/cubit/cubit.dart';
import 'package:pet_orange/modules/Help_screen/cubit/cubit.dart';
import 'package:pet_orange/modules/Login/cubit/cubit.dart';
import 'package:pet_orange/modules/Login/login_screen.dart';
import 'package:pet_orange/modules/Request/cubit/cubit.dart';
import 'package:pet_orange/shared/network/network.dart';
import 'package:pet_orange/test.dart';

import 'layout/pages_layout.dart';
import 'modules/Sing_Up/cubit/cubit.dart';

void main() async{
  DioHelper.init();
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
        BlocProvider(
          create:(context)=>HelpCubit(),
        ),
        BlocProvider(
          create:(context)=>SingUpCubit(),
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



