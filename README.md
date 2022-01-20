# cart_counter

A Flutter Package which Helps you can Implement Cart Counter in your flutter project. Its really Simple and Easy to use. This Package will provide me a default design and if you want to change according to you then you can also do this. In This Package you can enable TextField for custom Enter value. simple in CartCounter widget you need to pass isEnable paramter true like: isEnable:true then you'll able to Enter custom value.

## Screenshots

<img src="cart_counter.jpg" height="300em" />

## Usage
[Example](hhttps://github.com/chandan123-pradhan/Global-Loader/tree/main/example/global_loader)

To use this package:

* add the dependency to your [pubspec.yaml](https://github.com/chandan123-pradhan/Global-Loader/blob/main/example/global_loader/pubspec.yaml) file.

```yaml
    dependencies:
      flutter:
        sdk: flutter
      global_loader: ^0.0.1
```

### How to use

```dart
  
import 'package:cart_counter/Widgets/CartCounter.dart';
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
           
            Container(
              width: 150,
              child: CartCounter(
                
               
                maximumValue: 10,
                minimumValue: 3,
                value: 3,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
               
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


```

## Getting Started


This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.