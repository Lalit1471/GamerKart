import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget
{
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
        backgroundColor: Colors.indigoAccent,
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemBuilder: (context, index){
              return ItemWidget(item: CatalogModel.items[index]);
            },
            itemCount: CatalogModel.items.length,
          ),
        ),
      drawer: const MyDrawer(),
    );
  }
}