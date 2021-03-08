import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30days/core/store.dart';
import 'package:flutter_30days/models/cart_model.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:flutter_30days/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.listen(context, to: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
          
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            MyTheme.darkBlueish,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart
          ? Icon(Icons.done)
          : Icon(CupertinoIcons.cart_fill_badge_plus),
    );
  }
}
