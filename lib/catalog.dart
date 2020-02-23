import 'package:dektor/post-model.dart';
import 'package:dektor/post.dart';
import 'package:dektor/thread-model.dart';
import 'package:dektor/thread.dart';
import 'package:flutter/material.dart';

import 'fake-post-data.dart';


// args passed to thread
class CatalogArguments {
//  The board
  final String board;

  CatalogArguments(this.board);
}
class CatalogThumbnailUI extends StatelessWidget {
  CatalogThumbnailUI(this.thread);
  final ThreadModel thread;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var op = thread.posts.first;
    var remainingPosts = thread.posts.getRange(1, thread.posts.length);
    var previewRemaining = remainingPosts.map((f) => Column(
      children: <Widget>[
        Divider(),
        Row(children: <Widget>[
          Text(f.utc.difference(DateTime.now()).inHours.toString()),
          Text(f.text),
          Text('...')
        ],)
      ],
    ));
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(child: PostUI(op, true)),
          ...previewRemaining
        ],
      ),
    );
  }
}

class CatalogUI extends StatelessWidget {
  static const routeName = '/catalog';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final CatalogArguments args = ModalRoute.of(context).settings.arguments;
    List<Post> posts = [myFakePostFn(3), myFakePostFn(4)];
    var catalog = [new ThreadModel(0, 'Whatever', posts), new ThreadModel(2, 'Also Whatever', posts)];
    String catalogNumber = args.board;
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog: $catalogNumber'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: catalogThumbnailBuilder(catalog), itemCount: catalog.length,),
    );
  }
  IndexedWidgetBuilder catalogThumbnailBuilder(List<ThreadModel> catalogItems) {
    return (BuildContext context, int index) => CatalogThumbnailUI(catalogItems[index]);
  }
}