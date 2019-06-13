import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(testState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('我是标题')),
    body: Center(child: Text(state.content),),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        //点击按钮发送意图
        var str = '我是梁先生';
        print('我是点击了');
        dispatch(testActionCreator.onAction(str));
      },
      child: Icon(Icons.edit),
    )
  );
}
