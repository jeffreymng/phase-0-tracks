console.log("This script is working.");

var body = document.getElementsByTagName("body")
body[0].style.backgroundColor = "green"

function changeFontStyle(event) {
  event.target.style.fontStyle = "italic";
}

var paragraph = document.getElementsByTagName("p");
paragraph[0].addEventListener("click", changeFontStyle);