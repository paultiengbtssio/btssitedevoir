function Facture() {
    var a =document.getElementById("D").value;
    var b =document.getElementById("E").value;
    var c = Number(a)*Number(b);
    t3.value=(c)

    var d =document.getElementById("G").value;
    var e =document.getElementById("H").value;
    var f = Number(d)*Number(e);
    t45.value=(f)

    var h =document.getElementById("J").value;
    var j =document.getElementById("K").value;
    var k = Number(h)*Number(j);
    L.value=(k)

    var somme = Number(k)+Number(c)+Number(f);
    t5.value=(somme)

}

