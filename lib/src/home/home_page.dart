import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yenlei_portfolio/src/common/utils/kolors.dart';
import 'package:yenlei_portfolio/src/common/utils/style.dart';
import 'package:yenlei_portfolio/src/common/widgets/header_mobile.dart';
import 'package:yenlei_portfolio/src/common/widgets/hover_card.dart';
import 'package:yenlei_portfolio/src/common/widgets/nav_bar.dart';
import 'package:yenlei_portfolio/src/common/widgets/site_logo.dart';

import '../common/constants/nav_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: AppColors.navyDark,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            ),
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                titleTextStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
                onTap: () {},
                leading: Icon(navIcons[i]),
                title: Text(navItems[i]),
              ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          NavBar(),

          // HeaderMobile(
          //   onLogoTap: (){},
          //   onMenuTap: (){
          //     scaffoldKey.currentState?.openEndDrawer();
          //   },)
          SizedBox(
            height: 700.h,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/yenlei.png",
                    width: 200.w,
                    height: 200.h,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Bonjour , je suis Thierry Georges KOUASSI KANGA",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 180.h,
                  width: 600.w,
                  child: Text(
                    "Developeur de logiciel en côte d'ivoire.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 60,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 70.h,
                  width: 600.w,
                  child: Text(
                    """Développeur Full Stack spécialisé dans les applications métier Web, Mobile et ERP. Solide expérience sur Python, Flutter, Odoo et PostgreSQL, avec une forte culture systèmes, réseaux et sécurité, garantissant des solutionsscalables, sécurisées et prêtes pour la production.Habitué aux environnements critiques, aux projets ERP complexes et à la collaboration avec les directions métiers.""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 450.w,
                  height: 100.h,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.purpleAccent,
                                Colors.orangeAccent,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Contactez-moi"),
                                SizedBox(width: 10.w),
                                Icon(Icons.arrow_forward_rounded),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.w),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.transparent, Colors.orangeAccent],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Mon CV "),
                              SizedBox(width: 10.h),
                              Icon(Icons.get_app_outlined),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          SizedBox(
            height: 600.h,
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  "Introduction",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "A propos",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/yenlei.png",
                        width: 250.w,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              bottom: 20,
                            ),
                            child: SizedBox(
                              height: 70.h,
                              width: 600.w,
                              child: Text(
                                "Je suis un ingenieur et integrateur logiciel avec plusieur annee d'experiance, je consoitdes logiciel sur .",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  height: 200.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: AppColors.grey),
                                    color: Colors.transparent,
                                  ),
                                  child: Column(children: []),
                                ),
                              ),
                              SizedBox(width: 10),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  height: 200.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: AppColors.grey),
                                    color: Colors.transparent,
                                  ),
                                  child: Column(children: []),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  height: 200.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: AppColors.grey),
                                    color: Colors.transparent,
                                  ),
                                  child: Column(children: []),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Les stacks utilisé test 23",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColors.grey),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                  "assets/images/django.png",
                                  width: 10.w,
                                  height: 10.h,
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColors.grey),
                                ),
                                child: Image.asset(
                                  "assets/images/docker.png",
                                  width: 7.w,
                                  height: 7.h,
                                ),
                              ),
                              SizedBox(width: 15.w),
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColors.grey),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                  "assets/images/git.png",
                                  width: 7.w,
                                  height: 7.h,
                                ),
                              ),
                              SizedBox(width: 15.w),
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColors.grey),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                  "assets/images/python.png",
                                  width: 7.w,
                                  height: 7.h,
                                ),
                              ),
                              SizedBox(width: 15.w),
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColors.grey),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                  "assets/images/postgresql.png",
                                  width: 7.w,
                                  height: 7.h,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          SizedBox(
            height: 600.h,
            child: Column(
              children: [
                Text(
                  "Ce que je fournie",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Mes services",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: SizedBox(
                    height: 70.h,
                    width: 600.w,
                    child: Text(
                      "I am a frontend developer from California, USA with 10 years of experience in multiple companies like Microsoft, Tesla and Apple.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HoverCard(),
                    SizedBox(width: 20.w),
                    HoverCard(),
                    SizedBox(width: 20.w),
                    HoverCard(),
                  ],
                ),
              ],
            ),
          ),

          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 30),
          //   height: 619,
          //   width: MediaQuery.of(context).size.width,
          //   child: Row(
          //     children: [
          //       Container(
          //         height: 587,
          //         width: 661,
          //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: AppColors.navyDark,),
          //       ),
          //       SizedBox(width: 15,),
          //       Padding(
          //         padding: const EdgeInsets.only(top: 25.0),
          //         child: Container(
          //           child: Stack(
          //             children: [
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //             Container(
          //             width: 800,
          //             height: 366,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(20),
          //               color: AppColors.grey,
          //             ),
          //           ),
          //                   Positioned(
          //                     bottom: 12,
          //                     child: Row(
          //                       children: [
          //                         Container(
          //                           height: 221,
          //                           width: 214,
          //                           decoration: BoxDecoration(
          //                               borderRadius: BorderRadius.circular(20),color: AppColors.blueSoft
          //                           ),
          //                         ),
          //                         SizedBox(width: 15,),
          //                         Container(
          //                           height: 221,
          //                           width: 214,
          //                           decoration: BoxDecoration(
          //                               borderRadius: BorderRadius.circular(20),color: AppColors.blueSoft
          //                           ),
          //                         ),
          //                         Container(
          //                           margin: EdgeInsets.only(left: 30,right: 30),
          //                           height: 221,
          //                           width: 214,
          //                           decoration: BoxDecoration(
          //                             borderRadius: BorderRadius.circular(20),color: AppColors.blueSoft,
          //
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //
          //     ],
          //   ),
          // ),
          // SizedBox(height: 25,),
          // Container(
          //   margin: EdgeInsets.only(left: 30,right: 30),
          //   height: 159,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(30),
          //     color: Colors.grey.shade200
          //   ),
          //   child: Row(
          //     children: [
          //       Text("data"),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 25,),
        ],
      ),
    );
  }
}
