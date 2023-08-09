import 'package:bike_ui/colors.dart';
import 'package:bike_ui/details/widgets/bottom.dart';
import 'package:bike_ui/details/widgets/detail_tile.dart';
import 'package:bike_ui/widgets/bike_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50, left: 24),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.textColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 50, left: 24),
                          child: Text(
                            "ART\nBIKES",
                            style: TextStyle(
                              color: AppColors.secondaryTextColor,
                              fontSize: 60,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      height: 300,
                      decoration: const BoxDecoration(
                        color: AppColors.lightBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomLeft: Radius.circular(32),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "THE ART BIKE",
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Text(
                    "Lorem ipsum dolor sit amet. Eos numquam inventore non officia consequuntur aut amet voluptate. Qui aspernatur modi qui eligendi consequatur ad totam aliquam sed voluptatem fuga.",
                    style: TextStyle(
                      color: AppColors.textColor.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DetailTile(title: "TOP SPEED", subtitle: "120 MPH"),
                    DetailTile(title: "TOP SPEED", subtitle: "120 MPH"),
                    DetailTile(title: "TOP SPEED", subtitle: "120 MPH"),
                  ],
                ),
                const BottomRow(),
              ],
            ),
            Positioned(
              right: -170,
              top: -70,
              child: BikeImage(
                child: SvgPicture.asset(
                  "assets/motorcycle.svg",
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
