class person{
  void dispName(String name) {
    print(name);
  }

  void dispAge(int age) {
    print(age);

  }
}

class peter extends Person {

  void dispBranch(String nationality) {
    print(nationality);
  }
}

class james extends Person{
  void result(String result){
    print(result);

  }
}

void main() {

  james j= new james();
  j.dispName("james");
  j.dispAge(24);
  j.result("Passed");

  peter p = new peter();
  p.dispName("peter");
  p.dispAge(21);
  

}