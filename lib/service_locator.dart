import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:rx_command/rx_command.dart';
import 'package:rxvms_flutter/repository/counter_repository.dart';

GetIt sl = new GetIt();

void setUpServiceLocator(ErrorReporter errorReporter){
  sl.registerSingleton<ErrorReporter>(errorReporter);

  sl.registerSingleton<CounterRepository>(new CounterRepositoryImplementation());

}

class ErrorReporter {
}



