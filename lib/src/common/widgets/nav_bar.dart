import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yenlei_portfolio/src/common/constants/nav_items.dart';
import 'package:yenlei_portfolio/src/common/utils/kolors.dart';
import 'package:yenlei_portfolio/src/common/utils/style.dart';
import 'package:yenlei_portfolio/src/common/widgets/site_logo.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      decoration: kHeaderDecoration,
      width: MediaQuery.of(context).size.width,
      height: 70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10),
            child: SiteLogo(
              onTap: (){
              },
            )
          ),
          Container(
            height: 70.h,
            width: 400.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),

            ),
            child: Row(
              children: [
                for (int i =0 ; i<navItems.length ; i++)
                  TextButton(onPressed: (){
                  }, child: Text(navItems[i], style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.white),)),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 50.h,
              width: 150.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.grey),
              child: Center(child: Text("Contactez-Nous",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.navyDark))),),
          )
        ],
      ),
    );
  }
}
