
import 'package:flutter/material.dart';
import 'package:ms_widgets/ms_widgets.dart';
class test extends StatelessWidget {
var selectedItem;
  List<String>items = ['Item 1','Item 2','Item 3'];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          height: 1200,
          width: double.maxFinite,
          color: Colors.grey[400],
          child: Stack(
            children: [
              Positioned(
                right: 10,
                top: 4,
                child: Image.asset(
                  'assets/images/small.png',
                ),
              ),
              Positioned(
                left: 10,
                top: 400,
                child: Image.asset(
                  'assets/images/small.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
