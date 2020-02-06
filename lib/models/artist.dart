import 'dart:typed_data';

class Artist {
  String _name; // 이름 (DJ명)
  String _href;
  String _image;

  Uint8List _bytesImage;  // 프사

  Artist(this._name, this._href, this._image);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get href => _href;

  set href(String value) {
    _href = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

//  Future getImage() {
//    var image2;  // image picker로 부터 이미지 받아와서 저장
//    List<int> imageBytes = image2.readAsBytesSync();  // image picker로 부터 받아온 이미지를 바이트로 변환
//    String base64Image = base64Encode(imageBytes);
//    _bytesImage = Base64Decoder().convert(base64Image);
//  }
}