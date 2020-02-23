import 'package:dektor/redux/actions.dart';
import 'package:dektor/redux/state.dart';
import 'package:dektor/thread-model.dart';
import 'package:redux/redux.dart';

class ThreadViewModel {
  ThreadViewModel({
    this.isDataLoading,
//    this.isNextPageAvailable,
    this.threadModel,
    this.store,
    this.noError,
  });

  final bool isDataLoading;
//  final bool isNextPageAvailable;
  final ThreadModel threadModel;
  final Store<AppState> store;
  final bool noError;

//  void onLoadNextPage() {
//    if (!isDataLoading) { //  && isNextPageAvailable
//      store.dispatch(LoadItemsPageAction(
//        pageNumber: (threadModel.length ~/ AppState.itemsPerPage) + 1,
//        itemsPerPage: AppState.itemsPerPage,
//      ));
//    }
//  }

  void onRefresh(int threadNumber) {
    store.dispatch(
      FetchThreadAction(threadNumber),
    );
  }

  static ThreadViewModel fromStore(Store<AppState> store) {
    return ThreadViewModel(
      isDataLoading: store.state.isFetching,
//      isNextPageAvailable: store.state.isNextPageAvailable,
      threadModel: store.state.threadModel,
      store: store,
      noError: store.state.exception == null,
    );
  }
}