import 'package:get/get.dart';

enum NUM {FIRST, SECOND}
class User {
  String? name;
  int? age;
  User({required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  RxList<String> list = [""].obs;
  RxList list1 = [].obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: '동현',age: 27).obs;


  void increase() {
    count++;
    _double(424.0);
    nums(NUM.SECOND);
    user(User(name: '', age: null));
    user.update((_user) {
      _user?.name = "개발하는 동동";
    });
    list1.addAll([1,2,4]);
    list.add("123");
    list.addIf(user.value.name=='개발하는 동동', "okay");
  }

  void putNumber(int value){
    count(value);
  }

  @override
  void onInit() {
    ever(count,(_)=>print('매번 호출'));
    once(count, (_)=>print('한번만 호출'));
    debounce(count, (_)=>print('마지막 변경에 한번만 호출'),time: Duration(seconds: 1));
    // debounce 멈추면 1초 뒤에 호출된다. ex) 검색할때 입력을 어느정도 마무리했을때 관련 검색어들을 보여준다.
    interval(count, (_)=>print('변경되고 있는 동안에 1초마다 호출'), time: Duration(seconds: 1));
    super.onInit();
  }


}