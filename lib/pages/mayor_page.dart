import 'package:flutter/material.dart';

class MayorPage extends StatefulWidget {
  const MayorPage({Key? key}) : super(key: key);

  @override
  State<MayorPage> createState() => _MayorPageState();
}

class _MayorPageState extends State<MayorPage> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  double? mayor;

  @override
  void dispose() {
    num1Controller.dispose();
    num2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comprobar mayor'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                    controller: num1Controller,
                    decoration: const InputDecoration(
                      hintText: 'Número 1',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                    controller: num2Controller,
                    decoration: const InputDecoration(
                      hintText: 'Número 2',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                final num1 = double.parse(num1Controller.text);
                final num2 = double.parse(num2Controller.text);
                if (num1 == num2) {
                  return;
                }
                mayor = num1 > num2 ? num1 : num2;
                setState(() {});
              },
              child: const Text('Comprobar mayor'),
            ),
            Text(
              mayor == null
              ? 'El mayor es:'
              : 'El mayor es: $mayor',
            ),
          ],
        ),
      ),
    );
  }
}
