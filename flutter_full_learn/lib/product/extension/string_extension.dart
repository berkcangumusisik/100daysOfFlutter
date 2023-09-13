extension ColorStringExtension on String?{
  int get colorValue {
    var _newColor = this?.replaceFirst("#", "0xFF") ?? "";
    return int.parse(_newColor);
  }
}