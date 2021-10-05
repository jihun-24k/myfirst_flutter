void main(){
  Queue queue1 = new Queue();


}

class Queue{
  List<int> _queue;
  int _front;
  int _rear;
  int _MAX;

  Queue(){
    _MAX = 10000;
    _front = 0;
    _rear = 0;
    // List.filled를 사용해야함
    _queue = new List();
  }

  void enqueue(int num){
    List<int> list = _queue + [num];
  }

  int dequeue(){

  }

  int peek(){

  }

  bool isEmpty(){
    return _front == _rear;
  }

  bool isFull(){
    if(_rear == _MAX - 1){
      return true;
    }else{
      return false;
  }

}