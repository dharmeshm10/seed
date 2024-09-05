import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/server_exception.dart';

class BadRequestException extends ServerException {
  BadRequestException(String message)
      : super(
          message: message ?? '',
          code: ExceptionConstants.badRequest,
        );
}
