void main(List<String> args) {
  var l = [10, 20, 30];
  for (var i in l) {
    print(i);
  }

  l.add(40);
  print(l);

  l.forEach((element) {
    print(element);
  });

  var l2 = l.map((e) => e * 2);
  print(l2);

  var m = {"name": "GAURAT", "firstName": "Fred"};

  print(m);
  print(m['name']);
}
