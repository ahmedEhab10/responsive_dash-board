import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/Models/AllexpensesitemModel.dart';

class Allexpensesitem extends StatelessWidget {
  Allexpensesitem(
      {super.key,
      required this.allexpensesitemmodel,
      required this.isSelected});
  bool isSelected;
  Allexpensesitemmodel allexpensesitemmodel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExoensesitem(
            allexpensesitemmodel: allexpensesitemmodel,
          )
        : inActiveAllExoensesitem(allexpensesitemmodel: allexpensesitemmodel);
  }
}

class inActiveAllExoensesitem extends StatelessWidget {
  const inActiveAllExoensesitem({
    super.key,
    required this.allexpensesitemmodel,
  });

  final Allexpensesitemmodel allexpensesitemmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
            color: Color(0xFFFAFAFA),
            iconcolor: Color(0xFF4EB7F2),
          ),
          const SizedBox(
            height: 24,
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
            height: 12,
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
            height: 6,
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

class ActiveAllExoensesitem extends StatelessWidget {
  const ActiveAllExoensesitem({
    super.key,
    required this.allexpensesitemmodel,
  });

  final Allexpensesitemmodel allexpensesitemmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: ShapeDecoration(
        color: Color(0xFFF4EB7F2),
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
            color: Color(0xFFFFFFF),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            allexpensesitemmodel.tital,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allexpensesitemmodel.Date,
            style: const TextStyle(
              color: Color(0xFFFAFAFA),
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
              color: Colors.white,
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
  Color? color, iconcolor;
  AllexpensesitemHeader(
      {super.key, required this.image, this.color, this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: color,
          ),
          child: SvgPicture.asset(
            image,
            colorFilter:
                ColorFilter.mode(iconcolor ?? Colors.white, BlendMode.srcIn),
          ),
        ),
        Transform.rotate(
          angle: -1.5707 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: iconcolor != null ? Colors.black : Colors.white,
          ),
        )
      ],
    );
  }
}
