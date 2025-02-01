import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.backgroundcolor, this.textcolor});
  Color? backgroundcolor, textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: backgroundcolor ?? const Color(0xFF4DB7F2)),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: TextStyle(
            color: textcolor ?? const Color(0xFFFFFFFF),
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
