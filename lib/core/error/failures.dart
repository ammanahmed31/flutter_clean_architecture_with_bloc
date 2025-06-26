import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;
  final StackTrace? stackTrace;
  const Failure([this.message, this.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];
}

class ServerFailure extends Failure {
  const ServerFailure([super.message, super.stackTrace]);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message, super.stackTrace]);
}
