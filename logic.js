// var myMap = L.map("map", {
//     center: [37.09, -95.71],
//     zoom: 2
//   });
  
//   L.tileLayer("https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}", {
//     attribution: "© <a href='https://www.mapbox.com/about/maps/'>Mapbox</a> © <a href='http://www.openstreetmap.org/copyright'>OpenStreetMap</a> <strong><a href='https://www.mapbox.com/map-feedback/' target='_blank'>Improve this map</a></strong>",
//     tileSize: 512,
//     maxZoom: 18,
//     zoomOffset: -1,
//     id: "mapbox/streets-v11",
//     accessToken: API_KEY
//   }).addTo(myMap);

// Create init event handler
var form = d3.select(".is-preload");
form.on("keypress", init);

// Create the function for the initial data rendering
function init() {

    var myMap = L.map("map", {
        center: [37.09, -95.71],
        zoom: 1
      });
      
      L.tileLayer("https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}", {
        attribution: "© <a href='https://www.mapbox.com/about/maps/'>Mapbox</a> © <a href='http://www.openstreetmap.org/copyright'>OpenStreetMap</a> <strong><a href='https://www.mapbox.com/map-feedback/' target='_blank'>Improve this map</a></strong>",
        tileSize: 512,
        maxZoom: 18,
        zoomOffset: -1,
        id: "mapbox/streets-v11",
        accessToken: "pk.eyJ1IjoicmJsZXZpbmUiLCJhIjoiY2tqenlwd2c2MDhxajJ2cGJwZ2w5YWt1eSJ9.CbH0egXe3ybOBDvV6bhVsw"
      }).addTo(myMap);

    // Read the csv file to get data
    d3.json("GeoCountry.geojson").then(function(data) {
<<<<<<< HEAD

=======
>>>>>>> mk/coding
        console.log(data);

        // Fetch api from flask
        // fetch("https://127.0.0.1:5000/api/v1.0/world", {
        //     method: "GET",
        //     headers: {
        //         "Access-Control-Allow-Origin": "*"
        //     }

        // }).then(function(response) {
        
            // Create a new choropleth layer
            geojson = L.choropleth(data, {
    
                // Define what  property in the features to use
                valueProperty: "title",

                // Set color scale
                scale: ["#fff7f3", "#49006a"],

                // Number of breaks in step range
                steps: 10,

                // q for quartile, e for equidistant, k for k-means
                mode: "q",
                style: {
                // Border color
                color: "#fff",
                weight: 1,
                fillOpacity: 0.8
                },

                // Binding a pop-up to each layer
                onEachFeature: function(feature, layer) {
<<<<<<< HEAD
                layer.bindPopup().on('click', function(ev) {
=======
                layer.bindPopup(feature.properties.name + "<br># of Wines: "
                + feature.properties.title).on('click', function(ev) {
>>>>>>> mk/coding
                    var countrySelect = feature.properties.name;
                    updateTable(countrySelect);
                });
                }
            }).addTo(myMap);

                // Set up the legend
                var legend = L.control({ position: "bottomright" });
                legend.onAdd = function() {
                    var div = L.DomUtil.create("div", "info legend");
                    var limits = geojson.options.limits;
                    var colors = geojson.options.colors;
                    var labels = [];

                    // Add min & max
                    var legendInfo = "<h1>Wines by Country</h1>" +
                        "<div class=\"labels\">" +
                        "<div class=\"min\">" + limits[0] + "</div>" +
                        "<div class=\"max\">" + limits[limits.length - 1] + "</div>" +
                        "</div>";

                    div.innerHTML = legendInfo;

                    limits.forEach(function(limit, index) {
                        labels.push("<li style=\"background-color: " + colors[index] + "\"></li>");
                    });

                    div.innerHTML += "<ul>" + labels.join("") + "</ul>";
                    return div;
                };

            // Adding legend to the map
            legend.addTo(myMap);
        
    });
<<<<<<< HEAD
    idNumber=["Highest Ranked", "Lowest Ranked","Cheapest","Most Expensive"]
    // select the user input field
    // var dropDownMenu = d3.select("#selDataset");
    // dropDownMenu.append("option").text("HighestRated");
    // dropDownMenu.append("option").text("LowestRated");
    // dropDownMenu.append("option").text("MostExpensive");
    // dropDownMenu.append("option").text("Cheapest");
    // dropDownMenu.append("option").text("NewestVintage");
    // dropDownMenu.append("option").text("OldestVintage");
    // let dropdownBtn = document.querySelector('.menu-btn');
    // let menuContent = document.querySelector('.menu-content');
    // dropdownBtn.addEventListener('click',()=>{
    // if(menuContent.style.display===""){
    //     menuContent.style.display="block";
    // } 
    // else {
    //     menuContent.style.display="";
    // }
    // });
=======
>>>>>>> mk/coding
};

var x, i, j, l, ll, selElmnt, a, b, c;

// look for any elements with the class "custom-select":
x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
selElmnt = x[i].getElementsByTagName("select")[0];
ll = selElmnt.length;

// for each element, create a new DIV that will act as the selected item:
a = document.createElement("DIV");
a.setAttribute("class", "select-selected");
a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
x[i].appendChild(a);

// for each element, create a new DIV that will contain the option list:
b = document.createElement("DIV");
b.setAttribute("class", "select-items select-hide");
for (j = 1; j < ll; j++) {

    // for each option in the original select element,
    // create a new DIV that will act as an option item:
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {

        // when an item is clicked, update the original select box,
        // and the selected item:
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
        if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
            y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
        }
        }
        h.click();
    });
    b.appendChild(c);
}
x[i].appendChild(b);
a.addEventListener("click", function(e) {

    // when the select box is clicked, close any other select boxes,
    // and open/close the current select box:
    e.stopPropagation();
    closeAllSelect(this);
    this.nextSibling.classList.toggle("select-hide");
    this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {

// a function that will close all select boxes in the document,
// except the current select box:
var x, y, i, xl, yl, arrNo = [];
x = document.getElementsByClassName("select-items");
y = document.getElementsByClassName("select-selected");
xl = x.length;
yl = y.length;
for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
    arrNo.push(i)
    } else {
    y[i].classList.remove("select-arrow-active");
    }
}
for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
    x[i].classList.add("select-hide");
    }
}
}
// if the user clicks anywhere outside the select box,
// then close all select boxes:
document.addEventListener("click", closeAllSelect);
// Create map event handler
// var mapSelect = d3.select("#map");
// mapSelect.on("click", updateTable);

