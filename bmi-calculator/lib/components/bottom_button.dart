import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
  });

  final String buttonTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColour,
        height: kBorderContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10),
        margin: EdgeInsets.only(top: 15),
        child: Center(child: Text(buttonTitle, style: kLargeButtonStyle)),
      ),
    );
  }
}
