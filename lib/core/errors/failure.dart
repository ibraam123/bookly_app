import 'package:dio/dio.dart';

// Abstract class for representing failures.
abstract class Failure {
  // The error message associated with the failure.
  final String message;
  // Constructor for the Failure class.
  Failure(this.message);
}

// General failures
// Represents a failure that occurred on the server side.
class ServerFailure extends Failure {
  // Constructor for the ServerFailure class.
  ServerFailure(super.message);
  // Factory constructor to create a ServerFailure from an HTTP response.
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // If the status code is 400, 401, or 403, use the error message from the response.
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      // If the status code is 404, return a "not found" message.
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      // If the status code is 500, return an "internal server error" message.
      return ServerFailure('Internal server error, Please try later!');
    }
    // For any other status code, return a generic error message.
    return ServerFailure('Oops, there was an error. Please try again.');
  }
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with API server');

      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with API server');

      case DioExceptionType.unknown:
        return ServerFailure('Oops, there was an error. Please try again.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
    }
  }
}
