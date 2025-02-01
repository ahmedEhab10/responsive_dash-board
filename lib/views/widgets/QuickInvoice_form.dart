import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Title_TextFaild.dart';
import 'package:responsive_dash_board/views/widgets/custom_Button.dart';

class QuickinvoiceForm extends StatelessWidget {
  const QuickinvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextfaild(
                titl: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TitleTextfaild(
                titl: 'Customer Email',
                hint: 'Type customer Email',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          children: [
            Expanded(
              child: TitleTextfaild(
                titl: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            Expanded(
              child: TitleTextfaild(
                titl: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: CustomButton(
                backgroundcolor: Colors.transparent,
                textcolor: const Color(0xFF4DB7F2),
              ),
            ),
          ],
        )
      ],
    );
  }
}
