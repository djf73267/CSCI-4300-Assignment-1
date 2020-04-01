var a = 0;
var b = 0;
var c = 0;
var d = 0;

function submitForm(){
    var temp = document.forms["ppquiz"]["whitespace"].value;
    if(temp == "a"){
        a++;
        c++;
    }else{
        b++;
        d++;
    }

    temp = document.forms["ppquiz"]["group"].value;
    if(temp == "a"){
        a++;
        b++;
    }else{
        c++;
        d++;
    }

    temp = document.forms["ppquiz"]["plan"].value;
    if(temp == "a"){
        a++;
        b++;
    }else{
        c++;
        d++;
    }

    temp = document.forms["ppquiz"]["speak"].value;
    if(temp == "a"){
        a++;
        d++;
    }else{
        b++;
        c++;
    }


    temp = document.forms["ppquiz"]["drink"].value;
    increment(temp);

    temp = document.forms["ppquiz"]["lang"].value;
    increment(temp);

    temp = document.forms["ppquiz"]["comments"].value;
    increment(temp);

    temp = document.forms["ppquiz"]["start"].value;
    increment(temp);

    temp = document.forms["ppquiz"]["stuck"].value;
    increment(temp);

    temp = document.forms["ppquiz"]["priority"].value;
    increment(temp);

    temp = document.forms["ppquiz"]["because"].value;
    increment(temp);

    var max;
    if(a > b && a > c && a > d){
        max = "Code Cowboy";
    }else if(b > a && b > c && b > d){
        max = "Ninja";
    }else if(c > a && c > b && c > d){
        max = "Magician";
    }else if(d > a && d > b && d > c){
        max = "Ruler";
    }else{
        max = "tie";
    }

    alert(max);
}

function increment(temp){

    if(temp == "a"){
        a++;
    }else if(temp == "b"){
        b++;
    }else if(temp == "c"){
        c++;
    }else{
        d++;
    }
}