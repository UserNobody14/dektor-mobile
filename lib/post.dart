import 'package:dektor/post-model.dart';
import 'package:flutter/material.dart';

class PostUI extends StatelessWidget {
  PostUI(
    this.postModel,
  [bool catalog]
  ): this.isCatalog = catalog ?? false;

  final Post postModel;
  final bool isCatalog;
  @override
  Widget build(BuildContext buildContext) {
    var postCore = Column(children: <Widget>[
      NameBar(
          postModel.name, postModel.utc, postModel.replies, postModel.number),
      MediaThumbnail(postModel.media?.first?.thumbnail, postModel.media),
      PostUIText(postModel.text)
    ]);
    return isCatalog ? postCore : Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(2),
      child: postCore,
    );
  }
}

class NameBar extends StatelessWidget {
  NameBar(this.name, this.date, this.replies, this.number);

  final String name;
  final int number;
  final DateTime date;
  final List<int> replies;

  Widget _separate(item) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
        child: item);
  }

  @override
  Widget build(BuildContext context) {
    var repliesText = replies.map((f) => _separate(Text(f.toString())));
    return Container(
        margin: const EdgeInsets.only(top: 3, left: 3),
        child: Row(
          children: <Widget>[
            _separate(Text(name,
                style: TextStyle(
                    color: Color.fromRGBO(17, 119, 67, 1.0),
                    fontWeight: FontWeight.bold))),
            _separate(Text(date.toIso8601String())),
            _separate(Text(number.toString())),
            ...repliesText
          ],
        ));
  }
}

class MediaThumbnail extends StatelessWidget {
  MediaThumbnail(this.thumbnail, this.furtherMedia);
  final Thumbnail thumbnail;
  final List<MediaContainer> furtherMedia;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(width: 0.0, height: 0.0);
  }
}

class PostUIText extends StatelessWidget {
  PostUIText(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.all(10),
        child: Text(
          text,
          textAlign: TextAlign.left,
        )
    );
  }
}
