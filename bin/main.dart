import 'component.dart';
import 'composite.dart';
import 'leaf.dart';

void main(List<String> args) {
  Component hardDrive = Leaf(name: 'Hard Drive', price: 10000);

  Component mouse = Leaf(name: 'Mouse', price: 700);

  Component keyboard = Leaf(name: 'Keyboard', price: 1500);

  Component monitor = Leaf(name: 'Monitor', price: 8000);

  Component cpu = Leaf(name: 'CPU', price: 1800);

  Component ram = Leaf(name: 'RAM', price: 2500);

  Composite peripheral = Composite(name: 'Peripheral');
  Composite motherBoard = Composite(name: 'MotherBoard');
  Composite cabinet = Composite(name: 'Cabinet');
  Composite computer = Composite(name: 'Computer');

  motherBoard.addComponent(cpu);
  motherBoard.addComponent(ram);
  peripheral.addComponent(mouse);
  peripheral.addComponent(keyboard);
  peripheral.addComponent(monitor);
  cabinet.addComponent(motherBoard);
  cabinet.addComponent(hardDrive);
  computer.addComponent(peripheral);
  computer.addComponent(cabinet);
  // peripheral.showPrice();
  computer.showPrice();
}
