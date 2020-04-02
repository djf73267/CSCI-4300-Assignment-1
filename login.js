
window.onload = function(){
    document.getElementById("submit").addEventListener("click", func_1);
    document.getElementById("logout").addEventListener("click", func_2);
   
    
    if(this.localStorage.getItem("bool") == "signed_in"){
        this.func_3();
    }
   
}

function func_1(){
   var n = document.getElementById("uname_login").value;
   var m = document.getElementById("password").value;
  
  
  
    if (n.length < 1 && m.length < 1)
    {
        window.alert("Field is blank");
        return false;
    }
    else {
        if(n == localStorage.getItem("uname")&& m == localStorage.getItem("password")){
           func_3();
        }
        else {
            window.alert("Incorrect Credentials");
            return false;
        }

       
    }
    
}
function func_2(){
    localStorage.clear();
    
}
function func_3() {
   
    localStorage.setItem("bool","signed_in")
    document.getElementById("sidebar").innerHTML = "<h4>You are now signed in.</h4>"
    
  }
