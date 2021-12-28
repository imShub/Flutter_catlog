import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catlog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TestList = List.generate(30, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          textScaleFactor: 1.4,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: TestList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: TestList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
