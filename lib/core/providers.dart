class Cart {
  static List<String> _data = [];

  static List<String> getData() {
    return _data;
  }

  static setData(String data) {
    _data.add(data);
  }
}
