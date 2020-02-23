import 'package:dektor/post.dart';
import 'package:dektor/redux/actions.dart';
import 'package:dektor/redux/state.dart';
import 'package:dektor/redux/view-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

// args passed to thread
class ThreadArguments {
//  The board
  final String board;
//  The thread number
  final int number;

  ThreadArguments(this.board, this.number);
}

class ThreadUI extends StatelessWidget {
  static const routeName = '/thread';

//  @override
//  ThreadState createState() => ThreadState();

  Widget build(BuildContext context) {
    final ThreadArguments args = ModalRoute.of(context).settings.arguments;
    return StoreConnector<AppState, ThreadViewModel>(
      builder: (context, vm) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Thread: ${args.number}'),
          ),
          body: Column(
            children: [...(vm?.threadModel?.posts?.map((f) => PostUI(f)))],
          ),
        );
      },
      converter: ThreadViewModel.fromStore,
      onInit: (store) {
        store.dispatch(new FetchThreadAction(args.number));
      },
    );
  }
}
//class ThreadState extends State<ThreadUI> {
//  ThreadModel threadModel;
//  Future<http.Response> fetchThread(int num) {
//    return http.get(Uri.https('demo0654825.mockable.io','/thread/1'));
//  }
//  @override
//
//}
