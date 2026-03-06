void outer(String name, String id) {
  String inner() {
    var parts = name.split(" ");
    var firstName = parts[0];
    var lastName = parts[1];
    var initial = lastName.substring(0, 1);
    return "Hello Agent $initial.$firstName your id is $id";
  }
  print(inner());
}
