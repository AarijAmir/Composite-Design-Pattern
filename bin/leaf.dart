import 'component.dart';

class Leaf implements Component {
  int price;
  String name;
  Leaf({required this.name, required this.price});

  @override
  void showPrice() {
    // TODO: implement showPrice
    print('Name =$name, Price =$price');
  }
}
