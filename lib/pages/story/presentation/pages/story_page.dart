import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/app_theme.dart';
import 'package:sherlar/core/app_colors/colors.dart';
import 'package:sherlar/core/data/content.dart';
import 'package:sherlar/core/model/content_model.dart';
import 'package:sherlar/pages/categories/presentation/widgets/category_item.dart';

import 'components.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key, required this.contentModel}) : super(key: key);
  final ContentHikoyaModel contentModel;

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  PageController pageController = PageController();

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CategoryItemWidget(
                    isHikoya: true,
                    alignment: Alignment.center,
                    textAlign: TextAlign.center,
                    title: widget.contentModel.title.toUpperCase(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (0.78),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20.h),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 150,
                      child: PageView.builder(
                        itemCount: widget.contentModel.content.length,
                        itemBuilder: (context, index) => Transform.scale(
                          scale: 1.09,
                          child: Image.asset(
                            widget.contentModel.content[index],
                          ),
                        ),
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

class SherlarPage extends StatefulWidget {
  const SherlarPage({Key? key, required this.contentModel}) : super(key: key);
  final ContentModel contentModel;

  @override
  State<SherlarPage> createState() => _SherlarPageState();
}

class _SherlarPageState extends State<SherlarPage> {
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  CategoryItemWidget(
                    isHikoya: false,
                    alignment: Alignment.center,
                    textAlign: TextAlign.center,
                    title: widget.contentModel.title.toUpperCase(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (0.78),
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
