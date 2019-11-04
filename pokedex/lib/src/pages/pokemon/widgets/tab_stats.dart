import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pokedex/src/models/pokemon.dart';



class PokemonBaseStats extends StatefulWidget {
  final Pokemon pokemon;
  PokemonBaseStats(this.pokemon);

  @override
  _PokemonBaseStatsState createState() => _PokemonBaseStatsState();
}

class _PokemonBaseStatsState extends State<PokemonBaseStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
       child: widget.pokemon.detail == null 
          ? Center(child: Text('No hay stats'),)
          : Column(
            children: <Widget>[
              Row(children: _buildStats(widget.pokemon),),
              //AQUI SE DEBERIA AGREGAR OTRO WIDGET O METODO
              //PARA CREAR LA SECCION TIPOS FUERTES, DEBILES, ETC
              ],
            )  
    );
  }

  //NOTAR QUE ESTOY PASANDO UNA LISTA DE WIDGETS YA QUE EL CHILDREN DEL ROW PIDE ESO
  List<Widget> _buildStats(Pokemon pokemon) {
    return [
      //el primer column solo es para mostrar los titulos de cada stat
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('HP',),
          SizedBox(height: 10,),
          Text("Atack"),
          SizedBox(height: 10,),
          Text("Defense"),
          SizedBox(height: 10,),
          Text("Sp Atack"),
          SizedBox(height: 10,),
          Text("Sp Defense"),
          SizedBox(height: 10,),
          Text("Speed"),
        ],
      ),
      SizedBox(width: 10,),
      //Este widget resuelve el mismo conflico que el widget singlechildscrollview
      //pero en este caso resuelve el overflow de pixel pero a la derecha, no abajo
      Flexible(
        child: Column(
          children: <Widget>[
            //este widget es de una libreria externa a flutter 
            //sacado desde pub.dev, revisar el import más arriba
            //considere que debe actualizar el archivo pubspec.yaml para que funcione correctamente
            //comando: FLUTTER PACKAGES GET
            LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                lineHeight: 8.0,
                percent: pokemon.detail.healthPoints/100,
                progressColor: Colors.green,
                leading: Text('${ pokemon.detail.healthPoints}'),

            ),
            SizedBox(height: 10,),
            LinearPercentIndicator(
                lineHeight: 8.0,
                percent: pokemon.detail.atack/100,
                progressColor: Colors.green,
                leading:  Text('${pokemon.detail.atack}'),

            ),
            SizedBox(height: 10,),
            LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                lineHeight: 8.0,
                percent: pokemon.detail.defense/100,
                progressColor: Colors.green,
                leading:  Text('${pokemon.detail.defense}'),

            ),
            SizedBox(height: 10,),
            LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                lineHeight: 8.0,
                percent: pokemon.detail.specialAtack/100,
                progressColor: Colors.green,
                leading:  Text('${pokemon.detail.specialAtack}'),

            ),
            SizedBox(height: 10,),
            LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                lineHeight: 8.0,
                percent: pokemon.detail.specialDefense/100,
                progressColor: Colors.green,
                leading:  Text('${pokemon.detail.specialDefense}'),

            ),
            SizedBox(height: 10,),
            LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                lineHeight: 8.0,
                percent: pokemon.detail.speed/100,
                progressColor: Colors.green,
                leading:  Text('${pokemon.detail.speed}'),

            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
      
    ];
  }

}