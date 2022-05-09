import 'package:flutter/material.dart';

import 'data.dart';

// ignore: must_be_immutable
class Cart extends StatelessWidget {
  List<Data> l;
  int total=0;
  Cart(this.l) {
    if(l.isEmpty){
      total=0;
      l.add( Data(title: 'no selected items', color: Colors.redAccent, isSelected: false,price: 0));
    }
    else if(l.first.price==0){
      l.removeAt(0);
    }
    for (var value in l) {
      total+=value.price;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Cart',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.yellow,
              alignment: Alignment.center,
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                    height: 50,
                    child: Text(
                      '${l[index].title}',
                    )),
                itemCount: l.length,
              ),
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(
            child: Text('$total \$',style: TextStyle(fontSize: 30,),),
          )),
        ],
      ),
    );
  }
}
