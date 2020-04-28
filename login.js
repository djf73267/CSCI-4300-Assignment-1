window.onload = function(){
	registerNavBar();
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

function login(){
	
}