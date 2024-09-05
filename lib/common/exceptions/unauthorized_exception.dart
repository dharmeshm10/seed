import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/server_exception.dart';

class UnauthorisedException extends ServerException {
  UnauthorisedException(String message)
      : super(
          message: message ?? '',
          code: ExceptionConstants.unauthorized,
        );
}
