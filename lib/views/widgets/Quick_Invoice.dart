import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Custom_packground_container.dart';
import 'package:responsive_dash_board/views/widgets/LatestTransaction.dart';
import 'package:responsive_dash_board/views/widgets/QuickInvoiceHeader.dart';
import 'package:responsive_dash_board/views/widgets/QuickInvoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Custom_Container(
        padding: 1,
        childwidget: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            LatestTransaction(),
            Divider(
              height: 20,
            ),
            QuickinvoiceForm()
          ],
        ));
  }
}
