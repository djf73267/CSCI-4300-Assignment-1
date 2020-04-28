var a = 0;
var b = 0;
var c = 0;
var d = 0;
var max = null;

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

    temp = document.forms["ppquiz"]["text"].value;
    if(temp == "a"){
        b++;
    }else{
        a++;
        c++;
        d++;
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
    increment(temp);

    temp = document.forms["ppquiz"]["because"].value;
    increment(temp);

    
    if(a > b && a > c && a > d){
        max = "Code Cowboy";
    }else if(b > a && b > c && b > d){
        max = "Ninja";
    }else if(c > a && c > b && c > d){
        max = "Magician";
    }else if(d > a && d > b && d > c){
        max = "Ruler";
    }else{
        max = "Code Cowboy";
    }
    localStorage.setItem("max", max);
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

window.onload = function(){
	registerNavBar();
    registerSideBar();
	if(this.localStorage.getItem("bool") != "signed_in"){
		window.location.replace("login.jsp");
    }
}

function registerNavBar() {
	document.getElementById("logo").onclick = linkHome;
	var divs = document.getElementById("navbar").children;
	divs[0].onclick = linkAbout;
	divs[1].onclick = linkLogin;
	if(this.localStorage.getItem("bool") == "signed_in"){
		divs[1].children[0].innerHTML = "Sign Out";
		divs[1].onclick = signOut;
		divs[2].setAttribute("class", "item");
		divs[2].onclick = linkQuiz;
        divs[3].setAttribute("class", "item");
		divs[3].onclick = linkResuts;
        divs[4].setAttribute("class", "item");
		divs[4].onclick = linkProfile;
	}
}
function linkHome() {
	window.location = "home.jsp";
}
function linkAbout() {
	window.location = "about.jsp";
}
function linkLogin() {
	window.location = "login.jsp";
}
function linkQuiz() {
	window.location = "quiz.jsp";
}
function linkResuts() {
	window.location = "resuts.jsp";
}
function linkProfile() {
	window.location = "profile.jsp";
}
function signOut() {
	localStorage.clear();
	window.location = "home.jsp";
}

function registerSideBar() {
	if(this.localStorage.getItem("bool") == "signed_in"){
		document.getElementById("sidebar").innerHTML =
		"<h4>You are now signed in as " + localStorage.getItem("uname") + "." + "</h4>";
	}
}
