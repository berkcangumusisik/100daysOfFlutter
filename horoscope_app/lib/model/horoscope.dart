class Horoscope {
  final String name;
  final String date;
  final String detail;
  final String smallImage;
  final String bigImage;

  Horoscope(this.name, this.date, this.detail, this.smallImage, this.bigImage);

  @override
  String toString() {
    return 'Horoscope{name: $name, date: $date, detail: $detail, smallImage: $smallImage, bigImage: $bigImage}';
  }
}
