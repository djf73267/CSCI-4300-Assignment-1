window.onload = function(){
    document.getElementById("submit").addEventListener("click", func_1);
   
    document.getElementById("uname").value = localStorage.getItem("uname");
    document.getElementById("psw").value = localStorage.getItem("psw");
   
}

function func_1(){
   var n = document.getElementById("uname").value;
   var m = document.getElementById("psw").value;
  
  
  
    if (n.length < 1 && m.length < 1)
    {
        window.alert("Field is blank");
        return false;
    }
    else {
        localStorage.setItem("uname",n);
        localStorage.setItem("psw",m);

       
    }
}
