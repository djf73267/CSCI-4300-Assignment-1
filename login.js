
window.onload = function(){
	registerNavBar();
    document.getElementById("submit").addEventListener("click", func_1);
	if(this.localStorage.getItem("bool") == "signed_in"){
        window.location.replace("about.html");
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

function func_1(){
	/* There is no way for users to use this function as of right now." */
   var n = document.getElementById("uname_login").value;
   var m = document.getElementById("password").value;
    if (n.length < 1 || m.length < 1)
    {
        window.alert("One or More Fields are Blank");
        return false;
    }
    else {
        window.alert("Incorrect Credentials");
	}
	
}
function func_3() {
    localStorage.setItem("bool","signed_in");
  }
