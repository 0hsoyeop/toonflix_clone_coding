import 'package:test/test.dart';

void main() {
  // 어떤 테스트를 할지 설명하고, 안에 있는 테스트를 실행한다.

  // 테스트 1. 성공 예시
  test('should be lowercase', () {
    String hello = "Hello World";

    // expect(실제값, 기대값)
    expect(hello.toLowerCase(), "hello world");
  });

  // 테스트 2. 실패 예시
  test('should contain name', () {
    String hello = "Hello World, Mike";

    expect(hello.contains("mike"), true);
  });
}