import 'package:test/test.dart';
import 'package:seed/common/constants/exception_constants.dart';
import 'package:seed/common/exceptions/unauthorized_exception.dart';

void main() {
  test('BadRequestException', () {
    // When
    final result = UnauthorisedException('message');
    // Then
    expect(result.message, 'message');
    expect(result.code, ExceptionConstants.unauthorized);
  });
}
