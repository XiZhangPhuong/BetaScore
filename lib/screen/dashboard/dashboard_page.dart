import 'package:developfootball/screen/competition/competition_page.dart';
import 'package:developfootball/util/color_resource.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.BACKGROUND,
      bottomNavigationBar: _bottomBar(),
      body: IndexedStack(
        index: 0,
        children: [
          CompetitionPage(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}

///
/// bottom bar
///
Widget _bottomBar() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: ColorResources.WHITE, // Màu sắc của elevation tùy chỉnh
          blurRadius: 8, // Độ mờ của elevation
          // spreadRadius: 2, // Khoảng cách lan rộng của elevation
          offset: Offset(0, 2), // Vị trí offset của elevation
        ),
      ],
    ),
    child: BottomNavigationBar(
      selectedItemColor: ColorResources.MAIN,
      unselectedItemColor: Colors.white70,
      selectedLabelStyle: GoogleFonts.nunito(),
      unselectedLabelStyle: GoogleFonts.nunito(),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      backgroundColor: ColorResources.BACKGROUND,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_baseball_outlined),
            label: 'Giải đấu',
            tooltip: 'Giải đấu'),
        BottomNavigationBarItem(
            icon: Icon(Icons.web_outlined),
            label: 'Đang diễn ra',
            tooltip: 'Đang diễn ra'),
        BottomNavigationBarItem(
            icon: Icon(Icons.live_tv), label: 'Xem phim', tooltip: 'Xem phim'),
      ],
    ),
  );
}
