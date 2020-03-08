import 'dart:math';

Utilisateur utilisateur = Utilisateur();

List<Offre> offresActives = [
  new Offre("Aux Bienfaits", chiffreRandom(), "Obtenez un (1) bébé cornet à l\'achat d' 'un sundae."),
  new Offre("Cantine Le Rallye", chiffreRandom(), "Obtenez un hot-dog gratuitement à l\'achat d\'un trio poutine.")
];

class Utilisateur {
  String fullName = "Jérôme Beaulieu";
  String status = "Niveau: Débutant";
  String bio =
      "\"Hi, I am a Freelance developer working for hourly basis. If you wants to contact me to build your product leave a message.\"";
  String points = "173";
  String lieuVisites = "24";
  String sucess = "5";

  List<Offre> offres = [new Offre("Golf Les Saules", chiffreRandom(), "2 pour 1 sur entrée")];
}

class Offre
{
  String titre;
  int point;
  String description;

  Offre(this.titre, this.point, this.description);
}

int chiffreRandom() {
  var randomizer = new Random(); 
  int min = 500, max = 1000;
  return min + randomizer.nextInt(max - min);
}
