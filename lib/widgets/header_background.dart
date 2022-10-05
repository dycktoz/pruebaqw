import 'package:flutter/material.dart';

class HeaderBackground extends StatelessWidget {
  final Widget child;

  const HeaderBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [_Backgroundbox(), _HeaderPika(), this.child],
      ),
    );
  }
}

class _HeaderPika extends StatelessWidget {
  const _HeaderPika({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: EdgeInsets.only(top: 100),
          width: double.infinity,
          child: Icon(
            Icons.person_pin_circle_outlined,
            size: 120,
          )),
    );
  }
}

class _Backgroundbox extends StatelessWidget {
  const _Backgroundbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.6,
      decoration: _background(),
      child: Stack(
        children: [
          Positioned(
            top: 135,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                height: size.width,
                width: size.width,
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _background() => BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 57, 127, 160),
        Color.fromARGB(230, 57, 127, 160),
      ]));
}
