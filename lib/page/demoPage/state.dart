import 'package:fish_redux/fish_redux.dart';

class testState implements Cloneable<testState> {

  testState({this.content});

  String content;

  @override
  testState clone() {
    return testState()
    ..content = content;
  }
}

testState initState(Map<String, dynamic> args) {
  println('state:initState');
  return testState(content: '我是初始化展示');
}
