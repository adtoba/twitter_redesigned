import 'package:flutter/material.dart';
import 'package:twitter_redesigned/styles/colors.dart';

class XTextField extends StatelessWidget {
  final String hint;
  final Widget prefixIcon;
  final Widget suffixIcon;

  const XTextField({Key key, this.hint, this.prefixIcon, this.suffixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 70.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: XColors.textField,
        borderRadius: BorderRadius.circular(45.0),
      ),
      child: Row(
        children: [
          prefixIcon,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(color: XColors.hint),
                  fillColor: XColors.textField,
                  filled: true,
                  border: InputBorder.none),
            ),
          ),
          suffixIcon
        ],
      ),
    );
  }
}
