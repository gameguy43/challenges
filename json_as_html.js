// write a function that takes a json tree and displays it as
// nested lists in html

// var treeUl = $('#TreeUl'); // <ul id="tree"></ul>

function renderJsonTree(json) {

  var treeString = "";

  // for each key in the json hash
    // add the key to its parent list
    // for each of the values in its array
      // if it's a string, add it to the key's list
      // if it's a hash, run renderJsonTree(hash)

  for (var key in json) {
    treeString += "<li>";
    treeString += key;
    treeString += "<ul>";
    for (var i = 0; i < json[key].length; i++) {

    }
    treeString += "</ul>";
    treeString += "</li>";
  }

  return treeString

}

// treeUl.append(renderJsonTree(input));