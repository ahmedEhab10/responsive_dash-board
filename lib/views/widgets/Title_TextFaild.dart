import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_TextFaild.dart';

class TitleTextfaild extends StatelessWidget {
  const TitleTextfaild({super.key, required this.titl, required this.hint});
  final String titl, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titl,
          style: const TextStyle(
            color: Color(0xFF064061),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextfaild(
          hint: hint,
        )
      ],
    );
  }
}
