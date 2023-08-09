import 'dart:ui';

import 'package:flutter/material.dart';

class BikeImage extends StatelessWidget {
  final Widget child;
  const BikeImage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Bike",
      child: Stack(
        children: <Widget>[
          Transform.translate(
            offset: const Offset(10, 10),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY: 15, sigmaX: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                child: Opacity(
                  opacity: 0.5,
                  child: ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                    child: child,
                  ),
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
