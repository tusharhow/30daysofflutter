class Item {
  final String id;
  final String name;
  final String desc;
  final String image;
  final num price;
  final String color;

  Item({this.id, this.name, this.desc, this.image, this.price, this.color});
}

final products = [
  Item(
    id: "1",
    color: "#33505a",
    desc: "Appple iPhone 12 Generation",
    image: "",
    name: "iPhone 12 Pro",
    price: 999,
  )
];
