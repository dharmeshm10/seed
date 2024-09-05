import 'package:flutter_test/flutter_test.dart';

import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/bad_request_exception.dart';

void main() {
  test('BadRequestException', () {
    // When
    final result = BadRequestException('message');
    // Then
    expect(result.message, 'message');
    expect(result.code, ExceptionConstants.badRequest);
  });
}
