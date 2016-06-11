COLOR_CHANGE_INTERVAL = 100
var h1 = document.getElementsByTagName("h1");
var h2 = document.getElementsByTagName("h2");
function colorize(headers, color) {
  for (var i=0; i<headers.length; i++) {
    headers[i].style.color = color
  }
}
var colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"];
var i = 0;
function getRandomColor() {
  // this avoids color repeats
  i = (i + 1 + Math.floor(Math.random() * (colors.length - 1))) % colors.length;
  return colors[i];
}
function randomColorize(headers) {
  for (var i=0; i<headers.length; i++) {
    headers[i].style.color = getRandomColor();
  }
}
function randomlyColorizeHeaders() {
  randomColorize(h1);
  randomColorize(h2);
}
window.setInterval(randomlyColorizeHeaders, COLOR_CHANGE_INTERVAL);
