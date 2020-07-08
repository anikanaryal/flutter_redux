
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:fluttertest/redux/actions/all_actions.dart';
import 'package:fluttertest/redux/models/app_state.dart';

class MyHomePage extends StatefulWidget {
 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

Store<AppState> store;
int counter =0;
  void _incrementCounter() {
 
      this.store.dispatch(CounterSave(counter++));
    
  }

  @override
  Widget build(BuildContext context) {
 return StoreConnector<AppState, _CounterVModel>(
        converter: (Store<AppState> store) {
      this.store = store;
      return _CounterVModel.create(store, context);
    }, onInit: (store) {
  
      
    },
     builder: (BuildContext context, _CounterVModel _counterVModel) {
    return Scaffold(
      appBar: AppBar(
         title: Text("counter redux"),
      ),
      body: Center(
         child: Column(
       
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_counterVModel.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );});
  }
}


class _CounterVModel {
  final int counter;
  

  _CounterVModel(this.counter);

  factory _CounterVModel.create(
      Store<AppState> store, BuildContext context) {

    return _CounterVModel(store.state.counterValue);
  }
}