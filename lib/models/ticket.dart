class Ticket {
  String _name;
  String _grade;
  String _price;
  String _detail;

  Ticket(this._name, this._grade, this._price, this._detail);

  String get detail => _detail;

  set detail(String value) {
    _detail = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }

  String get grade => _grade;

  set grade(String value) {
    _grade = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}