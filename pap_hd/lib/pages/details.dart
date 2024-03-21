import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pap_hd/components/bottomNavBar/bottomNavBar.dart';
import 'package:pap_hd/components/detailScreen/medicine_detail.dart';
import 'package:pap_hd/components/detailScreen/options_detail.dart';
import 'package:pap_hd/components/header_all.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/homeScreen/home_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                HeaderAll(),
                //SizedBox(height: 8.0), // Khoảng cách giữa HeaderAll và văn bản
                Text(
                  'Chương trình Jakavi',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                MedicineInfo(),
                SizedBox(height: 30),
                OptionsGrid(),
              ],
            ),
          ),
           Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomNavBar(),
          ),
        ],
      ),
    );
  }
}
