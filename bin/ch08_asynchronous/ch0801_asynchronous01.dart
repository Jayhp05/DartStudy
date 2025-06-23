void order() {
  print("음식을 주문 받음");
}
void cooking() {
  print("음식을 조리 중...");
}
void complete() {
  print("조리 완료");
}
void main() {
  // 동기 방식은 다음과 같이 함수가 호출되는 순서대로 실행되며
// 앞의 함수가 실행이 완료된 후에 다음 함수가 차례대로 실행된다.
  order();
  cooking();
  complete();
}