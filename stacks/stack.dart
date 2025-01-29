//NOTE: a "Stack" 's purpose is to limit the number of way to access data
// real world examples
// pancakes, books
// operations
// push, pop
// LIFO
// recursion is managed with stack
// infinite recursion - stack over flow
// search and conquer algo , [findin a path out of
// a maze use stacks to facilitate "backtracking"]

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
}

final stack = Stack<int>();

void main() {
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print(stack);
  stack.pop();
  print(stack);

  const list = ['s', 'm', 'o', 'k', 'e'];
  final smokeStack = Stack.of(list);
  smokeStack.pop();
  print(smokeStack);
  print('${smokeStack.isEmpty}');
}
