import 'package:fluttertest/redux/actions/all_actions.dart';
import 'package:fluttertest/redux/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
       counterValue:counterReducer(state.counterValue, action) );
}



int counterReducer(int count, dynamic action) {
  if (action is CounterSave) {
  
    return action.counterValue;
  }
  return count;
}
