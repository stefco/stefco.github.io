COLOR_CHANGE_INTERVAL = 100
var h1 = document.getElementsByTagName("h1");
var h2 = document.getElementsByTagName("h2");
var colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"];
function getDifferentRandomColor(text) {
  var i = colors.indexOf(text.style.color);
  i = (i + 1 + Math.floor(Math.random() * (colors.length - 1))) % colors.length;
  return colors[i];
}
function randomColorize(headings) {
  for (var i=0; i<headings.length; i++) {
    headings[i].style.color = getDifferentRandomColor(headings[i]);
  }
}
function randomlyColorizeHeadings() {
  randomColorize(h1);
  randomColorize(h2);
}
window.setInterval(randomlyColorizeHeadings, COLOR_CHANGE_INTERVAL);
