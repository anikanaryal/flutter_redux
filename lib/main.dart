import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:fluttertest/redux/models/app_state.dart';
import 'package:fluttertest/store.dart';
import 'package:fluttertest/ui/counter.dart';

void main()async {
    Store<AppState> store = await createStore();
  runApp(MyApp(store));
 
}

class MyApp extends StatefulWidget {
  final Store<AppState> store;

  MyApp(this.store) : super();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: widget.store,
        child:  
     MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    ));
  }
}
