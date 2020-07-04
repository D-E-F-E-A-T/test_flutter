import 'dart:async';

class CreateAccountValidator {
  final nameValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (name, sink) {
    if (name.isEmpty) {
      sink.addError("Campo obrigatório");
    } else {
      sink.add(name);
    }
  });

  final surnameValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (surname, sink) {
    if (surname.isEmpty) {
      sink.addError("Campo obrigatório");
    } else {
      sink.add(surname);
    }
  });

  final emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    const Pattern pattern =
        r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$";
    final RegExp regex = RegExp(pattern);

    if (email.isEmpty) {
      sink.addError("Campo obrigatório");
    } else if (!regex.hasMatch(email)) {
      sink.addError("Email inválido");
    } else {
      sink.add(email);
    }
  });

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.isEmpty) {
      sink.addError("Campo obrigatório");
    } else if (password.length < 8) {
      sink.addError("Campo deve ter ao menos 8 caracteres");
    } else if (password.length > 16) {
      sink.addError("Campo deve ter no máximo 8 caracteres");
    } else {
      sink.add(password);
    }
  });
}
