// async와 await 01
// https://dart-ko.dev/codelabs/async-await
Future<void> order() async {
  print("음식을 주문 받음");
  /*
 await Future.delayed(Duration(seconds: 4), () {
 print("음식을 주문 받음");
 });
 */
}

Future<void> cooking() async {
  await Future.delayed(Duration(seconds: 3), () {
    print("음식을 조리 중...");
  });
}
void complete() {
  print("조리 완료");
}
void main() async {
  // await은 Future<T>를 반환하는 함수의 호출 구문 앞에 붙일 수 있다.
  await order();
  await cooking();
  complete();
}