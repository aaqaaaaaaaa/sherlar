import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/app_theme.dart';
import 'package:sherlar/core/app_colors/colors.dart';
import 'package:sherlar/core/model/content_model.dart';
import 'package:sherlar/pages/categories/presentation/widgets/category_item.dart';
import 'package:sherlar/routes/routes.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage(
      {Key? key, required this.contentList, required this.isHikoya})
      : super(key: key);
  final List<ContentModel> contentList;
  final bool isHikoya;

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<ContentModel> resList = [];

  List<ContentModel> searchFunc(String text) {
    setState(() {});
    resList = widget.contentList.where((element) {
      if (text.isNotEmpty) {
        final titleLower = element.title.toLowerCase();
        final searchLower = text.toLowerCase();
        return titleLower.contains(searchLower);
      } else {
        return false;
      }
    }).toList();
    return text.isEmpty ? resList = widget.contentList : resList;
  }

  @override
  void initState() {
    super.initState();
    resList = widget.contentList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onChanged: (value) => searchFunc(value),
                    cursorColor: AppColors.primaryColor,
                    style: AppTextStyle.body26w6,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search, size: 30),
                      hintText: widget.isHikoya ? 'Хикоя номи' : 'Шер номи',
                      hintStyle: AppTextStyle.body26w6.copyWith(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.separated(
                    itemCount: resList.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 12.h),
                    itemBuilder: (context, index) => CategoryItemWidget(
                      isHikoya: false,
                      title: resList[index].title.toUpperCase(),
                      onTap: () {
                        return Navigator.pushNamed(context, Routes.storyPage,
                            arguments: {
                              'content': resList[index],
                              'isHikoya': widget.isHikoya,
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
