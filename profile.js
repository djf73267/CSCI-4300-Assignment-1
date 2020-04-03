window.onload = function(){
	registerNavBar();
	registerSideBar();
    document.getElementById("submit").addEventListener("click", func_1);
    document.getElementById("first_name").value = localStorage.getItem("first_name");
    document.getElementById("last_name").value = localStorage.getItem("last_name");
    document.getElementById("email").value = localStorage.getItem("email");
    document.getElementById("DOB").value = localStorage.getItem("DOB");
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

function func_1(){
   var n = document.getElementById("first_name").value;
   var m = document.getElementById("last_name").value;
   var o = document.getElementById("email").value; 
   var p = document.getElementById("DOB").value;
  
  
    if (n.length < 1 || m.length < 1)
    {
        window.alert("Must Register First and Last Name");
        return false;
    }
    else {
        localStorage.setItem("first_name",n);
        localStorage.setItem("last_name",m);
        localStorage.setItem("email",o);
        localStorage.setItem("DOB",p);

       
    }
}

