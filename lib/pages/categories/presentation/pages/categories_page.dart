import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/app_text_style.dart';
import 'package:sherlar/core/app_colors/colors.dart';
import 'package:sherlar/core/data/content.dart';
import 'package:sherlar/pages/categories/presentation/widgets/category_item.dart';
import 'package:sherlar/routes/routes.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.bg),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 0),
            child: Column(
              children: [
                Container(
                  height: 80.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.primaryColor, width: 2.h),
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search, size: 30),
                      hintText: 'She\'r nomi',
                      hintStyle: AppTextStyle.body26w6.copyWith(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.separated(
                    itemCount: 1,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 12.h),
                    itemBuilder: (context, index) => CategoryItemWidget(
                      title: AppContent.contentList[index].title,
                      onTap: () {
                        return Navigator.pushNamed(context, Routes.storyPage,
                            arguments: {
                              'content': AppContent.contentList[index],
                            });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
