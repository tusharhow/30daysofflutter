class Item {
  final int id;
  final String name;
  final String desc;
  final String image;
  final num price;
  final String color;

  Item({this.id, this.name, this.desc, this.image, this.price, this.color});
}

class CatalogModel {
  static final items = [
    Item(
      id: 1,
      color: "#33505a",
      desc: "Appple iPhone 12 Generation",
      image:
          "http://www.pngall.com/wp-content/uploads/5/Apple-iPhone-12-PNG-File.png",
      name: "iPhone 12 Pro",
      price: 999,
    )
  ];
}
