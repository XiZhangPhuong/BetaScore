class QuocGia {
  String? name;
  String? code;
  String? flag;

  QuocGia({this.name, this.code, this.flag});

  QuocGia.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['flag'] = this.flag;
    return data;
  }
}
