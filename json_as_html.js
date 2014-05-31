// write a function that takes a json tree and displays it as
// nested lists in html
// completed May 31 2014

// var treeUl = $('#TreeUl'); // <ul id="tree"></ul>

function renderJsonTree(json) {

  var treeString = "";

  for (var key in json) {
    treeString += "<li>" + key + "<ul>";
    for (var i = 0; i < json[key].length; i++) {
      var value = json[key][i];
      if ( typeof(value) === "string" ) {
        treeString += "<li>" + value + "</li>";
      } else {
        treeString += renderJsonTree(value);
      }
    }
    treeString += "</ul></li>";
  }

  return treeString;

}

// treeUl.append(renderJsonTree(input));