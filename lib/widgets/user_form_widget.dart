import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:prueba_qw/form_bloc.dart/users_form_bloc.dart';
import 'package:prueba_qw/widgets/our_input_decoration.dart';

class UserFormWidget extends StatelessWidget {
  const UserFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserFormBloc(),
      child: Builder(
        builder: (context) {
          final userFormBloc = context.read<UserFormBloc>();
          return FormBlocListener<UserFormBloc, String, String>(
            onSubmitting: (context, state) {},
            child: Column(
              children: [
                TextFieldBlocBuilder(
                  textFieldBloc: userFormBloc.names,
                  decoration: ourInputDecorator(texto: 'Nombre'),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: userFormBloc.lastName,
                  decoration: ourInputDecorator(texto: 'Apellido Paterno'),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: userFormBloc.secondLastName,
                  decoration: ourInputDecorator(texto: 'Apellido Materno'),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: userFormBloc.direction,
                  decoration: ourInputDecorator(texto: 'Dirección'),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: userFormBloc.phoneNum,
                  decoration: ourInputDecorator(texto: 'Teléfono'),
                ),
                TextButton(
                    onPressed: (() {
                      userFormBloc.onSubmitting();
                    }),
                    child: Text('submitting'))
              ],
            ),
          );
        },
      ),
    );
  }
}
