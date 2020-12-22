
document.getElementById("menubutton").addEventListener("click", function() {
    document.getElementById("menubutton").classList.toggle("active");
    document.getElementById("menu").classList.toggle("active");
    document.getElementById("mask").classList.toggle("active");
})

window.onload = function() {
    document.getElementById("animation-picture1 animation-target").classList.add("show");  
    document.getElementById("animation-picture2 animation-target").classList.add("show"); 
}
