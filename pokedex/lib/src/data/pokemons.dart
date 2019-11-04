
import 'package:pokedex/src/data/evolutions.dart';
import 'package:pokedex/src/data/moves.dart';
import 'package:pokedex/src/data/pokemons_detail.dart';
import 'package:pokedex/src/data/tipos.dart';
import 'package:pokedex/src/models/pokemon.dart';


//CONSIDERE CREAR LA DATA PREVIAMENTE ANTES DE AGREGARLA A UN OBJETO DE LA CLASE POKEMON

Pokemon bulbasaur = Pokemon(id: 1, nombre: "Bulbasaur", imagen: "assets/images/bulbasaur.png", tipos: [planta, veneno],
fuerte: [tierra, agua],debil: [volador, veneno, fuego], detail: bulbasaurDet, moves: [placaje,rayoSolar,drenadoras,polvoVeneno], evolution: [bulbasaurEvolution,ivysaurEvolution,] );//AGREGAR TANTOS ATRIBUTOS SEA NECESARIO
Pokemon ivysaur = Pokemon(id: 2, nombre: "Ivysaur", imagen: "assets/images/ivysaur.png", tipos: [planta, veneno],
fuerte: [tierra, agua],debil: [volador, veneno, fuego],detail: ivysaurDet,moves: [rayoSolar,drenadoras,latigoCepa,somnifero], evolution: [ivysaurEvolution]);
Pokemon venusaur = Pokemon(id: 3, nombre: "Venusaur", imagen: "assets/images/venusaur.png", tipos: [planta, veneno],
fuerte: [tierra, agua],debil: [volador, veneno, fuego], detail: venusaurDet,moves: [rayoSolar,somnifero,danzaPetalo,tormentaFloral]);
Pokemon charmander = Pokemon(id: 4, nombre: "Charmander", imagen: "assets/images/charmander.png", tipos: [fuego],
fuerte: [planta,acero],debil: [tierra, agua], detail: charmanderDet,moves: [ascuas,malicioso,lanzallamas,giroFuego],evolution: [charmanderEvolution,chamarleonEvolution]);
Pokemon charmeleon = Pokemon(id: 5, nombre: "Charmeleon", imagen: "assets/images/charmeleon.png", tipos: [fuego],
fuerte: [planta,acero],debil: [tierra, agua], detail: charmeleonDet,moves: [cuchillada,lanzallamas,colmilloIgneo,infierno],evolution: [chamarleonEvolution]);
Pokemon charizard = Pokemon(id: 6, nombre: "Charizard", imagen: "assets/images/charizard.png", tipos: [fuego, volador],
fuerte: [planta,bicho],debil: [tierra, agua, electrico], detail: charizardDet,moves: [ataqueAla,ondaIgnea,infierno,furiaDragon]);
Pokemon squirtle = Pokemon(id: 7, nombre: "Squirtle", imagen: "assets/images/squirtle.png", tipos: [agua],
fuerte: [tierra, fuego],debil: [planta,electrico], detail: squirtleDet,moves: [burbuja,mordisco,pistolaAgua,hidrobomba],evolution: [squirtleEvolution,wartortleEvolution]);
Pokemon wartortle = Pokemon(id: 8, nombre: "Wartortle", imagen: "assets/images/wartortle.png", tipos: [agua],
fuerte: [tierra, fuego],debil: [planta,electrico], detail: wartortleDet,moves: [mordisco,giroRapido,hidropulso,hidrobomba],evolution: [wartortleEvolution]);
Pokemon blastoise = Pokemon(id: 9, nombre: "Blastoise", imagen: "assets/images/blastoise.png", tipos: [agua],
fuerte: [tierra, fuego],debil: [planta,electrico], detail: blastoiseDet,moves: [cabezazo,giroRapido,acuaCola,hidrobomba]);
Pokemon pikachu = Pokemon(id: 25, nombre: "Pikachu", imagen: "assets/images/pikachu.png", tipos: [electrico],
fuerte: [volador, agua],debil: [tierra], detail: pikachuDet,moves: [impactrueno,ataqueRapido,ondaTrueno,trueno]);
Pokemon raichu = Pokemon(id: 26, nombre: "Raichu", imagen: "assets/images/raichu.png", tipos: [electrico],
fuerte: [volador, agua],debil: [tierra], detail: raichuDet,moves: [impactrueno,ataqueRapido,ondaTrueno,trueno,chispa]);
Pokemon articuno = Pokemon(id: 144, nombre: "Articuno", imagen: "assets/images/articuno.png", tipos: [hielo,volador],
fuerte: [planta, lucha],debil: [roca,acero], detail: articunoDet,moves: [picotazo,rayoHielo,ventisca,agilidad]);
Pokemon zapdos = Pokemon(id: 145, nombre: "Zapdos", imagen: "assets/images/zapdos.png", tipos: [electrico,volador],
fuerte: [agua, planta],debil: [tierra,hielo], detail: zapdosDet,moves: [picoTaladro,impactrueno,trueno,pantallaLuz]);
Pokemon moltres = Pokemon(id: 146, nombre: "Moltres", imagen: "assets/images/moltres.png", tipos: [fuego,volador],
fuerte: [planta,bicho],debil: [roca,agua], detail: zapdosDet,moves: [picotazo,giroFuego,agilidad,ataqueAereo]);

List<Pokemon> pokemons = [
      bulbasaur,
      ivysaur,
      venusaur,
      charmander,
      charmeleon,
      charizard,
      squirtle,
      wartortle,
      blastoise,
      pikachu,
      raichu,
      articuno,
      zapdos,
      moltres
];