function updateTable(countrySelect) {

    console.log("here again", countrySelect)

<<<<<<< HEAD
    // dropdown menu to filter table
    let dropdownBtn = document.querySelector('.menu-btn');
    let menuContent = document.querySelector('.menu-content');
    dropdownBtn.addEventListener('click',()=>{
    if(menuContent.style.display===""){
        menuContent.style.display="block";
    } 
    else {
        menuContent.style.display="";
    }
    });
<<<<<<< HEAD

    // Select the input element and get the raw HTML node
    var inputElement = d3.select(".menu-content");

    // Get the value property of the input element
    var dropDown = inputElement.property("value");

    // handle on click event
    d3.select('.menu-content')
    .on('change', function() {

        // Read the csv file to get data
        d3.json(`http://127.0.0.1:5000/api/v1.0/buildtable/${countrySelect}/${dropDown}`).then(function(data) {
            console.log("here we go", data);
        // fetch(`http://127.0.0.1:5000/api/v1.0/buildtable/${countrySelect}`)
        // .then(response => response.json())
        // .then(function(data) {

            var tableData = data;
            console.log("here", tableData)
            // Prevent the page from refreshing
            d3.event.preventDefault();

            // Clear out current contents in the table
            tbody.html("");

            // // Select the input element and get the raw HTML node
            // var inputElement = d3.select(".form-control");

            // // Get the value property of the input element
            // var inputValue = inputElement.property("value");

            // // Filter Data with country equal to input value
            // var filteredData = tableData.filter(wineObject => wineObject.country === inputValue);

            // Get a reference to the table body
            var tbody = d3.select("tbody");

            // Loop through each wine object in the data array
            tableData.forEach((wineObject) => {

=======
=======
    // // dropdown menu to filter table
    // let dropdownBtn = document.querySelector('.menu-btn');
    // let menuContent = document.querySelector('#menu-content');
    // dropdownBtn.addEventListener('click',()=>{
    // if(menuContent.style.display===""){
    //     menuContent.style.display="block";
    // } 
    // else {
    //     menuContent.style.display="";
    // }
    // });
>>>>>>> mk/coding

    // Select the input element and get the raw HTML node
    // var inputElement = d3.select(".menu-content");

    // var x = document.getElementById("menu-content");
    // var i = x.selectedIndex;
    // var dropDown = x.options[i].text;

    // handle on click event
    // d3.select("select")
    // .on('change', function() {

        var dropDown = d3.select('select').property('value');
        // var dropDown = this.options[this.selectedIndex].value

        // var sel = document.getElementById("menu-content");
        // var dropDown= sel.options[sel.selectedIndex].text;
        // var dropDown = eval(d3.select(this).options[this.selectedIndex].text());

        // Get the value property of the input element
        // var dropDown = inputElement.property("value");
        console.log("selection", dropDown)
        // Read the csv file to get data
        d3.json(`http://127.0.0.1:5000/api/v1.0/buildtable/${countrySelect}/${dropDown}`).then(function(tableData) {
            console.log("here we go", tableData);
        // fetch(`http://127.0.0.1:5000/api/v1.0/buildtable/${countrySelect}`)
        // .then(response => response.json())
        // .then(function(data) {

            // Prevent the page from refreshing
            // d3.event.preventDefault();

            // Clear out current contents in the table
            tbody.html("");

            // // Select the input element and get the raw HTML node
            // var inputElement = d3.select(".form-control");

            // // Get the value property of the input element
            // var inputValue = inputElement.property("value");

            // // Filter Data with country equal to input value
            // var filteredData = tableData.filter(wineObject => wineObject.country === inputValue);

            // Get a reference to the table body
            var tbody = d3.select("tbody");

            // Loop through each wine object in the data array
            tableData.forEach((wineObject) => {

>>>>>>> mk/coding
                // Append one table row for each wine object
                var row = tbody.append("tr");

                // Use `Object.entries` and forEach to iterate through keys and values of wine object
                Object.entries(wineObject).forEach(([key, value]) => {

                    // Append one cell per wine object value 
                    var cell = row.append("td");
                    cell.text(value);
                });
            });
        });
    };

    d3.select("select")
    .on('change', updateTable);
