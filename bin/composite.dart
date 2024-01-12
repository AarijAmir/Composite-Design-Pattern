import 'component.dart';

class Composite implements Component {
  Composite({required this.name});
  List<Component> components = [];
  String name;

  @override
  void showPrice() {
    // TODO: implement showPrice
    print('Name = $name');
    for (var element in components) {
      element.showPrice();
    }
  }

  void addComponent(Component component) {
    components.add(component);
  }
}
