import 'package:flutter/material.dart';
import 'package:flutter_demo1/models/shopkart.dart';

class Itemwidget extends StatelessWidget {
  final Items item;

  const Itemwidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.model),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(color: Color.fromARGB(255, 15, 135, 233)),
        ),
      ),
    );
  }
}
