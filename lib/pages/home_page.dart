import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'sugar.jpg',
      stock: 100,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'salt.jpg',
      stock: 50,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return buildItemCard(context, items[index]);
        },
      ),
      bottomNavigationBar: BottomAppBar(
          //mainAxisAlignment: MainAxisAlignment.center,
          child: Text('Nama: Falendika Tegar Pratama | NIM: 2141720107')),
    );
  }

  Widget buildItemCard(BuildContext context, Item item) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        child: Column(
          children: [
            Hero(
              tag: 'item_${item.name}',
              child: Image.asset(item.image),
            ),
            SizedBox(height: 20),
            Text(
              item.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Price: ${item.price}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
