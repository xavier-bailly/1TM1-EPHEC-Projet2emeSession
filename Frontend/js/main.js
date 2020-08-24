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
