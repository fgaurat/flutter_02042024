void main(List<String> args) {
  
  String? name=null;
  // String s = name!;
  name = "toto";
  print(name?.length);
  print(name);
  int sizeName =  name?.length ?? 0;

  print(sizeName);

}