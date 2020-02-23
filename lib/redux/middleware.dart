
import 'dart:convert';

import 'package:dektor/redux/actions.dart';
import 'package:dektor/redux/state.dart';
import 'package:redux/redux.dart';
import 'package:http/http.dart' as http;

import '../thread-model.dart';

void fetchThreadsMiddleWare(Store<AppState> store, action, NextDispatcher next) {
  if (action is FetchThreadAction) {
    var fetchThread = http.get(Uri.https('demo0654825.mockable.io','/thread/1'));
    fetchThread.then((a) {
      var preDecode = a.body;
      print(preDecode);
      var threadModel = ThreadModel.fromJson(jsonDecode(preDecode));
      store.dispatch(new FetchThreadSucceeded(threadModel));
    }).catchError((a) {
      var gg = a.toString();
      print('$gg');
      print('screwed up?');
      store.dispatch(new FetchThreadFailed(a));
    });
  }
  next(action);
}