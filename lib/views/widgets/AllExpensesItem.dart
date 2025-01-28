import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/Models/AllexpensesitemModel.dart';

class Allexpensesitem extends StatelessWidget {
  Allexpensesitem({super.key, required this.allexpensesitemmodel});
  Allexpensesitemmodel allexpensesitemmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpensesitemHeader(
            image: allexpensesitemmodel.image,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            allexpensesitemmodel.tital,
            style: const TextStyle(
              color: Color(0xFF064061),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allexpensesitemmodel.Date,
            style: const TextStyle(
              color: Color(0xFFAAAAAA),
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allexpensesitemmodel.price,
            style: const TextStyle(
              color: Color(0xFF4EB7F2),
              fontSize: 24,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class AllexpensesitemHeader extends StatelessWidget {
  String image;
  AllexpensesitemHeader({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(
              0xFFFAFAFA,
            ),
          ),
          child: SvgPicture.asset(
            image,
          ),
        ),
        Transform.rotate(
          angle: -1.5707 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064061),
          ),
        )
      ],
    );
  }
}
