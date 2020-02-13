import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

// For the default version
// const algoliasearch = require('algoliasearch');
// For the default version
// import algoliasearch from 'algoliasearch';
// For the search only version
// import algoliasearch from 'algoliasearch/lite';

initMapbox();

// = require algolia/v3/algoliasearch.min
// const client = algoliasearch('LIXGYYS2BR', 'd885d5ad8f54f84224b386f5e02a285b');
// const index = client.initIndex('dev_VINTAGE-VANS');
// const searchInput = document.getElementById('search_query')
// console.log(searchInput);
// index.search(searchInput, { hitsPerPage: 10, page: 0 })
//   .then(function searchDone(content) {
//     console.log(content)
//   })
//   .catch(function searchFailure(err) {
//     console.error(err);
//   });

// algoliasearch();

