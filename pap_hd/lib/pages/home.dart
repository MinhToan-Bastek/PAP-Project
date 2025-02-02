
// import 'package:flutter/material.dart';
// import 'package:pap_hd/components/homeScreen/body.dart';
// import 'package:pap_hd/components/homeScreen/header_home.dart';
// import 'package:pap_hd/components/homeScreen/title_body.dart';
// import 'package:pap_hd/components/homeScreen/weather_home.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/homeScreen/home_background.png'),
//               fit: BoxFit.cover, 
//             ),
//           ),
//           child: Column(
//             children: [
//                SizedBox(height: 15),
//               Header(),
//               // Các phần khác của màn hình
//               WeatherWidget(),
//                SizedBox(height: 15),
//               TitleBody(),
//               //ProjectsGrid(),
      
             
//             ],
//           ),
//         ),
//       ),
//       // Add a BottomNavigationBar if needed
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:pap_hd/components/homeScreen/body.dart';
import 'package:pap_hd/components/homeScreen/header_home.dart';
import 'package:pap_hd/components/homeScreen/title_body.dart';
import 'package:pap_hd/components/homeScreen/weather_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _seeAll = false;
  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize.height, // Đặt chiều cao bằng với chiều cao màn hình
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/homeScreen/home_background.png'),
              fit: BoxFit.cover, 
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 15),
              Header(),
              // Các phần khác của màn hình
              WeatherWidget(),
              SizedBox(height: 15),
              TitleBody(
                seeAllPressed: () {
                  setState(() {
                    _seeAll = !_seeAll;
                  });
                },
                isSeeAll: _seeAll,
              ),
               Flexible( // Cho phép GridView mở rộng đầy đủ không gian có thể
              child: ProjectsGrid(seeAll: _seeAll),
            ),
              //ProjectsGrid(seeAll: _seeAll),
              
            ],
          ),
        ),
      ),
      // Add a BottomNavigationBar if needed
    );
  }
}
