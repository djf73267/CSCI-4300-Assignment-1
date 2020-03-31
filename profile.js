window.onload = function(){
    document.getElementById("submit").addEventListener("click", func_1);
   
    document.getElementById("first_name").value = localStorage.getItem("first_name");
    document.getElementById("last_name").value = localStorage.getItem("last_name");
    document.getElementById("email").value = localStorage.getItem("email");
    document.getElementById("DOB").value = localStorage.getItem("DOB");
}

function func_1(){
   var n = document.getElementById("first_name").value;
   var m = document.getElementById("last_name").value;
   var o = document.getElementById("email").value; 
   var p = document.getElementById("DOB").value;
  
  
    if (n.length < 1 && m.length < 1)
    {
        window.alert("Field is blank");
        return false;
    }
    else {
        localStorage.setItem("first_name",n);
        localStorage.setItem("last_name",m);
        localStorage.setItem("email",o);
        localStorage.setItem("DOB",p);

       
    }
}

