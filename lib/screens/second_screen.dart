import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:new_test/screens/first_screen.dart';
import '../providers/counter_provider.dart';
import '../providers/shopping_card_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Provider Example App (${context.watch<Counter>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCart>().count}'),
            Text('${context.watch<ShoppingCart>().cart}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('addItem_floatingActionButton'),
        onPressed: () => context.read<ShoppingCart>().addItem('Tshirt'),
        tooltip: 'Add Item',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
