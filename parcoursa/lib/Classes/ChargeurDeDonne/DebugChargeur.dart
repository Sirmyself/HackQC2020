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
    balises.add(new Balise(48.4490715309, -68.527177957, "Cegep de Rimouski", "Un des nombreux établissements d'études suppérieures de Rimouski!!"));

    return balises;
  }

  @override
  List<Balise> getBalisesArt() { //from https://www.donneesquebec.ca/recherche/fr/dataset/art-public/resource/ddbb2a46-0995-4256-ae44-7d68ffc5b651
    List<Balise> balises = new List<Balise>();
    balises.add(new Balise(48.4377210186255, -68.5374970178453, "Les bâtisseurs", "Collection d’art public de la Ville de Rimouski. Béton armé coloré dans la masse du moyen d’oxyde de fer", "démarer le parcour", 200));
    balises.add(new Balise(48.4410633548442, -68.5360118385178, "L'allé des sculptures - Première envolée", "Fibre de verre"));
    balises.add(new Balise(48.4412370977451, -68.5359372014246, "L'allé des sculptures - Les trois patineuses", "fibre de verre"));
    balises.add(new Balise(48.4407761937531, -68.5361009245298, "L'allé des sculptures - Couple enjoué", "Attrait touristique et point d'intérêt!!"));
    balises.add(new Balise(48.4404612849461, -68.5362866253372, "L'allé des sculptures - La rencontre sous-marine", "Attrait touristique et point d'intérêt!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a mi sed."));
    balises.add(new Balise(48.4406295680677, -68.5361828950075, "L'allé des sculptures - Jeu aquatique", "Attrait touristique et point d'intérêt!! Sed pharetra nulla sit,consectetur adipiscing elit."));
    
    return balises;
  }

  @override
  List<Balise> getBalisesParc() {
    List<Balise> balises = new List<Balise>();

    return balises;
  }

  //from https://www.donneesquebec.ca/recherche/fr/dataset/sites-patrimoine/resource/a5f938ce-a332-411a-b8d6-ce031b52897d
}