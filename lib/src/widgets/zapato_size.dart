import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  const ZapatoSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
            color: Color(0xffFFCF53), borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            _ZapatoConSombra(),
            _ZapatoTalla(),
          ],
        ),
      ),
    );
  }
}

class _ZapatoTalla extends StatelessWidget {
  const _ZapatoTalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(7),
          _TallaZapatoCaja(7.5),
          _TallaZapatoCaja(8),
          _TallaZapatoCaja(8.5),
          _TallaZapatoCaja(9),
          _TallaZapatoCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  const _TallaZapatoCaja(this.numero);

  final double numero;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      alignment: Alignment.center,
      child: Text(
        '${numero.toString().replaceAll('.0', '')}',
        style: TextStyle(
            color: (numero == 9) ? Colors.white : Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(
          color: (numero == 9) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (numero == 9)
              BoxShadow(
                  color: Color(0xffF1A23A),
                  blurRadius: 10,
                  offset: Offset(0, 5))
          ]),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  const _ZapatoConSombra({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ZapatoSombra()),
          Image(image: AssetImage('assets/imgs/azul.png'))
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}
