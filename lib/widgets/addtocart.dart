import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30days/models/cart_model.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:flutter_30days/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class addToCart extends StatefulWidget {
  final Item catalog;
  const addToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  @override
  _addToCartState createState() => _addToCartState();
}

// ignore: camel_case_types
class _addToCartState extends State<addToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        

        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            MyTheme.darkBlueish,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_fill_badge_plus),
    );
  }
}