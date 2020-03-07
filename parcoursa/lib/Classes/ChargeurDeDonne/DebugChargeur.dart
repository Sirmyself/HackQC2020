import 'package:parcoursa/Interfaces/IChargeDonnees.dart';

import '../Balise.dart';

class DebugChargeur implements IChargeDonnees {
  //à mettre dans la vrai classe si on a le temps
  /*Map _url_interet_art = {
    "RIMOUSKI": "",
    "QUEBEC": 1""
  }*/

  @override
  List<Balise> getBalisesPublic() { //from https://www.donneesquebec.ca/recherche/fr/dataset/lieux-publics/resource/d12a3f0b-6438-432d-bb69-de40736945dc
    List<Balise> balises = new List<Balise>();
    balises.add(new Balise(48.448914, -68.528186, "Paul-Hubert", "Une des nombreuses écoles secondaire de Rimouski!!", "démarer le parcour", 200));
    balises.add(new Balise(48.4338793528, -68.5224824749, "Plaza Arthur-Buies", "Un des nombreux centres d'achats de Rimouski!!"));
    balises.add(new Balise(48.441415978, -68.5204288478, "Colisée Financière SunLife", "Aréna de 4 300 sièges.; Superficie de glace de 85 par 200 pieds.; Possibilité de faire de la marche ou de la course à pied en périphérie des gradins<br/><br/><u>Patinage libre (pour tous) 1,25 \$</u>:; les samedi de 18 h 55 à 19 h 55.; les dimanche"));
    balises.add(new Balise(48.4430723877, -68.5217535943, "Les Galeries GP", "Attrait touristique et point d'intérêt!!"));
    balises.add(new Balise(48.4490715309, -68.527177957, "Cegep de Rimouski", "Une des nombreux établissements d'études suppérieures de Rimouski!!"));

    return balises;
  }

  @override
  List<Balise> getBalisesArt() {
    // TODO: implement getBalisesArt
    return null;
  }
}