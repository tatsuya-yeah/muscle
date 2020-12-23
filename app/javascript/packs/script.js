
document.getElementById("menubutton").addEventListener("click", function() {
    document.getElementById("menubutton").classList.toggle("active");
    document.getElementById("menu").classList.toggle("active");
    document.getElementById("mask").classList.toggle("active");
})

window.onload = function() {
    document.getElementById("animation-picture1 animation-target").classList.add("show");  
    document.getElementById("animation-picture2 animation-target").classList.add("show"); 
    document.getElementById("top-wrapper-theme1").classList.add("show"); 
    document.getElementById("top-wrapper-theme2").classList.add("show"); 
}

const showElement = document.querySelectorAll(".animation-text");
window.addEventListener("scroll", function() {
    for (let i = 0; i < showElement.length; i++) {
        const getElementDistance = showElement[i].getBoundingClientRect().top + showElement[i].clientHeight * .5;
        if (window.innerHeight > getElementDistance) {
            showElement[i].classList.add("show");
        }
    }
})

const showElement2 = document.querySelectorAll(".animation-box");
window.addEventListener("scroll", function() {
    for (let i = 0; i < showElement2.length; i++) {
        const getElementDistance2 = showElement2[i].getBoundingClientRect().top + showElement2[i].clientHeight * .5;
        if (window.innerHeight > getElementDistance2) {
            showElement2[i].classList.add("show");
        }
    }
})