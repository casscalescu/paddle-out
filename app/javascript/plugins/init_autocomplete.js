import places from 'places.js';

export const initAutoCompleteField = (selector) => {
  var placesAutocomplete = places({
    appId: 'pl0S1BCHOV2L',
    apiKey: 'f6ee5094a791f6a364277c453e586b55',
    container: document.querySelector('#surfboard_location'),
    useDeviceLocation: true
  });
  placesAutocomplete.search();
  placesAutocomplete.on('change', e => console.log(e.suggestion));
};

