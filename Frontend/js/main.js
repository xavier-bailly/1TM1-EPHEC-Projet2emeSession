"use strict";

document.addEventListener('DOMContentLoaded', initPage);
document.addEventListener('DOMContentLoaded', biere);


let liste = '';


function presenterResultats(){
    console.log("envoie des données en cours.");
}

function initPage(){
    let beerForm = document.getElementById("beerForm");
    beerForm.addEventListener("submit", soumettreRequete);
}

function soumettreRequete(event){
    event.preventDefault();
    let formulaire = this;
    let prenom = formulaire.prenom.value;
    let nom = formulaire.nom.value;;
    let tel = formulaire.tel.value;
    let ville = formulaire.ville.value;
    envoyerRequete(prenom, nom, tel, ville);
}
