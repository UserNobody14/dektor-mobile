
import 'package:dektor/redux/actions.dart';
import 'package:dektor/redux/state.dart';

AppState appReducer(appState, action) {
  if(action is FetchThreadAction) {
    return new AppState(
      isFetching: true,
      threadModel: appState.threadModel,
      exception: null
    );
//
  } else if (action is FetchThreadSucceeded) {
    return new AppState(
      isFetching: false,
      threadModel: action.threadModel,
      exception: null
    );
  } else if (action is FetchThreadFailed) {
    return new AppState(
      isFetching: false,
      threadModel: null,
      exception: action.exception
    );
  }
  return appState;
}