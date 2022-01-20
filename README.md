# cart_counter

A Flutter Package which will start Global Loader from any where in your code.

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
   
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalLoader globalLoader = new GlobalLoader();
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  // This code helps fancy loader.
                  globalLoader.startFancyLoader(60,60);


                },
                child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))),
            InkWell(
                onTap: () {
                    // this line will stop your current loader.
                  globalLoader.stop();
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Stop",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )))
          ],
        ),
      ),
    );
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