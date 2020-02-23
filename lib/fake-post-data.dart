import 'package:dektor/post-model.dart';

Post myFakePostFn(int val) {
  var p = Post();
  var m = MediaContainer();
  var t = Thumbnail();
  var i = MediaInfo();

  m.thumbnail = t;
  m.info = i;
  m.id = 2;

  p.name = 'benschange';
  p.replies = [1, 3, 5];
  p.number = val;
  p.utc = new DateTime.now();
  p.text = 'blah blah $val';
  p.media = [m];
  return p;
}