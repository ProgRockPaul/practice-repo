var pageCounter = "1";
var animalContainer = document.getElementById("animal-info");
var btn = document.getElementById('btn');

btn.addEventListener("click", function(){
  var ourRequest = new XMLHttpRequest();
  ourRequest.open('GET', 'https://learnwebcode.github.io/json-example/animals-' + pageCounter + '.json');
  ourRequest.onload = function() {
    if (ourRequest.status >= 200 && ourRequest.status < 400)
    var ourData = JSON.parse(ourRequest.responseText);
    // var ourData = ourRequest.responseText;
    // The XMLHttpRequest.responseText property returns a DOMString
    // that contains the response to the request as text, or
    //  null if the request was unsuccessful or has not yet been sent.
    renderHTML(ourData);
    } else {
      console.log("Server Returned an Error");
    }

  };

  ourRequest.onerror = function() {
    console.log("Connection Error");
  };

  ourRequest.send();
  pageCounter++;
  if (pageCounter > 3) {
    btn.classList.add('hide-me');
  }
});

function renderHTML(data) {
  var htmlString = "";

  for (i = 0; i < data.length; i++) {
    htmlString += "<p>" + data[i].name + " is a " + data[i].species + " that likes to eat ";

    for (ii = 0; ii < data[i].foods.likes.length; ii++) {
      if (ii == 0) {
        htmlString += data[i].foods.likes[ii];
      } else {
        htmlString += " and " + data[i].foods.likes[ii];

      }
    }

    htmlString += " and dislikes ";

    for (ii = 0; ii < data[i].foods.dislikes.length; ii++) {
      if (ii == 0) {
        htmlString += data[i].foods.dislikes[ii];
      } else {
        htmlString += " and " + data[i].foods.dislikes[ii];

      }
    }

    htmlString += ".</p>";
  }

  animalContainer.insertAdjacentHTML("beforeend", htmlString);
}
