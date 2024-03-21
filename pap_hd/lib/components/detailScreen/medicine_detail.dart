import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MedicineInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/detailScreen/img_medicine.png'),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '116 patients',
                  style: TextStyle(
                    color: Color(0xFF02665A),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '112 đang tham gia, 4 đứng chương trình',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '01/02/2024 -> 31/12/2024',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 10),
                InfoLine(
                  svgAsset: 'assets/detailScreen/icon_instock.svg',
                  text: 'In Stock: 500 box',
                  iconColor: Colors.black,
                   textColor: Colors.black,
                ),
                InfoLine(
                  svgAsset: 'assets/detailScreen/icon_expected.svg',
                  text: 'Expected: 325 box, 12 blister',
                  iconColor: Color(0xFF709505),
                   textColor: Colors.black,
                ),
                InfoLine(
                  svgAsset: 'assets/detailScreen/icon_available.svg',
                  text: 'Available: 175 box, 28 blister',
                  iconColor: Color(0xFF025D3C),
                   textColor: Color(0xFF025D3C)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoLine extends StatelessWidget {
  final String svgAsset;
  final String text;
  final Color iconColor;
   final Color textColor;
   
  const InfoLine({
    Key? key,
    required this.svgAsset,
    required this.text,
    required this.iconColor,
     required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgAsset, color: iconColor, height: 20, width: 20),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(color: textColor), // Màu cho văn bản
        ),
      ],
    );
  }
}
