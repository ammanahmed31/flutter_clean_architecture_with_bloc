import 'package:logger/logger.dart';

class _CustomLogger extends LogPrinter {
  dynamic className;

  _CustomLogger(this.className);

  _CustomLogger.only();

  @override
  List<String> log(LogEvent event) {
    final String? emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    final AnsiColor? color = PrettyPrinter.defaultLevelColors[event.level];
    if (className == null) return [color!('$emoji ${event.message}')];
    return [color!('$emoji $className - ${event.message}')];
  }
}

class Log {
  /// info level
  Log(final dynamic runtimeType, dynamic message) {
    Logger(printer: _CustomLogger(runtimeType)).i(message);
  }

  /// Log only
  Log.o(dynamic message) {
    Logger(printer: _CustomLogger.only()).i(message);
  }

  /// debug level
  Log.d(final dynamic runtimeType, dynamic message) {
    Logger(printer: _CustomLogger(runtimeType)).d(message);
  }

  /// error level
  Log.e(final dynamic runtimeType, dynamic message, [StackTrace? stackTrace]) {
    if (stackTrace != null) {
      Logger(printer: _CustomLogger(runtimeType)).e('$message\n$stackTrace');
      return;
    }

    Logger(printer: _CustomLogger(runtimeType)).e(message);
  }

  /// trace level
  Log.t(final dynamic runtimeType, dynamic message) {
    Logger(printer: _CustomLogger(runtimeType)).t(message);
  }

  /// warning level
  Log.w(final dynamic runtimeType, dynamic message) {
    Logger(printer: _CustomLogger(runtimeType)).w(message);
  }

  /// info level
  Log.i(final dynamic runtimeType, dynamic message) {
    Logger(printer: _CustomLogger(runtimeType)).i(message);
  }

  /// fatal level
  Log.f(final dynamic runtimeType, dynamic message) {
    Logger(printer: _CustomLogger(runtimeType)).f(message);
  }
}
