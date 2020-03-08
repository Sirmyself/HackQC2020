//import 'package:flutter/cupertino.dart';
import 'package:parcoursa/Interfaces/IChargeDonnees.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

import '../Balise.dart';
import '../Trajet.dart';

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
  List<Balise> getBalisesArt([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]) { //from https://www.donneesquebec.ca/recherche/fr/dataset/art-public/resource/ddbb2a46-0995-4256-ae44-7d68ffc5b651
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


/*
  balises.add(new Balise(431965, 16604, "", "", "start", ));
  balises.add(new Balise(431965, 16604, "", "", "start", ));
  balises.add(new Balise(431965, 16604, "", "", "start", ));
 */

  Trajet getTrajetPublic([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]) {
    List<Polyline> chemin = new List<Polyline>();

    List<LatLng> pointsChemin1 = new List<LatLng>();
    pointsChemin1.add(LatLng(48.43451, -68.51899));
    pointsChemin1.add(LatLng(48.43365, -68.52023));
    pointsChemin1.add(LatLng(48.43392, -68.52066));
    pointsChemin1.add(LatLng(48.43352, -68.52127));
    pointsChemin1.add(LatLng(48.43409, -68.52218));
    Polyline chemin1 = new Polyline(
        polylineId: PolylineId("public1"),
        geodesic: true,
        points: pointsChemin1,
        width: 7,
        color: Colors.blue);

    List<LatLng> pointsChemin2 = new List<LatLng>();
    pointsChemin2.add(LatLng(48.43409, -68.52218));
    pointsChemin2.add(LatLng(48.43423, -68.52230));
    pointsChemin2.add(LatLng(48.43462, -68.52291));
    pointsChemin2.add(LatLng(48.43478, -68.52319));
    pointsChemin2.add(LatLng(48.43480, -68.52323));
    pointsChemin2.add(LatLng(48.43502, -68.52290));
    pointsChemin2.add(LatLng(48.43510, -68.52290));
    pointsChemin2.add(LatLng(48.43522, -68.52275));
    pointsChemin2.add(LatLng(48.43570, -68.52353));
    pointsChemin2.add(LatLng(48.43605, -68.52411));
    pointsChemin2.add(LatLng(48.43641, -68.52476));
    pointsChemin2.add(LatLng(48.43682, -68.52551));
    pointsChemin2.add(LatLng(48.43788, -68.52741));
    pointsChemin2.add(LatLng(48.43804, -68.52768));
    pointsChemin2.add(LatLng(48.43819, -68.52748));
    pointsChemin2.add(LatLng(48.43907, -68.52624));
    pointsChemin2.add(LatLng(48.43939, -68.52584));
    pointsChemin2.add(LatLng(48.43990, -68.52487));
    pointsChemin2.add(LatLng(48.44086, -68.52300));
    pointsChemin2.add(LatLng(48.44110, -68.52264));
    pointsChemin2.add(LatLng(48.44132, -68.52235));
    pointsChemin2.add(LatLng(48.44221, -68.52109));
    pointsChemin2.add(LatLng(48.44163, -68.52013));
    Polyline chemin2 = new Polyline(
        polylineId: PolylineId("public2"),
        geodesic: true,
        points: pointsChemin2,
        width: 7,
        color: Colors.blue);

    List<LatLng> pointsChemin3 = new List<LatLng>();
    pointsChemin3.add(LatLng(48.44163, -68.52013));
    pointsChemin3.add(LatLng(48.44221, -68.52109));
    pointsChemin3.add(LatLng(48.44237, -68.52087));
    pointsChemin3.add(LatLng(48.44260, -68.52128));
    pointsChemin3.add(LatLng(48.44272, -68.52147));
    pointsChemin3.add(LatLng(48.44273, -68.52154));
    pointsChemin3.add(LatLng(48.44273, -68.52158));
    Polyline chemin3 = new Polyline(
        polylineId: PolylineId("public3"),
        geodesic: true,
        points: pointsChemin3,
        width: 7,
        color: Colors.blue);

    List<LatLng> pointsChemin4 = new List<LatLng>();
    pointsChemin4.add(LatLng(48.44273, -68.52158));
    pointsChemin4.add(LatLng(48.44273, -68.52150));
    pointsChemin4.add(LatLng(48.44268, -68.52141));
    pointsChemin4.add(LatLng(48.44248, -68.52107));
    pointsChemin4.add(LatLng(48.44237, -68.52087));
    pointsChemin4.add(LatLng(48.44227, -68.52101));
    pointsChemin4.add(LatLng(48.44220, -68.52111));
    pointsChemin4.add(LatLng(48.44175, -68.52173));
    pointsChemin4.add(LatLng(48.44291, -68.52354));
    pointsChemin4.add(LatLng(48.44340, -68.52435));
    pointsChemin4.add(LatLng(48.44362, -68.52450));
    pointsChemin4.add(LatLng(48.44383, -68.52458));
    pointsChemin4.add(LatLng(48.44427, -68.52466));
    pointsChemin4.add(LatLng(48.44481, -68.52474));
    pointsChemin4.add(LatLng(48.44496, -68.52487));
    pointsChemin4.add(LatLng(48.44511, -68.52504));
    pointsChemin4.add(LatLng(48.44523, -68.52522));
    pointsChemin4.add(LatLng(48.44652, -68.52731));
    pointsChemin4.add(LatLng(48.44726, -68.52628));
    pointsChemin4.add(LatLng(48.44764, -68.52686));
    pointsChemin4.add(LatLng(48.44794, -68.52731));
    pointsChemin4.add(LatLng(48.44797, -68.52727));
    pointsChemin4.add(LatLng(48.44798, -68.52726));
    pointsChemin4.add(LatLng(48.44800, -68.52726));
    pointsChemin4.add(LatLng(48.44803, -68.52726));
    pointsChemin4.add(LatLng(48.44804, -68.52726));
    pointsChemin4.add(LatLng(48.44807, -68.52729));
    pointsChemin4.add(LatLng(48.44822, -68.52704));
    pointsChemin4.add(LatLng(48.44853, -68.52701));
    pointsChemin4.add(LatLng(48.44882, -68.52745));
    pointsChemin4.add(LatLng(48.44885, -68.52751));
    Polyline chemin4 = new Polyline(
        polylineId: PolylineId("public4"),
        geodesic: true,
        points: pointsChemin4,
        width: 7,
        color: Colors.blue);

    chemin.add(chemin1);
    chemin.add(chemin2);
    chemin.add(chemin3);
    chemin.add(chemin4);
    Trajet trajet = new Trajet(chemin);
    return trajet;
  }

  @override
  Trajet getTrajetArt([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]) {
    List<Polyline> chemin = new List<Polyline>();

    List<LatLng> pointsChemin1 = new List<LatLng>();
    pointsChemin1.add(LatLng(48.43763, -68.53733));
    pointsChemin1.add(LatLng(48.43791, -68.53676));
    pointsChemin1.add(LatLng(48.43806, -68.53621));
    pointsChemin1.add(LatLng(48.43828, -68.53610));
    pointsChemin1.add(LatLng(48.43852, -68.53599));
    pointsChemin1.add(LatLng(48.43865, -68.53578));
    pointsChemin1.add(LatLng(48.43893, -68.53568));
    pointsChemin1.add(LatLng(48.43920, -68.53568));
    pointsChemin1.add(LatLng(48.43934, -68.53578));
    pointsChemin1.add(LatLng(48.43956, -68.53602));
    pointsChemin1.add(LatLng(48.43971, -68.53610));
    pointsChemin1.add(LatLng(48.43976, -68.53613));
    pointsChemin1.add(LatLng(48.43990, -68.53615));
    pointsChemin1.add(LatLng(48.44014, -68.53628));
    pointsChemin1.add(LatLng(48.44036, -68.53624));
    pointsChemin1.add(LatLng(48.44044, -68.53620));
    Polyline chemin1 = new Polyline(
        polylineId: PolylineId("Art1"),
        geodesic: true,
        points: pointsChemin1,
        width: 7,
        color: Colors.blue);

    List<LatLng> pointsChemin2 = new List<LatLng>();
    pointsChemin2.add(LatLng(48.44044,-68.53620));
    pointsChemin2.add(LatLng(48.44062,-68.53611));
    Polyline chemin2 = new Polyline(
        polylineId: PolylineId("Art2"),
        geodesic: true,
        points: pointsChemin2,
        width: 7,
        color: Colors.blue);

    List<LatLng> pointsChemin3 = new List<LatLng>(); 
    pointsChemin3.add(LatLng(48.44062,-68.53611));
    pointsChemin3.add(LatLng(48.44077,-68.53605));
    Polyline chemin3 = new Polyline(
        polylineId: PolylineId("Art3"),
        geodesic: true,
        points: pointsChemin3,
        width: 7,
        color: Colors.blue);    

    List<LatLng> pointsChemin4 = new List<LatLng>();
    pointsChemin4.add(LatLng(48.44077,-68.53605));
    pointsChemin4.add(LatLng(48.44105,-68.53594));
    Polyline chemin4 = new Polyline(
        polylineId: PolylineId("Art4"),
        geodesic: true,
        points: pointsChemin4,
        width: 7,
        color: Colors.blue); 


    List<LatLng> pointsChemin5 = new List<LatLng>();
    pointsChemin5.add(LatLng(48.44105,-68.53594));
    pointsChemin5.add(LatLng(48.44116,-68.53589));
    Polyline chemin5 = new Polyline(
        polylineId: PolylineId("Art5"),
        geodesic: true,
        points: pointsChemin5,
        width: 7,
        color: Colors.blue); 

    chemin.add(chemin1);
    chemin.add(chemin2);
    chemin.add(chemin3);
    chemin.add(chemin4);
    chemin.add(chemin5);
    Trajet trajet = new Trajet(chemin);
    return trajet;
  }
}