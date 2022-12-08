import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:april_flutter_utils/april.dart';

void main() {
  const MethodChannel channel = MethodChannel('april');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    // expect(await April.platformVersion, '42');
  });
}
