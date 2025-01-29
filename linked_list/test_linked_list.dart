import 'node.dart';

void main() {
  final node0 = Node(value: 1);
  final node1 = Node(value: 2);
  final node2 = Node(value: 3);

  node0.next = node1;
  node1.next = node2;

  print(node0);
  print(node1);
}
