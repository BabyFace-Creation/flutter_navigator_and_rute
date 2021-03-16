import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rute_and_navigation/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail About " + tempItem.name),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Harga : " + tempItem.price.toString(),
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                        Container(
                          child: Text("Keterangan : " + tempItem.penjelasan),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Get Back"),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
