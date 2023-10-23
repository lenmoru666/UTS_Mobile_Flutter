import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Item'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'item_${itemArgs.name}',
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset(itemArgs.image),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Item Name: ${itemArgs.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Price: Rp.${itemArgs.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Stock: ${itemArgs.stock}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rating: ',
                  style: TextStyle(fontSize: 16),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  itemArgs.rating.toStringAsFixed(1),
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text('Nama: Falendika Tegar Pratama | NIM: 2141720107'),
      ),
    );
  }
}
