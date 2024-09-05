import 'package:flutter_test/flutter_test.dart';
import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/server_error_exception.dart';

void main() {
  test('ServerErrorException', () {
    // When
    final result = ServerErrorException('message');
    // Then
    expect(result.message, 'message');
    expect(result.code, ExceptionConstants.internalServerError);
  });
}
