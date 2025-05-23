import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {
  const AgregarCarritoBoton({super.key, required this.monto});

  final double monto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            '\$$monto',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          BotonNaranja(texto: 'Add to cart'),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
