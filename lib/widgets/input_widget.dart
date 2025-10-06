import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;

  InputWidget({
    this.suffixIcon,
    this.hintText = "",
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: ScreenUtil().setHeight(59.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.circular(32.0),
      ),
      padding: EdgeInsets.only(
        right: 24.0,
        left: 24.0,
      ),
      child: TextFormField(
        obscureText: this.obscureText,
        decoration: InputDecoration(
          suffixIcon: this.suffixIcon,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          hintText: this.hintText,
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(124, 124, 124, 1),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
