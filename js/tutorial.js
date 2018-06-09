// <--Init--> //
var $ = document;
const createP = ()=>{
  let p = document.createElement("p");
  p.innerHTML = "hello,world";
  $.body.append(p);
}
function *createElementP() {
  yield createP();
}
createElementP().next();
createElementP().next();
createElementP().next();
createElementP().next();

// <--Selections--> //
var paragraphs = document.getElementsByTagName("p");
for (var i = 0; i < paragraphs.length; i++) {
  var paragraph = paragraphs.item(i);
  paragraph.style.setProperty("color", "white", null);
}

d3.select("body").style("background-color", "#555");
d3.selectAll("p").style("color", "white");

// <--Dynamic Properties--> //
//-d3.selectAll("p").style("color", function() {
//-  return "hsl(" + Math.random() * 360 + ",100%,50%)";
//-});
//-d3.selectAll("p").style("color", function(d, i){
//-  return i % 2 ? "#fff" : "#555";
//-})
//-d3.selectAll("p")
//-  .data([4, 8, 15, 16, 23, 42])
//-  .style("font-size", function(d) { return d + "px"; });

d3.select("body")
  .selectAll("p")
  .data([4, 8, 15, 16, 23, 42])
  .enter().append("p")
  .text(function(d) { return "I’m number " + d + "!"; });

var p = d3.select("body")
          .selectAll("p")
          .data([4, 8, 15, 16, 23, 42])
          .text(function(d) { return d; });

// Enter…
p.enter().append("p")
 .text(function(d) { return d; });

// Exit…
p.exit().remove();

// Trannsitions
d3.select("body").transition()
  .duration(2500)
  .style("background-color", "black")
 
d3.selectAll("circle")
  .style("height", "100px")
  .style("width", "100px")
  .transition()
  .duration(750)
  .delay(function(d, i) { return i * 10; })
  .attr("r", function(d) { return Math.sqrt(d * 0.3); });
