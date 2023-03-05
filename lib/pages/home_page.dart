import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    // ignore: unused_local_variable
    final int day = 1;
  
    // ignore: unused_local_variable
    final String name = "Akshay";
    
 
    @override
    // ignore: unused_element
    Widget build(BuildContext context){
      final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
          appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text("Catalog App"),
          ), 
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index){
                return ItemWidget(
                  item: dummyList[index],
                  );
              },
            ),
          ),
        
        // ignore: prefer_const_constructors
        drawer: MyDrawer(),
      );
    }
  }
