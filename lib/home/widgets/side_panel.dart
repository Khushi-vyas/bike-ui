import 'package:flutter/material.dart';

import '../../colors.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.23,
      decoration: const BoxDecoration(
        color: AppColors.lightBackgroundColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(32), bottomRight: Radius.circular(32)),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          VerticalText(title: "Best Sale", selected: false),
          VerticalText(title: "Popular", selected: true),
          VerticalText(title: "New Arrival", selected: false),
          SizedBox(height: 120),
        ],
      ),
    );
  }
}

class VerticalText extends StatefulWidget {
  final String title;
  final bool selected;
  const VerticalText({Key? key, required this.title, required this.selected})
      : super(key: key);

  @override
  State<VerticalText> createState() => _VerticalTextState();
}

class _VerticalTextState extends State<VerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          widget.title,
          style: TextStyle(
            color: widget.selected
                ? AppColors.textColor
                : AppColors.textColor.withOpacity(0.7),
            fontSize: 16,
            decoration: widget.selected ? TextDecoration.underline : null,
            fontWeight: widget.selected ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
