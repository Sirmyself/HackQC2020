import 'package:flutter/cupertino.dart';
import 'package:parcoursa/Interfaces/IChargeDonnees.dart';

import '../Balise.dart';

class DebugChargeur implements IChargeDonnees {

  @override
  List<Balise> getBalisesPublic([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]) {
    List<Balise> balises = new List<Balise>();

    switch(pVille) {
      case VILLE_SUPPORTE.RIMOUSKI: { //from https://www.donneesquebec.ca/recherche/fr/dataset/lieux-publics/resource/d12a3f0b-6438-432d-bb69-de40736945dc
          balises.add(new Balise(48.434771, -68.519395, "Paul-Hubert", "Une des nombreuses écoles secondaire de Rimouski!!", "démarrer le parcour", 200, "assets/paul.jpg"));
          balises.add(new Balise(48.4338793528, -68.5224824749, "Plaza Arthur-Buies", "Un des nombreux centres d'achats de Rimouski!!"));
          balises.add(new Balise(48.441415978, -68.5204288478, "Colisée Financière SunLife", "Aréna de 4 300 sièges.; Superficie de glace de 85 par 200 pieds.; Possibilité de faire de la marche ou de la course à pied en périphérie des gradins<br/><br/><u>Patinage libre (pour tous) 1,25 \$</u>:; les samedi de 18 h 55 à 19 h 55.; les dimanche"));
          balises.add(new Balise(48.4430723877, -68.5217535943, "Les Galeries GP", "Attrait touristique et point d'intérêt!!"));
          balises.add(new Balise(48.4490715309, -68.527177957, "Cegep de Rimouski", "Un des nombreux établissements d'études suppérieures de Rimouski!!"));
      }
      break;
      
      case VILLE_SUPPORTE.QUEBEC:{ //from https://www.donneesquebec.ca/recherche/fr/dataset/vque_14/resource/8902c982-bbb6-4e84-814a-550d094c0bae
        balises.add(new Balise(46.78121912141851, -71.27423910960336, "Université Laval", "Animée par un esprit d’innovation et la recherche de l’excellence, l’Université Laval a, au fil des ans, formé et diplômé plus de 312 000 personnes qui, chacune à leur façon, ont contribué au progrès de leur communauté et de la société.", "études", 500, "assets/universite_1.jpg"));
        balises.add(new Balise(46.78643687491965, -71.28728561967382, "CEGEP de Sainte-Foy", "Le Cégep de Sainte-Foy accueille chaque année près de 10 000 étudiants, que ce soit à l’enseignement régulier ou à la formation continue."));
        balises.add(new Balise(46.790931, -71.285139, "Laser Game Evolution", "Laser Tag"));
        balises.add(new Balise(46.79210028470518, -71.27609919318222, "Centre de glisse Myrand", "Centres de plein air"));
        balises.add(new Balise(46.796065849485004, -71.25725171291256, "Centre de loisirs de Saint-Sacrement", "Centres de loisirs"));
      }
      break;

      case VILLE_SUPPORTE.MONTREAL: //https://www.donneesquebec.ca/recherche/fr/dataset/vmtl-lieux-publics-climatises/resource/ee441632-5530-4840-9bf7-cd4a3e7ac81c
        break;
    }

    return balises;
  }

