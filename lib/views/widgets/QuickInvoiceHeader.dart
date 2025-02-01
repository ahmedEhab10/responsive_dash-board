import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Quick Invoice ',
          style: TextStyle(
            color: const Color(0xFF064061),
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(400),
              color: Color(0xFFFAFAFA)),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
