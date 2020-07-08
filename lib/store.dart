import 'package:redux/redux.dart';
import 'package:fluttertest/redux/middleware/all_middlewares.dart';
import 'package:fluttertest/redux/models/app_state.dart';
import 'package:fluttertest/redux/reducers/app_reducers.dart';

Future<Store<AppState>> createStore() async{ 
    return new Store(
        appReducer,
         initialState: new AppState.initial(),
         distinct: true,
        middleware: createAppMiddleware(),
    );
}