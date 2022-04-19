import 'dart:collection';

main() {
    Queue<int> cola = new Queue();

    cola.addAll([10,340,23,45,42]);

    Iterator i = cola.iterator;

    while(i.moveNext()){
        print(i.current);
    }
}