console.log("The script is running");

function makePhotoDisappear(event){
  event.target.hidden = 'true';
}
var photo = document.getElementById("bell");
photo.addEventListener("click", makePhotoDisappear);

var el = document.getElementById("mainHeading");
el.style.border = "2px solid blue";