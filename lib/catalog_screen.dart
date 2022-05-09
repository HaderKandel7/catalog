import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'data.dart';
List <Data> list = List.generate(1, (index) => Data(title: 'c', color: Colors.redAccent, isSelected: false,price: 0));
var l = <Data>[
  Data(title: 'Code Smell', color: Colors.redAccent, isSelected: false,price: 20),
  Data(title: 'Control Flow', color: Colors.pink, isSelected: false,price: 50),
  Data(title: 'Interpreter', color: Colors.purple, isSelected: false,price: 30),
  Data(title: 'Recursion', color: Colors.purpleAccent, isSelected: false,price: 70),
  Data(title: 'Sprint', color: Colors.deepPurpleAccent, isSelected: false,price: 35),
  Data(title: 'Heisenbug', color: Colors.blueAccent, isSelected: false,price: 40),
  Data(title: 'Spaghetti', color: Colors.lightBlueAccent, isSelected: false,price: 10),
  Data(title: 'Hydra Code', color: Colors.cyanAccent, isSelected: false,price: 20),
  Data(title: 'Off_By_one', color: Colors.teal, isSelected: false,price: 100),
  Data(title: 'Scope', color: Colors.green, isSelected: false,price: 60),
  Data(title: 'Callback', color: Colors.greenAccent, isSelected: false,price: 75),
  Data(title: 'Closure', color: Colors.lime, isSelected: false,price: 20),
  Data(title: 'Automate', color: Colors.yellowAccent, isSelected: false,price: 25),
  Data(title: 'Bit Shift', color: Colors.yellow, isSelected: false,price: 45),
  Data(title: 'Currying', color: Colors.orangeAccent, isSelected: false,price: 200),
  Data(title: 'Code Smell', color: Colors.deepOrangeAccent, isSelected: false,price: 80),
];

class Catalog extends StatefulWidget {
  //const Catalog({Key? key}) : super(key: key);

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Center(
          child: Text(
            'Catalog',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>Cart(list)));
              })
        ],
      ),
      body: ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                color: l[index].color,
                height: 45,
                width: 45,
              ),
              title: Text(
                '${l[index].title}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: l[index].isSelected? Container(
                child: TextButton(
                  child: Icon(
                    Icons.check,
                    color: Colors.black54,
                    size: 30,
                  ),
                  onPressed: () {
                    setState(() {
                      l[index].isSelected=false;
                      list.remove(l[index]);
                    });
                  },
                ),):Container(
                  child: TextButton(
                    child: Text(
                      'ADD',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {setState(() {
                      l[index].isSelected=true;
                      list.add(l[index]);
                    });},
                  ),
                ),

            ),
          );
        }
      ),
    );
  }
}
