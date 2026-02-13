import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yenlei_portfolio/src/common/utils/kolors.dart';

class HoverCard extends StatefulWidget {
  const HoverCard({super.key});

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  double x = 5;
  double y =5;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 300.h,
          width: 250.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.white12
            ),
            color: Colors.white10
          ),
        ),
        Positioned(
          right: x,
          top: y,
          child: MouseRegion(
            onHover: (event){
              setState(() {
                x=5;
                y=2.5;
              });
            },
            onExit: (event){
              setState(() {
                x=0;
                y=0;
              });
            },
            child: Container(
              height: 300.h,
              width: 250.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Colors.white12
                  ),
                color: Colors.white10
              ),
              child: Column(
                children: [
                  Text("data")],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
