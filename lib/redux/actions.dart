import 'package:dektor/thread-model.dart';

class FetchThreadAction {
  final int threadNumber;

  FetchThreadAction(this.threadNumber);
}

class FetchThreadSucceeded {
  final ThreadModel threadModel;

  FetchThreadSucceeded(this.threadModel);
}

class FetchThreadFailed {
  final Exception exception;

  FetchThreadFailed(this.exception);
}

