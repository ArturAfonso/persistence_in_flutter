import 'package:flutter/material.dart';

class ProductCrudPage extends StatelessWidget {
  const ProductCrudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados de Produtos"),
      ),
      //nome, descriçao, valor, imagem
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "Nome"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Descrição"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Valor"),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  FlutterLogo(
                    size: 200,
                  ),
                  Icon(
                    Icons.photo_camera,
                    size: 48,
                  ),
                ],
              ),
            ),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 200),
                child: ElevatedButton.icon(
                    icon: Icon(Icons.save),
                    onPressed: () {},
                    label: Text("Salvar")))
          ],
        ),
      ),
    );
  }
}
