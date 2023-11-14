function seconnecter(){
    var login = prompt("Donner votre nom d'utilisateur");
    var password = prompt("Entrer votre mot de passe et que ça saute");
    if( login=="admin" && password == "admin") {
        document.write("Bienvenue, veuillez avoir le plaisir d'accéder au site utilisateur : "  +login);
}

else {
     alert("Acces refusé désolé, un intrervenant va vous contacter");   
}

}
function seconnecter2(){
    window.location.href='identification.html'
}
