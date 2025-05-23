import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  const BotonNaranja(
      {super.key,
      required this.texto,
      this.alto = 50,
      this.ancho = 150,
      this.color = Colors.orange});

  final String texto;
  final double alto;
  final double ancho;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: ancho,
      height: alto,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Text(
        '$texto',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
