import 'package:developfootball/screen/competition/ads_500x60_top.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrangChuController extends GetxController {
  List<String> listMenu = [
    'Trang chủ',
    'Bóng đá',
    'Bóng rổ',
    'Bóng chày',
    'Bóng đá Mỹ',
    'Liên hệ'
  ];
  ScrollController scrollController = ScrollController();

  String urlBongda =
      'https://freelive.7mvn2.com/live.aspx?mark=vn&tableFontSize=11';

  RxInt currentIndexMenu = 0.obs;

  // bool loading
  RxBool isShow = false.obs;
  @override
  void onInit() {
    super.onInit();
    
  }

  @override
  void onClose() {
    super.onClose();
  }

  void showDiaLogAdCenter(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            AdsBanner(wight: 650, height: 350),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 10,
                ),
                color: Colors.red,
                child: Text(
                  'Đóng',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
