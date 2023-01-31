import 'package:mvvm_test/models/counter_model.dart';

class HomeViewModel {
  // this will provide all data the view needs
  String title = "First Page View Model";
  var counterModel = CounterModel();

  getCounter() {
    return counterModel.count;
  }

  inc() {
    counterModel.count++;
  }
}
