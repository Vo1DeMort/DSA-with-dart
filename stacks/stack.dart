// real world examples
// pancakes, books

// operations
// push, pop
// LIFO

// recursion is managed with stack
// infinite recursion - stack over flow

// search and conquer algo , [findin a path out of
// a maze use stacks to facilitate "backtracking"]

/// implementation
class Stack<T> {
  Stack() : _storage = <T>[];
  final List<T> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n------';
  }

  void push(T element) => _storage.add(element);

  T pop() => _storage.removeLast();
}

final stack = Stack<int>();

void main() {
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print(stack);
  stack.pop();
  print(stack);
}
