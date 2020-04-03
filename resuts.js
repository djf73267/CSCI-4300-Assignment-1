var max = localStorage.getItem("max");

window.onload = function(){
	registerNavBar();
    registerSideBar();
	if(localStorage.getItem("max") != null){
		 document.getElementById("result").innerHTML = "You got The " + localStorage.getItem("max") + "!";
	}else{
		 document.getElementById("result").innerHTML = "Take the test to find out your programmer personality.";
	 }
	if(this.localStorage.getItem("bool") != "signed_in"){
        window.alert("Please make a profile or sign in.");
		window.location.replace("login.html");
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
	window.location = "home.html";
}
function linkAbout() {
	window.location = "about.html";
}
function linkLogin() {
	window.location = "login.html";
}
function linkQuiz() {
	window.location = "quiz.html";
}
function linkResuts() {
	window.location = "resuts.html";
}
function linkProfile() {
	window.location = "profile.html";
}
function signOut() {
	localStorage.clear();
	window.location = "home.html";
}

function registerSideBar() {
	if(this.localStorage.getItem("bool") == "signed_in"){
		document.getElementById("sidebar").innerHTML =
		"<h4>You are now signed in as " + localStorage.getItem("uname") + "." + "</h4>";
	}
}