import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/server_exception.dart';

class ForbiddenException extends ServerException {
  ForbiddenException(String message)
      : super(
          message: message ?? '',
          code: ExceptionConstants.forbidden,
        );
}
