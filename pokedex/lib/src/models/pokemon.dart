import 'package:flutter/material.dart';
import 'package:pokedex/src/models/evolution.dart';
import 'package:pokedex/src/models/move.dart';
import 'package:pokedex/src/models/pokedetail.dart';
import 'package:pokedex/src/models/tipo.dart';

class Pokemon{
  int id;
  String nombre;
  String imagen;
  PokeDetail detail;
  List<Tipo> tipos;
  List<Tipo> fuerte;
  List<Tipo> debil;
  List<Move> moves;
  List<Evolution> evolution;
  //agregar atributos de acuerdo a lo que necesita cada TABVIEW
  //y luego pasarlos al constructor
  Pokemon({
    this.id,
    this.nombre,
    this.imagen,
    this.detail,
    this.tipos,
    this.fuerte,
    this.debil,
    this.moves,
    this.evolution
  });

  Color getColorPrincipal(){
    return this.tipos.elementAt(0).color;
  }


}