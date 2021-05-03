import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final double width, height;
  final double fontSize;
  final Color color;
  final Color fontColor;
  final VoidCallback onPressed;



  CustomButton({
    @required this.content,
    @required this.height,
    @required this.width,
    @required this.onPressed,
    this.fontSize,
    this.color,
    this.fontColor,

  });



  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(
      onPressed: onPressed,
      child: SizedBox(
        width: this.width,
        height: this.height,
        child: Center(
          child: Text(
            this.content,
            textAlign: TextAlign.center,
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                )
              ],
              fontSize: fontSize ?? 31,
              color: fontColor ?? Colors.white,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return color ?? Color.fromRGBO(74, 84, 143, 1);
          },
        ),
      ),
    ));
  }
}
