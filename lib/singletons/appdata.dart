class AppData {
  static final AppData _appData = new AppData._internal();
  factory AppData() {
    return _appData;
  }
  AppData._internal();

  // Cac bien can quan ly 1 cach global
  var status = List();
  double rowSpacingHeight = 5;
  final double globalLeftPadding = 10;
}

final appData = AppData();
