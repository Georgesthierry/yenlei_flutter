import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yenlei_portfolio/src/common/utils/style.dart';
import 'package:yenlei_portfolio/src/common/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap,});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: kHeaderDecoration,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          SiteLogo(onTap:onLogoTap,),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
