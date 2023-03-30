import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/app_theme.dart';
import 'package:sherlar/core/app_colors/colors.dart';
import 'package:sherlar/core/model/content_model.dart';
import 'package:sherlar/pages/categories/presentation/widgets/category_item.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CopyrightPage extends StatefulWidget {
  const CopyrightPage({Key? key}) : super(key: key);

  @override
  State<CopyrightPage> createState() => _CopyrightPageState();
}

class _CopyrightPageState extends State<CopyrightPage> {
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
                  const CategoryItemWidget(
                    isHikoya: true,
                    alignment: Alignment.center,
                    textAlign: TextAlign.center,
                    title: 'Муаллифлик ҳуқуқи',
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (0.78),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20.h),
                    child: SfPdfViewer.asset(
                      'assets/files/mualliflik huquqi.pdf',
                      scrollDirection: PdfScrollDirection.horizontal,
                      pageLayoutMode: PdfPageLayoutMode.single,
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
