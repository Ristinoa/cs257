/*
 * webapp.js
 * A.J. Ristino
 * 11 November, 2021
 */

/* NOTE: This is a very rough draft, mostly
 * based on the code by Professor Ondich.
 * For this reason, and for the reason that 
 * I'm not 100% sure on the syntax of how 
 * all of this works, there was some
 * guess and checking with prof. O's 
 * sample code.
 */
window.onload = initialize;

function initialize() {
    let element = document.getElementById('album_random');
    if (element) {
        element.onclick = onRandomAlbumChanged;
    }
    let element2 = document.getElementById('advsearch');
    if (element2) {
        element.onclick = advsearchActive;
    }
}

function getAPIBaseURL() {
    let baseURL = window.location.protocol
        + '//' + window.location.hostname
        + ':' + window.location.port
        + '/api';
    return baseURL;
}

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
function advsearch() {
    /* 
    This was painful.
    */

    let rankingLower = document.getElementbyID('ranking_lower').value;
    let rankingUpper = document.getElementbyID('ranking_upper').value;
    let artistName = document.getElementbyID('artist_name').value;
    let albumName = document.getElementById('album_name').value;
    let genres = document.getElementbyID('genres').value;
    let releaseYear = document.getElementbyID('release_year').value;
    let descs = document.getElementbyID('descs').value;
    let avratingLower = document.getElementbyID('avrating_lower').value;
    let avratingUpper = document.getElementbyID('avrating_upper').value;
    let numRatingsLower = document.getElementbyID('numratings_lower').value;
    let numRatingsUpper = document.getElementbyID('numratings_upper').value;
    let numReviewsLower = document.getElementbyID('numreviews_lower').value;
    let numReviewsUpper = document.getElementbyID('numreviews_upper').value;
    let url = getAPIBaseURL() + '/advsearch'
                + '?ranking_lower=' + rankingLower
                + '&ranking_upper=' + rankingLower
                + '&artist_name=' + artistName
                + '&album_name=' + albumName
                + '&genres=' + genres
                + '&release_year=' + releaseYear
                + '&descs=' + descs
                + '&avrating_lower=' + avratingLower
                + '&avrating_upper=' + avratingUpper
                + '&numratings_lower=' + numRatingsLower
                + '&numratings_upper=' + numRatingsUpper
                + '&numreviews_lower=' + numReviewslower
                + '&numreviews_lower=' + numReviewslower;

    fetch(url, {method: 'get'}
        .then((response) => response.json())

        .then(function(advsearch) {
             var tableBody='';
             for (var g = 0; g < advsearch.length; k++) {
                 tableBody += '<tr>';

                 tablebody += '<td>' + advsearch[k]['ranking'];
                 tablebody += '<td>' + advsearch[k]['artist'];
                 tablebody += '<td>' + advsearch[k]['name'];
                 tablebody += '<td>' + advsearch[k]['genres'];
                 tablebody += '<td>' + advsearch[k]['date'];
                 tablebody += '<td>' + advsearch[k]['descs'];
                 tablebody += '<td>' + advsearch[k]['avrating'];
                 tablebody += '<td>' + advsearch[k]['numratings'];
                 tablebody += '<td>' + advsearch[k]['numreviews'];

                 tableBody += '</tr>';
                 
             }
             var resultsTableElement = document.getElementByID('results_table');
             if (resultsTableElement) {
                 resultsTableElement.innerHTML = tableBody;
             }
         });
        

          .catch(function(error) {
             console.log(error);
         });
 
}

