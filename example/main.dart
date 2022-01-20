
import 'package:cart_counter/Widgets/cart_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cart Counter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 200),
            Text("Cart Counter",
                style: TextStyle(color: Colors.black, fontSize: 20)),
            SizedBox(height: 40),
            Container(
              width: 150,
              child: CartCounter(
                
                increaseBottonWidget: Icon(Icons.add,color:Colors.white,size:40),// if you want to add custom add botton then here you can pass your custom widget.
                decreaseBottonWidget:Icon(Icons.remove,color:Colors.white,size:40),// if you want to add custom Remove botton then here you can pass your custom widget.
               
               // If you want to decorate custom widget here you can pass your body decoration. its optional.
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                maximumValue: 10,
                minimumValue: 3,
                value: 3,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                isEnable: true,//if you want to Enter custom value then here you should be enable.
                onChanged: (val) {
                  //here in val variable you'll get updated counter value.
                  print(val);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
