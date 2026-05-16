import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spa_v2/core/network/interceptors/auth_interceptor.dart';

class MockRequestInterceptorHandler extends Mock implements RequestInterceptorHandler {}

void main() {
  late AuthInterceptor interceptor;
  late MockRequestInterceptorHandler mockHandler;

  setUp(() {
    interceptor = AuthInterceptor();
    mockHandler = MockRequestInterceptorHandler();
  });

  test('should call next on handler', () {
    final options = RequestOptions(path: '/test');
    interceptor.onRequest(options, mockHandler);
    verify(() => mockHandler.next(options)).called(1);
  });
}
