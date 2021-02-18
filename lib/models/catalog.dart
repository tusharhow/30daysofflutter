class Item {
  final int id;
  final String name;
  final String desc;
  final String image;
  final num price;
  final String color;

  Item({this.id, this.name, this.desc, this.image, this.price, this.color});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      price: map["price"],
      desc: map["desc"],
      image: map["image"],
      color: map["color"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "image": image,
        "color": color,
      };
}

class CatalogModel {
  static List <Item> items;
}
