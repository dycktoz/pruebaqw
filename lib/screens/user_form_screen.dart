import 'package:flutter/material.dart';
import 'package:prueba_qw/widgets/card_container.dart';
import 'package:prueba_qw/widgets/header_background.dart';
import 'package:prueba_qw/widgets/user_form_widget.dart';

class UserFormScreen extends StatelessWidget {
  const UserFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HeaderBackground(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 400,
          ),
          CardContainer(child: UserFormWidget()),
        ],
      ),
    )));
  }
}
