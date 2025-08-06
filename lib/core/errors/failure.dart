

abstract class Failure {}

// General failures
class ServerFailure extends Failure {
  List<Object> get props => [

  ];
}

class CacheFailure extends Failure {
  List<Object> get props => [];
}

