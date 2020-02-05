import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui';

class dj {
  String _name; // 이름 (DJ명)
  Uint8List _bytesImage;  // 프사
  String _intro;  // 소개글
  String _sns;

  dj(this._name, this._bytesImage, this._intro, this._sns);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Uint8List get bytesImage => _bytesImage;

  set bytesImage(Uint8List value) {
    _bytesImage = value;
  }

  String get intro => _intro;

  set intro(String value) {
    _intro = value;
  }

  String get sns => _sns;

  set sns(String value) {
    _sns = value;
  }

  Future getImage() {
    var image2;  // image picker로 부터 이미지 받아와서 저장
    List<int> imageBytes = image2.readAsBytesSync();  // image picker로 부터 받아온 이미지를 바이트로 변환
    String base64Image = base64Encode(imageBytes);
    _bytesImage = Base64Decoder().convert(base64Image);
  }
}