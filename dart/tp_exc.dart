// HelloWorld =>  UpperCamelCase / PascalCase
// helloWorld =>  camelCase
// hello_world =>  snake
// hello-world =>  kebab-case

void main(List<String> args) {
  int a = 0;
  int b = 2;
  // double c = b/a;

  try {
    int c = b ~/ a; // division entière
    print(c);
  } on UnsupportedError {
    print("Div /0");
  } catch (e) {
    print("Erreur");
  }

  print("après");
}

int callDiv(int a, int b) {
  var r = 0;
  try {
    print("open log ");
    print("write log $a,$b");
    r = div(a, b);
  } finally {
    print("close log ");
  }
  return r;
}

int div(int a, int b) {
  return a ~/ b;
}
