
import 'package:meta/meta.dart';

@immutable
class AppState {
  
  final int counterValue;
  

  AppState({@required this.counterValue,});

  factory AppState.initial() {
    return new AppState(
        counterValue:0);
  }

  AppState copyWith(
      { bool isSpecialOrder,
      }) {
    return new AppState(
        counterValue: counterValue ?? this.counterValue,
        
        );
  }
}
