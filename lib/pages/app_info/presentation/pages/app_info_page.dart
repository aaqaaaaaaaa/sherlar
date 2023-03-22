import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/app_theme.dart';
import 'package:sherlar/core/app_colors/colors.dart';

class AppInfoPage extends StatefulWidget {
  const AppInfoPage({Key? key}) : super(key: key);

  @override
  State<AppInfoPage> createState() => _AppInfoPageState();
}

class _AppInfoPageState extends State<AppInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AppImages.bg))),
        child: SafeArea(
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.all(8.h),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.whiteColor,
                  border:
                      Border.all(color: AppColors.primaryColor, width: 1.w)),
              // padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
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
                          height: 420.h,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            color: AppColors.primaryColor, width: 1.h)),
                    margin: EdgeInsets.only(top: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Ғофур Ғулом',
                          style: AppTextStyle.body26w6,
                        ),
                        SizedBox(height: 6.h),
                        Text('10.05.1903 - 10.07.1996',
                            style: AppTextStyle.body20w6),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.h),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            color: AppColors.primaryColor, width: 1.h)),
                    margin: EdgeInsets.only(top: 20.h),
                    child: Text(
                      'Ушбу дастур элимиз суйган ва ардоқлаган шоир, ёзувчи Ғафур Ғулом хотирасига бағишланади.',
                      style: AppTextStyle.body20w6,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.h),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            color: AppColors.primaryColor, width: 1.h)),
                    margin: EdgeInsets.only(top: 20.h),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Application was created by\n',
                            style: AppTextStyle.body20w6,
                          ),
                          TextSpan(
                            text: '</International Software>',
                            style: AppTextStyle.body26w6.copyWith(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
