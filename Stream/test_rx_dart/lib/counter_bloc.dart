import 'package:rxdart/rxdart.dart';

class CounterBloc {

  //if the data is not passed by paramether it initializes with 0
  int initialCount = 0;

  BehaviorSubject<int> _subjectCounter= new BehaviorSubject<int>();

  CounterBloc({required this.initialCount}){
    
  //initializes the subject with element already
   _subjectCounter = new BehaviorSubject<int>.seeded(this.initialCount); 

  }

  Observable<int> get counterObservable => _subjectCounter.stream; 

  void increment(){
    initialCount++;
    _subjectCounter.sink.add(initialCount);
  }

  void decrement(){
    initialCount--;
    _subjectCounter.sink.add(initialCount);
  }

  void dispose(){
    _subjectCounter.close();
  }
  
}