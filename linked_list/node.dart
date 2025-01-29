//NOTE:
//chain of nodes
//hold a value, hold a reference to the next node
//null ref indicates the end of the list

class Node<T> {
  // this guy doesn't know what comes before
  Node({required this.value, this.next});

  T value;

  //NOTE:
  //this ref to the another "instance(sub-class)" of node
  //awesome
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}'; // recursive until a node stop referencing
  }
}
