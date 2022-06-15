import 'package:flutter/material.dart';
import 'package:primer_parcial/pages/mayor_page.dart';
import 'package:primer_parcial/pages/tabla_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Nombre: José Tejada
    //Matrícula: 2020-10474
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Image(
              height: 200,
              width: 200,
              image: AssetImage('assets/foto-personal.png'),
            ),
          ),
          const Text('José Tejada'),          
          const SizedBox(height: 20.0,),
          _buildListTile(const TablaPage(), context, 'Tabla de multiplicar'),
          _buildListTile(const MayorPage(), context, 'Comprobar el mayor'),
        ],
      ),
    );
  }

  Widget _buildListTile(Widget page, BuildContext context, String title) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => page),
        );
      },
    );
  }
}