import 'package:developfootball/util/color_resource.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompetitionPage extends StatelessWidget {
  const CompetitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.BACKGROUND,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              ExpansionTile(
                leading: CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(
                    'https://apiv3.apifootball.com/badges/logo_country/44_england.png',
                  ),
                ),
                title: Text(
                  'Ngoai Hangg Anh',
                  style: GoogleFonts.nunito(color: ColorResources.WHITE),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
