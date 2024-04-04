

// dart run hello.dart
void main(List<String> args){
  print("Hello");
  // print(args[0]);
  // print(args[1]);
  int a =2;
  int b =3;

  var c = a+b;

  print('a+b = $c');
  print("a+b = $c");
  print(c.runtimeType);

  const d=0;
  print(d);

  final e;
  e=0;
  print(e);
  c = add(a,b);
  print(c);
  c = add2(value02:a,value01:b);
  print(c);
  int value02=12;
  int value01=12;
  c = add2(value01:value01,value02:value02);
}

int add(int a,int b){
  return a+b;
}


int add2({int value01=0,int value02=0}){

  return value01+value02;
}