  @override
  List<Balise> getBalisesArt([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]) {
    List<Balise> balises = new List<Balise>();

    switch(pVille) {
      case VILLE_SUPPORTE.RIMOUSKI: { //from https://www.donneesquebec.ca/recherche/fr/dataset/art-public/resource/ddbb2a46-0995-4256-ae44-7d68ffc5b651
        balises.add(new Balise(48.4377210186255, -68.5374970178453, "Les bâtisseurs", "Collection d’art public de la Ville de Rimouski. Béton armé coloré dans la masse du moyen d’oxyde de fer", "démarer le parcour", 200, "assets/statue_2.jpg"));
        balises.add(new Balise(48.4410633548442, -68.5360118385178, "L'allé des sculptures - Première envolée", "Fibre de verre", "", 100, "assets/statue_3.jpg"));
        balises.add(new Balise(48.4412370977451, -68.5359372014246, "L'allé des sculptures - Les trois patineuses", "fibre de verre", "", 100, "assets/statue_2.jpg"));
        balises.add(new Balise(48.4407761937531, -68.5361009245298, "L'allé des sculptures - Couple enjoué", "Attrait touristique et point d'intérêt!!", "", 100, "assets/statue_4.jpg"));
        balises.add(new Balise(48.4404612849461, -68.5362866253372, "L'allé des sculptures - La rencontre sous-marine", "Attrait touristique et point d'intérêt!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a mi sed.", "", 1000, "assets/statue_2.jpg"));
        balises.add(new Balise(48.4406295680677, -68.5361828950075, "L'allé des sculptures - Jeu aquatique", "Attrait touristique et point d'intérêt!! Sed pharetra nulla sit,consectetur adipiscing elit.", "", 500, "assets/statue_3.jpg"));
      } 
      break;
      
      case VILLE_SUPPORTE.QUEBEC: { //non trouvée
        balises = null;
      }
      break;
      
      case VILLE_SUPPORTE.MONTREAL: { // from https://www.donneesquebec.ca/recherche/fr/dataset/vmtl-art-public-information-sur-les-oeuvres-de-la-collection-municipale/resource/18705524-c8a6-49a0-bca7-92f493e6d329
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
        balises.add(new Balise(431965, 16604, "", "", "start", ));
      }
      break;
    }
    
    
    return balises;
  }

  @override
  List<Balise> getBalisesParc([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]) {
    List<Balise> balises = new List<Balise>();

    switch(pVille) {
      case VILLE_SUPPORTE.RIMOUSKI: { //from https://www.donneesquebec.ca/recherche/fr/dataset/parcs-et-espaces-verts-rim/resource/4d51ea7e-49d7-4c35-a517-18cca1de3d6b
        balises.add(new Balise(48.436888, -68.512581, "Parc rue Monseigneur-Langis", "Voisinage", "", 100, "assets/parc_1.jpg"));
        balises.add(new Balise(48.440695, -68.516400, "Complexe sportif Guillaume-Leblanc", "Complexe sportif municipal"));
        balises.add(new Balise(48.437355, -68.520630, "Parc Lepage", "Parc Urbain", "fw9320fc", 450));
        balises.add(new Balise(48.431965, -68.516604, "Parc avenue Sirois", "Voisinage"));
      }
      break;
      
      case VILLE_SUPPORTE.QUEBEC: { //from https://www.donneesquebec.ca/recherche/fr/dataset/vque_32/resource/8520a7d4-ab21-4e46-ae31-eeb090e3204c
        balises.add(new Balise(46.780515, -71.358434, "Parc Robitaille", "De La Peltrie, 1585 Rue", "start", 140, "asstets/parc-robitaillejpg"));
        balises.add(new Balise(46.774674, -71.369718, "Parc des Primevères", "Super parc familial"));
        balises.add(new Balise(46.772400, -71.364024, "Parc de Campigny", "Diverses activités sont organisées à ce parc."));
        balises.add(new Balise(46.766196, -71.362635, "Parc des Sources", "Parc tout près de l'école privée Les sources."));
        balises.add(new Balise(46.766167, -71.348043, "Parc Chaudière", "Parc."));
      }
      break;
      
      case VILLE_SUPPORTE.MONTREAL: //from https://www.donneesquebec.ca/recherche/fr/dataset/vmtl-grands-parcs-parcs-d-arrondissements-et-espaces-publics/resource/0c0ad27c-b98d-42d8-908f-8458fb350ff0

        break;
    }


    return balises;
  }
}

/*
  balises.add(new Balise(431965, 16604, "", "", "start", ));
  balises.add(new Balise(431965, 16604, "", "", "start", ));
  balises.add(new Balise(431965, 16604, "", "", "start", ));
 */