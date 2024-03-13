class Cart {
  static List<String> _data = [];

  static List<String> getData() {
    return _data;
  }

  static setData(String data) {
    _data.add(data);
  }

  static String _name = '';

  static String getName() {
    return _name;
  }

  static setName(String data) {
    _name = data;
  }
}
