import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/Utils/App_Style.dart';

class Infolistile extends StatelessWidget {
  const Infolistile(
      {super.key,
      required this.image,
      required this.Title,
      required this.SubTitle});
  final String image;
  final String Title;
  final String SubTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          Title,
          style: TextStyle(
            color: const Color(0xFF064061),
            fontSize: getResponsiveFontSize(fontSize: 16),
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          SubTitle,
          style: TextStyle(
            color: const Color(0xFFAAAAAA),
            fontSize: getResponsiveFontSize(fontSize: 12),
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
