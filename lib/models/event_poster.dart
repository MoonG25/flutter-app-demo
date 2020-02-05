class EventPoster {
  String _title;
  String _date;
  String _image;

  EventPoster(this._title, this._date, this._image);

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }


}