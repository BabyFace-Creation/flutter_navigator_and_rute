import 'package:flutter/material.dart';
import 'package:rute_and_navigation/models/item.dart';
import 'package:rute_and_navigation/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, penjelasan: 'Penjelasan Mengenai Gula'),
    Item(name: 'Salt', price: 2000, penjelasan: 'Penjelasan Mengenai Garam')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rute and Navigate"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Card(
                  child: Container(
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return new AlertDialog(
                            title: new Text("Detail " + item.name),
                            actions: <Widget>[
                              new FlatButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("Back"),
                              ),
                              new FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/item',
                                      arguments: item);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             ItemPage(tempItem: item)));
                                },
                                child: new Text("Detail"),
                              ),
                            ],
                          );
                        });
                  },
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                          child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      )),
                    ],
                  ),
                ),
              ));
            }),
      ),
    );
  }
}
