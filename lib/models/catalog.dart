class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 13 Pro",
        desc: "Apple iPhone 13th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://m.media-amazon.com/images/I/31S2VbijUML._SX342_SY445_.jpg")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
