import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/app_theme.dart';
import 'package:sherlar/core/app_colors/colors.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, this.onTap, this.alignment = Alignment.centerLeft, required this.title, this.textAlign = null});
  final Function()? onTap;
  final Alignment alignment;
  final TextAlign? textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: alignment,
          margin: EdgeInsets.all(6.h),
          padding: EdgeInsets.all(12.h),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(color: AppColors.primaryColor, width: 1.h)),
          child: Text(
            title,
            maxLines: 2,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.body26w6,
          ),
        ),
      ),
    );
  }
}
