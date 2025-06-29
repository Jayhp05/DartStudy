abstract class Phone {
  // 추상 클래스도 변수와 생성자를 가질 수 있다.
  String name;
  Phone(this.name);
  // 추상 메소드(abstract method)는 메소드의 시그니처(선언부)만 정의한다.
  void send();
  void receive();
}

/* extends는 클래스를 상속 받지만 implements는 인터페이스를 상속 받을 때 사용한다.
 * 다트는 클래스를 상속 받을 때 extends와 implements 두 가지 키워드를 사용할 수 있다.
 * 추상 클래스를 extends로 상속하게 되면 필요한 부분만 재정의해서 오버라이드 하면 되지만
* implements로 상속하면 인터페이스로 상속하게 되므로 이때는 extends를 사용할 때와 다르게
* 상위 클래스에 있는 모든 멤버(변수, 메소드)를 재정의해 오버라이드 해야 된다.
 * extends는 하나의 클래스만 상속할 수 있지만 implements는 여러 클래스를 상속할 수 있다.
 * Dart 3.0부터 inteface 키워드를 사용할 수 있도록 지원하고 있다.
 * // https://dart.dev/language/class-modifiers
 **/
class HomePhone extends Phone {
  HomePhone(super.name);
  @override
  void send() {
    print("전화를 건다.");
  }
  @override
  void receive() {
    print("전화를 받는다.");
  }
}
void main() {
  Phone p = HomePhone("우리집 전화기");
  p.send();
  p.receive();
}