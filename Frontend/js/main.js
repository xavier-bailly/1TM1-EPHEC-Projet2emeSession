"use strict";
//FORMULAIRE
document.addEventListener('DOMContentLoaded', initPage);
document.addEventListener('DOMContentLoaded', biere);


let liste = '';

/**
 * Simple fonction de teste
 */
function presenterResultats(){
    console.log("envoie des données en cours.");
}

/***********************************************************************************************/

/**
 * Envoie les données du formulaire
 */
function initPage(){
    let formulaireUti = document.getElementById("beerForm");
    formulaireUti.addEventListener("submit", soumettreRequete);
}

/***********************************************************************************************/

/**
 * Soumet la requete avec les différentes informations du formulaire pour les enregistrer dans la table
 *
 * @param event le clique sur le bouton de type submit
 */
function soumettreRequete(event){
    event.preventDefault();
    let formulaire = this;
    let prenom = formulaire.prenom.value;
    let nom = formulaire.nom.value;;
    let tel = formulaire.tel.value;
    let ville = formulaire.ville.value;
    envoyerRequete(prenom, nom, tel, ville);
}

/***********************************************************************************************/

/**
 * Envoie la requete en utilisant le webservice souhaité
 *
 * @param prenom prenom de la personne inscrite
 * @param nom de la personne inscrite
 * @param adresse adresse de la personne inscrite
 * @param email adresse email de la personne inscrite
 * @param ville ville ou habite de la personne inscrite
 */
function envoyerRequete(prenom, nom, tel, ville){
    let xhr = new XMLHttpRequest();
    xhr.open("get", "http://localhost:80/nouvelUti?prenom=" + prenom + "&nom=" + nom + "&tel=" + tel + "&ville=" + ville, true);
    xhr.onload=
        function traiterReponse(){
            let formulaire = document.getElementById("beerForm");
            formulaire.innerHTML += "<p><strong>Vous &ecirctes bien inscrit !</strong></p>";
        }
    xhr.send();
}

/***********************************************************************************************/
//MENU

/**
 * Demande via le service précisé ci-dessous les différentes pièces du menu + appel à une fonction pour traiter la réponse donnée
 *
 */
function biere(){
    let xhr = new XMLHttpRequest();
    xhr.open("get", "http://localhost:80/piecesMenu", true);
    xhr.onload =  traiterReponse;
    //let menu = genererMenu(reponse);
    xhr.send();
}

/***********************************************************************************************/

/**
 * Transforme la réponse en texte adapté en js. Appel 2 autres fonctions pour traiter le tableau d'objet
 *
 */
function traiterReponse(){
    let reponse = JSON.parse(this.responseText);
    genererMenu(reponse);
    afficherMenu(liste);
    //return reponse;
}

/***********************************************************************************************/

/**
 * Génère le menu composé des pièces pour pouvoir l'afficher dynamiquement en HTML
 *
 * @param tableauObjets tableau d'objet acquis par la fonction JSON.parse
 * @returns {string} retourne le tableau pour pouvoir l'afficher
 */
function genererMenu(tableauObjets){
    if(tableauObjets.length === 0 ) return "<ul></ul>";
    liste = '<ul id="menu">';
    let id = "idpieces";
    let pieces = "pieces";
    let proprietes = Object.keys(tableauObjets[0]);

    for(let objet in tableauObjets) {
        let option = "<li ";
        option += 'id="' + tableauObjets[objet][id] + '">' + tableauObjets[objet][pieces]  + '</li>';
        liste += option;
    }
    liste += "</ul>";

}
/***********************************************************************************************/

/**
 * affiche en HTML le menu
 * 
 * @param tab est le tableau construit grace a la fonction genererMenu
 */

function afficherMenu(tab){
    let menu = document.getElementById("menu");
    menu.innerHTML += tab;
}