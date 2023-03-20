import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sherlar/core/app_colors/app_text_style.dart';
import 'package:sherlar/core/app_colors/colors.dart';
import 'package:sherlar/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(AppImages.bg, fit: BoxFit.fill)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 3),
                Container(
                    padding: EdgeInsets.all(2.h),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        AppImages.shoir,
                        height: 350.h,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                  height: 75.h,
                  margin: EdgeInsets.only(top: 44.h),
                  child: ElevatedButton(
                    style: AppDecoration.buttonStyle,
                    onPressed: () =>
                        Navigator.pushNamed(context, Routes.categoriesPage),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu_book_outlined,
                            color: AppColors.primaryColor),
                        SizedBox(width: 10.w),
                        Text('She\'rlar', style: AppTextStyle.body26w6),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 75.h,
                  margin: EdgeInsets.only(top: 16.h),
                  child: ElevatedButton(
                    style: AppDecoration.buttonStyle,
                    onPressed: () =>
                        Navigator.pushNamed(context, Routes.categoriesPage),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu_book_outlined,
                            color: AppColors.primaryColor),
                        SizedBox(width: 10.w),
                        Text('Hikoyalar', style: AppTextStyle.body26w6),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 75.h,
                  margin: EdgeInsets.only(top: 16.h),
                  child: ElevatedButton(
                    style: AppDecoration.buttonStyle,
                    onPressed: () =>
                        Navigator.pushNamed(context, Routes.writerInfo),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.info_outline,
                            color: AppColors.primaryColor),
                        SizedBox(width: 10.w),
                        Text('Yozuvchi haqida', style: AppTextStyle.body26w6),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 56.h,
                      width: 56.w,
                      child: ElevatedButton(
                        style: AppDecoration.buttonStyle,
                        onPressed: () =>
                            Navigator.pushNamed(context, Routes.writerInfo),
                        child: Icon(Icons.info_outline,
                            color: AppColors.primaryColor),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    SizedBox(
                      height: 56.h,
                      width: 56.w,
                      child: ElevatedButton(
                        style: AppDecoration.buttonStyle,
                        onPressed: () async {
                          await Share.share(
                              'G\'ofur G\'ulom sherlari\n Play Store: https://play.google.com/store/apps');
                          // Navigator.pushNamed(context, Routes.writerInfo);
                        },
                        child: Icon(Icons.share, color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
