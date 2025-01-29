// NOTE:
//linkedlist has the concept of head and tail
//meaning: first and last notes of the linkedlist

// NOTE:
// push, append, insert after

import 'node.dart';

class LinkedListt<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'empty linkedlist';
    return head.toString();
  }

  // add at the front of the linkedlist
  void push(E value) {
    head = Node(value: value, next: head);
    //NOTE:
    // null aware assignment operator
    // if tail is null, assign head in this case
    tail ??= head;
  }

  // add at the end of the linkedlist
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }

    tail!.next = Node(value: value);

    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    return node.next!;
  }
}
