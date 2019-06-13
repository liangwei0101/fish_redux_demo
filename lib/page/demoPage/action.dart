import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum testAction { update }

class testActionCreator {
  static Action onAction(String content) {
    print('触发更新Action');
    return Action(
        testAction.update,
        payload: <String, String>{
          'content':  content
        });
  }
}
