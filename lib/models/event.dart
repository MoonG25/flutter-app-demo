class Event {
  int _id;
  String _title;
  String _date;
  String _image;

  Event(this._id, this._title, this._date, this._image);


  int get id => _id;

  set id(int value) {
    _id = value;
  }

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

  @override
  String toString() {
    return 'Event{_id: $_id, _title: $_title, _date: $_date, _image: $_image}';
  }
}