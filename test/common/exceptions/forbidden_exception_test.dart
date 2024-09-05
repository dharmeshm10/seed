import 'package:flutter_test/flutter_test.dart';
import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/forbidden_exception.dart';

void main() {
  test('BadRequestException', () {
    // When
    final result = ForbiddenException('message');
    // Then
    expect(result.message, 'message');
    expect(result.code, ExceptionConstants.forbidden);
  });
}
