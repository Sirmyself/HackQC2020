class Profil {
  String nomUtilisateur;
  String nom;
  String villeResidence;
  List succesTermines = [false, false, false];

  Profil(String nomUtilisateur, String nom, String villeResidence)
  {
    this.nomUtilisateur = nomUtilisateur;
    this.nom = nom;
    this.villeResidence = villeResidence;
  }
}