import 'package:developfootball/model/quocgia.dart';
import 'package:developfootball/temp/temp.dart';
import 'package:dio/dio.dart';

class QuocGiaRepository {
  Future<List<QuocGia>> getQuocGia() async {
    var dio = Dio();
    var response = await dio.get(
      'https://api-football-v1.p.rapidapi.com/v3/countries',
      options: Options(
        headers: Temps.header,
      ),
    );
    if (response.statusCode == 200) {
      List<dynamic> resuilt = response.data['response'];
      return resuilt.map((e) => QuocGia.fromJson(e)).toList();
    } else {
      throw Exception('Call API Quoc Gia loi');
    }
  }
}
