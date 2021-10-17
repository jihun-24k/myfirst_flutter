void main(){
  Stack stack1 = new Stack();
}

class Stack{
  List<int> _stack;
  int _front;
  int _rear;

  Stack(int size){
    _front = 0;
    _rear = 0;
    _stack = List.filled(size,0);
  }

  void push(int data){
    if (isFull()){
      print('Stack is Full!!');
    }
    else {
      _stack[_rear++] = data;
    }
  }

  int pop(){
    int result = -1;
    if (isEmpty()){
      print('Stack is Empty!!');
    }
    else{
      result = _stack[_rear];
      _stack[_rear] = 0;
      _rear++;
    }
    return result;
  }

  int peek(){
    int result = -1;
    if (isEmpty()){
      print('Stack is Empty!!');
    }
    else{
      result = _stack[_rear];
    }
    return result;
  }

  bool isEmpty(){
    return _front == _rear;
  }

  bool isFull() {
    return _rear == _stack.length;
  }
}