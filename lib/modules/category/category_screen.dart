import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var xAxis =0.0;
    var yAxis = 0.0;
    return Listener(
      onPointerHover: (e){
          xAxis=e.position.dx;
          yAxis=e.position.dy;
      },
      child: Form(
        child: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height * 1,
          width:  double.maxFinite,
          child: Stack(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
                transform: Transform.translate(
                    offset: Offset(
                      (xAxis-20/2),
                      (yAxis-20/2),
                    ),
                ).transform,

              ),
            ],
          ),
        ),
      )
    );
  }
}
