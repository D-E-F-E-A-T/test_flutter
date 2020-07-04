import 'package:base/app/blocs/validators/create_account_validator.dart';
import 'package:rxdart/rxdart.dart';

class CreateAccoutnBLoc with CreateAccountValidator {
  BehaviorSubject<String> _nameController = BehaviorSubject<String>();
  BehaviorSubject<String> _surnameController = BehaviorSubject<String>();
  BehaviorSubject<String> _emailController = BehaviorSubject<String>();
  BehaviorSubject<String> _passwordController = BehaviorSubject<String>();
  BehaviorSubject<String> _confirmPasswordController =
      BehaviorSubject<String>();

  Function(String) get changeName => _nameController.sink.add;
  Function(String) get changeSurname => _surnameController.sink.add;
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeConfirmPassword =>
      _confirmPasswordController.sink.add;

  Stream<String> get name => _nameController.stream.transform(nameValidator);
  Stream<String> get surname =>
      _surnameController.stream.transform(surnameValidator);
  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password =>
      _passwordController.stream.transform(passwordValidator);
  Stream<String> get confirmPassword => _confirmPasswordController.stream
          .transform(passwordValidator)
          .doOnData((String confirmPassword) {
        if (0 != _passwordController.value.compareTo(confirmPassword)) {
          _confirmPasswordController.addError("No Match");
        }
      });

  Stream<bool> get outSubmitValid => Rx.combineLatest5(
      name, surname, email, password, confirmPassword, (a, b, c, d, e) => true);

  void dispose() {
    _nameController.close();
    _surnameController.close();
    _emailController.close();
    _passwordController.close();
    _confirmPasswordController.close();
  }
}
