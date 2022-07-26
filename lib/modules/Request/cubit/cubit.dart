import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_orange/layout/cubit/states.dart';
import 'package:pet_orange/modules/Request/cubit/states.dart';


class RequestCubit extends Cubit<RequestStates> {
  RequestCubit() : super(RequestInitialStates());

  static RequestCubit get(context) => BlocProvider.of(context);





}