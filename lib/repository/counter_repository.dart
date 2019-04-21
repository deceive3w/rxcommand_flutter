import 'package:rx_command/rx_command.dart';
import 'package:rxvms_flutter/data/counter.dart';

abstract class CounterRepository {
  RxCommand<int, int> counterCommand;
  Counter initialState;
  void increment();
  void decrement();
}

class CounterRepositoryImplementation implements CounterRepository{
  @override
  RxCommand<int, int> counterCommand;

  CounterRepositoryImplementation(){
    counterCommand = RxCommand.createSync<int, int>((a)=>a);
    counterCommand.listen((data)=>print('constructor = '+data.toString()));
  }

  @override
  void increment(){
    counterCommand.execute(counterCommand.lastResult +1);
//    counterCommand.execute(5);

  }

  @override
  void decrement(){
    counterCommand.execute(counterCommand.lastResult-1);
  }

  @override
  Counter initialState = new Counter();
}