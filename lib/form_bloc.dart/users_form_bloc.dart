import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class UserFormBloc extends FormBloc<String, String> {
  final names = TextFieldBloc(name: 'names');
  final lastName = TextFieldBloc(name: 'lastName');
  final secondLastName = TextFieldBloc(name: 'secondLastName');
  final direction = TextFieldBloc(name: 'direction');
  final phoneNum = TextFieldBloc(name: 'phoneNum');
  UserFormBloc() {
    addFieldBlocs(
        fieldBlocs: [names, lastName, secondLastName, direction, phoneNum]);
  }
  @override
  FutureOr<void> onSubmitting() {
    print(names.value);
  }
}
