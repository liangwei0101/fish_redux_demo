import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<testState> buildReducer() {
  return asReducer(<Object, Reducer<testState>>{
      testAction.update: _onAction,
    },
  );
}

testState _onAction(testState state, Action action) {
  var str = action.payload['content'];
  final testState newState = state.clone()..content = str;
  return newState;
}
