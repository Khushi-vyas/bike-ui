import 'package:bike_ui/colors.dart';
import 'package:bike_ui/details/details_page.dart';
import 'package:bike_ui/home/widgets/bike_card.dart';
import 'package:bike_ui/home/widgets/buttons_row.dart';
import 'package:bike_ui/home/widgets/side_panel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.drag_indicator),
          actions: const [
            Icon(Icons.favorite_outline),
            SizedBox(width: 16),
            Icon(Icons.more_vert),
            SizedBox(width: 16),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Row(
              children: [
                const SidePanel(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.77,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return const DetailsPage();
                            },
                            transitionDuration: const Duration(seconds: 1),

                            // reverseTransitionDuration: Duration(seconds: 1),
                          ),
                        ),
                        child: const BikeCard(),
                      ),
                      const ButtonsRow(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 120, left: 24),
              child: Text(
                "BIKES \nCOLLECTIONS",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
