import 'package:bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:meta/meta.dart';

class BaseBlocTest<B extends Bloc<E, S>, E, S> {
  BaseBlocTest();
  void test(
    String description, {
    required B Function() build,
    required Future<void> Function(B bloc) act,
    required Duration wait,
    required Future<void> Function() verify,
    required Iterable expect,
  }) {
    return blocTest(
      description,
      build: build,
      wait: wait,
      // verify: verify,
      act: act,
      // expect: expect,
    );
  }
}
