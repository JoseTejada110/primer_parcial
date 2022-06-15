import 'package:flutter/material.dart';

class TablaPage extends StatefulWidget {
  const TablaPage({Key? key}) : super(key: key);

  @override
  State<TablaPage> createState() => _TablaPageState();
}

class _TablaPageState extends State<TablaPage> {
  final controller = TextEditingController();
  bool isVisible = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla de multiplicación'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Número para generar la tabla:'),
          TextField(
            keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Introduce un número',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              isVisible = true;
              setState(() {});
            },
            child: const Text('Generar Tabla'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Visibility(
            visible: isVisible,
            child: Expanded(
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 14,
                itemBuilder: (BuildContext context, int index) {
                  final myNum = index + 1;
                  final result = double.parse(controller.text) * myNum;
                  return ListTile(
                    title: Text('${controller.text} * $myNum ='),
                    trailing: Text('$result'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
