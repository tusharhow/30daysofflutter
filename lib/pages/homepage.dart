import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:flutter_30days/widgets/drawer.dart';
import 'package:flutter_30days/widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
  }

  @override
  Widget build(BuildContext context) {
    // final int days = 30;
    // final String name = 'codepur';
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
