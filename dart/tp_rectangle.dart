import 'rectangle.dart';

void main(List<String> args) {
  Rectangle r = Rectangle(2, 3);
  print(r);
  print(r.largeur);
  r.largeur = 15;
  print(r.largeur);
  print(r.longueur);
  
  
  Rectangle r1 = Rectangle.byName(longueur: 125,largeur: 12);
  print(r1);
  Rectangle r2 = Rectangle.fromString("6x9");
  print(r2);
  print(Rectangle.cotes);




}