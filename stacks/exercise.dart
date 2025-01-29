class Stack<T> {
  ///stack dsa implementation
  Stack() : _storage = <T>[]; // initialize

  //NOTE: wtf is this line  :name constructor ,how does that even work
  Stack.of(Iterable<T> elements) : _storage = List<T>.of(elements);
  final List<T> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n------';
  }

  void push(T element) => _storage.add(element);

  T pop() => _storage.removeLast();

  T get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  // List<T> reverseAList(List<T> list) {
  //   List<T> newlist = [];
  //   if (!list.isEmpty) {
  //     // 2way
  //     // pop and put it in a new list // this might be easier
  //     // or get the size of list ,make a new one with index no
  //     for (i in list) {
  //       newlist.add(List.pop);
  //     }
  //   }
  //   return newlist;
  // }
}
