function calcul_moyenne() 
    { var n1=prompt ( " Donner la première");
    var n2= prompt ("Donner la deuxième note");
    var n3= prompt ("Donner la troisième note:")

    var somme = Number (n1) + Number (n2) + Number (n3) ; 

    document.write ("Voici la somme "+somme+"<br>") ; var moyenne= somme/3;

    document.write ("Voici la moyenne: "+moyenne+"<br>" )

    if (moyenne<10)
    document.write("Vous etes redoublant") ;
    else if (moyenne<14)
    document.write ("Vous êtes Admis, passable !");
    else
    document.write ("Vous êtes Admis, avec mention FELICITATION DU PRESIDENT DE LA REPUBLIQUE.");

    }
function test_age(){
    var age=prompt ( " Quel âge as-tu")
    
 

 if (age<18){
 document.write("Vous etes mineur") 
document.bgcolor="red" 
 }
else { 
    document.write ("Vous etes majeur")

}
}





function simple_affichage() {
    var prenom = prompt ("Quel est votre prénom");
    var nom = prompt ("Quel est votre nom");
    
    document.write("Bonjour  "+prenom+"   "+nom);
    
}

function test_couleur(){
    let c = prompt ("Donner une couleur")
    if(c == "rouge"  || c == "rouge" ){
        document.body.style.background = "red";

}

    else if (c == "bleu"  || c == "Bleu") {
        document.body.style.background = "blue";

    }

    else{
        document.write("Couleur non comprise");
    }

}