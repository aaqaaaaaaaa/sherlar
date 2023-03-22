import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/app_text_style.dart';
import 'package:sherlar/core/app_colors/colors.dart';
import 'package:sherlar/core/model/content_model.dart';
import 'package:sherlar/pages/categories/presentation/widgets/category_item.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key, required this.contentModel}) : super(key: key);
  final ContentModel contentModel;

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
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
            physics: const NeverScrollableScrollPhysics(),
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
                  CategoryItemWidget(
                    alignment: Alignment.center,
                    title: widget.contentModel.title,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.76,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20.h),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: 50.h),
                      child: Text(
                        widget.contentModel.content,
                        style: AppTextStyle.body20w6.copyWith(),
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
