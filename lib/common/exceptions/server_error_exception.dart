import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/server_exception.dart';

class ServerErrorException extends ServerException {
  ServerErrorException(String message)
      : super(
          message: message ?? '',
          code: ExceptionConstants.internalServerError,
        );
}
