
import 'package:dektor/thread-model.dart';

class AppState {
  ThreadModel threadModel;
  bool isFetching;
  Exception exception;
//  Add in all the things you have in your other ngxs thing.
  AppState({this.isFetching = false, this.threadModel, this.exception});
}