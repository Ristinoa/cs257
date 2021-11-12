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
 let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function loadArtistSelector() {
    let url = getAPIBaseURL() + '/artists/';
    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(function(artists) {
        let selectorBody = '';
        for (let k = 0; k < artists.length; k++) {
            let artist = artists[k];
            selectorBody += '<option value="' + artist['id'] + '">'
                                + artist['name']
                                + '</option>\n';
        }

        let selector = document.getElementById('artist_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })
  
    .catch(function(error) {
        console.log(error);
    });
}

function onArtistsSelectionChanged() {
    let artistID = this.value;
    let url = getAPIBaseURL() + '/albums/artist/' + artistID;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(albums) {
        let tableBody = '';
        for (let k = 0; k < albums.length; k++) {
            let album  = albums[k];
            tableBody += '<tr>'
                            + '<td>' + album['name'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let albumsTable = document.getElementById('albums_table');
        if (albumsTable) {
            albumsTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

