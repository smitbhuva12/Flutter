import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Showcase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Showcase'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 10.0),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            SizedBox(height: 10.0),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.red,
            ),
            SizedBox(height: 10.0),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.blue,
            ),
            SizedBox(height: 10.0),
            MaterialButton(
              onPressed: () {},
              child: Text('Material Button'),
              color: Colors.green,
            ),
            SizedBox(height: 10.0),
            DropdownButton<String>(
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
            SizedBox(height: 10.0),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ];
              },
            ),
            SizedBox(height: 10.0),
            ToggleButtons(
              children: <Widget>[
                Icon(Icons.star),
                Icon(Icons.favorite),
                Icon(Icons.favorite_border),
              ],
              isSelected: [false, true, false],
              onPressed: (int index) {},
            ),
            SizedBox(height: 10.0),
            ToggleButtons(
              children: <Widget>[
                Text('A'),
                Text('B'),
                Text('C'),
              ],
              isSelected: [false, true, false],
              onPressed: (int index) {},
            ),
            SizedBox(height: 10.0),
            CupertinoButton(
              onPressed: () {},
              child: Text('Cupertino Button'),
              color: Colors.blue,
            ),
            SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              label: Text('Buy Now'),
            ),
            SizedBox(height: 10.0),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit),
              label: Text('Edit'),
            ),
            SizedBox(height: 10.0),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.search),
              label: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
