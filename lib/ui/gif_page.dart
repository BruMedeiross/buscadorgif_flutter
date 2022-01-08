import 'package:flutter/material.dart';
import 'package:share/share.dart';

//pagina para mostrar e compartilhar o gif
//Stateless - somente exibicao nao sofre alteracoes de estado

class GifPage extends StatelessWidget {

  final Map _gifData; //dados do gif,

  GifPage(this._gifData); //construtor do gift >como sera exibido

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton( //botao na appbar para compartilhar o gif
            icon: Icon(Icons.share),
            onPressed: (){
              //plugin share
              Share.share(_gifData["images"]["fixed_height"]["url"]);
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}

