import 'dart:async';

class CreateClassValidator {
  final nameValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.isEmpty) {
      sink.addError("Campo obrigatório");
    } else {
      sink.add(email);
    }
  });

  final topicValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.isEmpty) {
      sink.addError("Campo obrigatório");
    } else {
      sink.add(password);
    }
  });
}
