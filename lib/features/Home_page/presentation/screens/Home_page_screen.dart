import 'package:flutter/material.dart';
import 'package:gcollector_mobile/core/theme/app_theme.dart' show AppTheme;
import 'package:gcollector_mobile/core/utils/size.dart';
import 'package:gcollector_mobile/features/Home_page/presentation/widgets/imapact.dart' show Imapact;
import 'package:gcollector_mobile/features/Home_page/presentation/widgets/todaysprice.dart'
    show Todaysprice;
import 'package:gcollector_mobile/features/Home_page/presentation/widgets/welcome_txt.dart'
    show HomeViewPersonalInfo;
import 'package:gcollector_mobile/features/Home_page/presentation/widgets/yourImpact.dart'
    show YourImpact;
import 'package:gcollector_mobile/shared/widgets/ContainerWithHeadingsubheadingsubtext.dart'
    show ContainerWithCircleIconHeaderSubheadingSubtext;
import 'package:gcollector_mobile/shared/widgets/reviewContainer.dart' show ReviewContainer;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Scaffold(
      backgroundColor: AppTheme.lightTheme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeViewPersonalInfo(
                  personName: "Ayush",
                  width: responsive.wp(1),
                  height: responsive.hp(.3),
                ),
                ContainerWithCircleIconHeaderSubheadingSubtext(
                  containerHeight: responsive.hp(.08),
                  containerWidth: responsive.wp(.9),
                  containerColor: Color(0xffeff6ff),
                  containerBorderRadius: 10,
                  containerBoxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  containerBorderColor: Color(0xffc8e0ff),
                  icon: IconData(0xee2d, fontFamily: 'MaterialIcons'),
                  iconColor: Color(0xff155dfc),
                  iconBackgroundColor: Color(0xffdbeafe),
                  headerText: "Best Day to Sell",
                  headerFontSize: 12,
                  subheadingText:
                      "Weekend prices are 8% higher for Steel & Iron",
                  subheadingFontSize: 10,
                ),
                ContainerWithCircleIconHeaderSubheadingSubtext(
                  containerHeight: responsive.hp(.08),
                  containerWidth: responsive.wp(.9),
                  containerColor: Color(0xfffff7ed),
                  containerBorderRadius: 10,
                  containerBoxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  containerBorderColor: Color(0xfffee685),
                  icon: IconData(0xe37b, fontFamily: 'MaterialIcons'),
                  iconColor: Color(0xfffbbf24),
                  headerText: "Best Day to Sell",
                  headerFontSize: 12,
                  subheadingText:
                      "Weekend prices are 8% higher for Steel & Iron",
                  subheadingFontSize: 10,
                  subtext: "View Details",
                  subtextFontSize: 10,
                  subtextColor: Color(0xffc64f00),
                ),
                Todaysprice(),
                ContainerWithCircleIconHeaderSubheadingSubtext(
                  containerHeight: responsive.hp(.08),
                  containerWidth: responsive.wp(.9),
                  containerColor: Colors.white,
                  containerBorderRadius: 10,
                  containerBoxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  containerBorderColor: Color(0xffecedee),
                  icon: Icons.iron_rounded,

                  headerText: "Steel",
                  headerFontSize: 12,
                  subheadingText: "\u20B9500 per kg",
                  subheadingColor: Colors.green,
                  subheadingFontSize: 10,
                ),
                ContainerWithCircleIconHeaderSubheadingSubtext(
                  containerHeight: responsive.hp(.08),
                  containerWidth: responsive.wp(.9),
                  containerColor: Colors.white,
                  containerBorderRadius: 10,
                  containerBoxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  containerBorderColor: Color(0xffecedee),
                  icon: Icons.iron_rounded,

                  headerText: "Iron",
                  headerFontSize: 12,
                  subheadingText: "\u20B9500 per kg",
                  subheadingColor: Colors.green,
                  subheadingFontSize: 10,
                ),
                ContainerWithCircleIconHeaderSubheadingSubtext(
                  containerHeight: responsive.hp(.08),
                  containerWidth: responsive.wp(.9),
                  containerColor: Colors.white,
                  containerBorderRadius: 10,
                  containerBoxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  containerBorderColor: Color(0xffecedee),
                  icon: Icons.iron_rounded,

                  headerText: "Plastic",
                  headerFontSize: 12,
                  subheadingText: "\u20B9500 per kg",
                  subheadingColor: Colors.green,
                  subheadingFontSize: 10,
                ),
                ContainerWithCircleIconHeaderSubheadingSubtext(
                  containerHeight: responsive.hp(.08),
                  containerWidth: responsive.wp(.9),
                  containerColor: Colors.white,
                  containerBorderRadius: 10,
                  containerBoxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  containerBorderColor: Color(0xffecedee),
                  icon: Icons.iron_rounded,

                  headerText: "E-waste",
                  headerFontSize: 12,
                  subheadingText: "\u20B9500 per kg",
                  subheadingColor: Colors.green,
                  subheadingFontSize: 10,
                ),
                YourImpact(),
                Imapact(
                  wasteRecycled: "15Kg",
                  co2Saved: "12Kg",
                  treeSaved: 3,
                  containerHeight: responsive.hp(.15),
                  containerWidth: responsive.wp(1),
                ),
                ReviewContainer(
                  containerHeight: responsive.hp(.15),
                  containerWidth: responsive.wp(1),
                  initialRating: 4.1,
                  numberOfReviews: 200,
                  reviewText: "4.5/5",
                  reviewSubtext: "Based on 200 reviews",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
