void main(List<String> args) {
  var arg = int.parse(args[0]);
  assert(arg >= 80, "The score must be bigger or equal to 80");
  print("You Passed");
}
