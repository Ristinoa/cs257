/*
 * webapp.js
 * Author: A.J. Ristino
 * 11 November, 2021
 */

window.onload = initialize;

function initialize() {
    let element = document.getElementById('album_random');
    if (element) {
        element.onclick = onRandomAlbumChanged;
    }
    let element2 = document.getElementById('advsearch');
    if (element2) {
        element2.onclick = advsearchActivate;
    }
}

function getAPIBaseURL() {
    let baseURL = window.location.protocol
        + '//' + window.location.hostname
        + ':' + window.location.port
        + '/api';
    return baseURL;
}

/* Below function is for the gimmick on the homepage */

function onRandomAlbumChanged() {
   let url = getAPIBaseURL() + '/album/';

   fetch(url, { method: 'get' })
       .then((response) => response.json())
       .then(function (album) {
           let str = '';
           str += '<h2>' + album['ranking']
               + '</h2>' + '<p>' + album['artist']
               + ' | ' + album['name']
               + ' | ' + album['genres']
               + ' | ' + album['descs']
               + ' | ' + album['avrating']
               + ' | ' + album['numratings']
               + ' | ' + album['numreviews']
               + '</p>';
           let newHTML = document.getElementById('random_album');
           if (newHTML) {
                newHTML.innerHTML = str;
           }
       })
       .catch(function (error) {
            console.log(error);
        });
}

/* this next one is the real showstopper */

function advsearchActivate() {

/* first, construct the url with proper variables */

    let rankingLower = document.getElementById('ranking_lower').value;
    let rankingUpper = document.getElementById('ranking_upper').value;
    let artistName = document.getElementById('artist_name').value;
    let albumName = document.getElementById('album_name').value;
    let genres = document.getElementById('genres').value;
    let releaseYear = document.getElementById('release_year').value;
    let descs = document.getElementById('descs').value;
    let avratingLower = document.getElementById('avrating_lower').value;
    let avratingUpper = document.getElementById('avrating_upper').value;
    let numRatingLower = document.getElementById('numrating_lower').value;
    let numRatingUpper = document.getElementById('numrating_upper').value;
    let numReviewLower = document.getElementById('numreview_lower').value;
    let numReviewUpper = document.getElementById('numreview_upper').value;
    let url = getAPIBaseURL() + '/advsearch'
                + '?ranking_lower=' + rankingLower
                + '&ranking_upper=' + rankingUpper
                + '&artist_name=' + artistName
                + '&album_name=' + albumName
                + '&genres=' + genres
                + '&release_year=' + releaseYear
                + '&descs=' + descs
                + '&avrating_lower=' + avratingLower
                + '&avrating_upper=' + avratingUpper
                + '&numrating_lower=' + numRatingLower
                + '&numrating_upper=' + numRatingUpper
                + '&numreview_lower=' + numReviewLower
                + '&numreview_upper=' + numReviewUpper;

/* then, use a get method to ping the URL */

        fetch(url, {method: 'get'})

        .then((response) => response.json())

/* process the response from the URL */

        .then(function(advsearch) {
             var tableBody='';
             for (var k = 0; k < advsearch.length; k++) {
                 tableBody += '<tr>';

                 tableBody += '<td>' + advsearch[k] + '</td>';

                 tableBody += '</tr>';
                 
             }
/* display the results as a table on the advanced search page!*/

             var resultsTableElement = document.getElementById('results_table');
             if (resultsTableElement) {
                 resultsTableElement.innerHTML = tableBody;
             }
         }) 

          .catch(function(error) {
             console.log(error);
         });
 
}

