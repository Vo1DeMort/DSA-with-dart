//NOTE:
//linkedlist has the concept of head and tail
//meaning: first and last notes of the linkedlist

import 'node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'empty linkedlist';
    return head.toString();
  }
}
