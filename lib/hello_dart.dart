void main(){
  Queue queue1 = new Queue();
}

class Queue{
  List<int> _queue;
  int _front;
  int _rear;

  Queue(int size){
    _front = 0;
    _rear = 0;
    // List.filled를 사용해야함
    _queue = List.filled(size,0);
  }

  void enqueue(int data){
    if (isFull()){
      print('Queue is Full!!');
    }
    else {
      _queue[_rear++] = data;
    }
  }

  int dequeue(){
    int result = -1;
    if (isEmpty()){
      print('Queue is Empty!!');
    }
    else{
      result = _queue[_front];
      _queue[_front] = 0;
      _front++;
    }
    return result;
  }

  int peek(){
    int result = -1;
    if (isEmpty()){
      print('Queue is Empty!!');
    }
    else{
      result = _queue[_front];
    }
    return result;
  }

  bool isEmpty(){
    return _front == _rear;
  }

  bool isFull() {
    return _rear == _queue.length;
  }
}