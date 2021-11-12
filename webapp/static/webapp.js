/*
 * webapp.js
 * A.J. Ristino & Julian Bowers
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
window.onload = initialiaze;

function initialize() {
    loadArtistSelector();

    let element = document.getElementById('artist_selector');
    if (element) {
        element.onchange = onArtistsSelectionChanged;
    }
}

function getAPIBaseURL() {
    let baseURL = window.location.protocol
        + '//' + window.location.hostname
        + ':' + window.location.port
        + '/api';
    return baseURL;
}

function onRandomAlbumButton() {
   let url = getAPIBaseURL() + '/album/';

   fetch(url, { method: 'get' })
       .then((response) => response.json())
       .then(function (album) {
           let str = '';
           str += '<h2>' + album['artist']
               + ' | ' + album['name']
               + ' | ' + album['genres']
               + ' | ' + album['descs']
               + ' | ' + album['avrating']
               + ' | ' + album['numratings']
               + ' | ' + album['numreviews']
               + '</h2>';
           let newHTML = document.getElementById('random_album');
           if (newHTML) {
                newHTML.innerHTML = str;
           }
       })
       .catch(function (error) {
            console.log(error);
        });
}

