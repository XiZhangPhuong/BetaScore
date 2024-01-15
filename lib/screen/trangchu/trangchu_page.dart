import 'package:developfootball/screen/competition/ads_500x60_top.dart';
import 'package:developfootball/screen/trangchu/trangchu_controller.dart';
import 'package:developfootball/util/image_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrangChuPage extends StatefulWidget {
  const TrangChuPage({super.key});

  @override
  State<TrangChuPage> createState() => _TrangChuPageState();
}

class _TrangChuPageState extends State<TrangChuPage> {
  @override
  Widget build(BuildContext context) {
    final TrangChuController controller = Get.put(TrangChuController());
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: SingleChildScrollView(
              controller: controller.scrollController,
              child: Column(
                children: [
                  // header
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 120,
                    color: ImagePath.colorMain,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              'MY_LOGO',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            AdsBanner(
                              wight: 450,
                              height: 60,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            AdsBanner(
                              wight: 450,
                              height: 60,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: controller.listMenu
                              .map(
                                (e) => GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    alignment: Alignment.center,
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  // nhung scrip html
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      AdsBanner(
                        wight: 160,
                        height: 600,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      _ads450x60(),
                      SizedBox(
                        width: 5,
                      ),
                      AdsBanner(
                        wight: 160,
                        height: 600,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 0, child: _adsBottom()),
          // _adsCenter(),
        ],
      ),
    );
  }

  Column _ads450x60() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdsBanner(
              wight: 450,
              height: 60,
            ),
            SizedBox(
              width: 2,
            ),
            AdsBanner(
              wight: 450,
              height: 60,
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdsBanner(
              wight: 450,
              height: 60,
            ),
            SizedBox(
              width: 2,
            ),
            AdsBanner(
              wight: 450,
              height: 60,
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.network(
                  'https://i.imgur.com/Tp1f2QX.png',
                  width: Get.width / 2,
                ),
                Image.network(
                  'https://i.imgur.com/Tp1f2QX.png',
                  width: Get.width / 2,
                ),
                Image.network(
                  'https://i.imgur.com/Tp1f2QX.png',
                  width: Get.width / 2,
                ),
                Image.network(
                  'https://i.imgur.com/Tp1f2QX.png',
                  width: Get.width / 2,
                ),
                Image.network(
                  'https://i.imgur.com/Tp1f2QX.png',
                  width: Get.width / 2,
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                AdsBanner(wight: 280, height: 500),
                SizedBox(
                  height: 2,
                ),
                AdsBanner(wight: 280, height: 500),
                SizedBox(
                  height: 2,
                ),
                AdsBanner(wight: 280, height: 500),
                SizedBox(
                  height: 2,
                ),
                AdsBanner(wight: 280, height: 500),
                SizedBox(
                  height: 2,
                ),
                AdsBanner(wight: 280, height: 500),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

Widget _adsBottom() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: 170),
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
      Container(
        //  height: 130,
        margin: EdgeInsets.only(left: 170),
        child: Column(
          children: [
            Row(
              children: [
                AdsBanner(
                  wight: 450,
                  height: 60,
                ),
                SizedBox(
                  width: 2,
                ),
                AdsBanner(
                  wight: 450,
                  height: 60,
                ),
              ],
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              children: [
                AdsBanner(
                  wight: 450,
                  height: 60,
                ),
                SizedBox(
                  width: 2,
                ),
                AdsBanner(
                  wight: 450,
                  height: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _adsCenter() {
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
}
