import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color txtColor;
  final Color bgColor;
  final Color shadowColor;
  final Function onTap;

  const CustomButton(
      {Key key,
      @required this.text,
      this.txtColor,
      this.bgColor,
      this.shadowColor,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: Colors.grey.withOpacity(.4),
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor ?? Colors.black,
     ),
          child: Container(
            margin: EdgeInsets.all(14),
            alignment: Alignment.center,
            child: CustomText(
              text: text,
              color: txtColor ?? Colors.white,
              size: 22,
              weight: FontWeight.normal,
            ),
          )
        ),
      ),
    );
  }
}
