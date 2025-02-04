import 'package:flutter/material.dart';

class incomeHeader extends StatelessWidget {
  const incomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Income',
          style: TextStyle(
            color: Color(0xFF064061),
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        Card(
          elevation: 0,
          color: const Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                const Text(
                  'Monthly',
                  style: TextStyle(
                      color: Color(0XFF064061),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 16,
                ),
                Transform.rotate(
                  angle: -1.5707,
                  child: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Color(0XFF064061)),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
