import 'package:base/app/blocs/validators/create_class_validator.dart';
import 'package:rxdart/rxdart.dart';

class CreateClassBloc with CreateClassValidator {
  BehaviorSubject<String> _nameController = BehaviorSubject<String>();
  BehaviorSubject<String> _topicController = BehaviorSubject<String>();

  Function(String) get changeName => _nameController.sink.add;
  Function(String) get changeTopic => _topicController.sink.add;

  Stream<String> get name => _nameController.stream.transform(nameValidator);
  Stream<String> get topic => _topicController.stream.transform(topicValidator);

  Stream<bool> get outSubmitValid =>
      Rx.combineLatest2(name, topic, (e, p) => true);

  void dispose() {
    _nameController.close();
    _topicController.close();
  }
}
