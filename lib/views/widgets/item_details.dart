import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Models/item_details_model.dart';
import 'package:responsive_dash_board/Utils/App_Style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: itemDetailsModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(
    //           itemDetailsModel.title,
    //           style: AppStyles.styleRegular16,
    //         ),
    //         const SizedBox(
    //           width: 24,
    //         ),
    //         Text(
    //           itemDetailsModel.value,
    //           style: AppStyles.styleMedium16,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: TextStyle(
          color: const Color(0xFF064060),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: TextStyle(
          color: const Color(0xFF064061),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
