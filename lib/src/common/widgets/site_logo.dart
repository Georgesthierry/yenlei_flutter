import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23.r),
        child: Image.asset("assets/images/yenlei.png",width: 60.w,height: 60.h,),

      ),
    );
  }
}
