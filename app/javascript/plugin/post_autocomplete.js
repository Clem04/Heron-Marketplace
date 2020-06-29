import places from 'places.js';


const postAutocomplete = () => {
  const locationInput = document.getElementById('post_location');
  if (locationInput) {
    places({ container: locationInput });
  }
};

export { postAutocomplete };