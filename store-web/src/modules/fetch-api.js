import fetch from 'isomorphic-fetch';
// import axios from 'axios';
require('es6-promise').polyfill();

export default function fetchApi(method, url, data) {
  const body = method.toLowerCase() === 'get' ? {} : {body: JSON.stringify(data)}
  return fetch(url, {
    method,
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'X-Requested-With': 'XMLHttpRequest'
    },
    credentials: 'same-origin',
    ...body,
  }).then(res => res.json())                
}

// async function fetchApi(method, url, data) {
//   const body = method.toLowerCase() === 'get' ? {} : {body: JSON.stringify(data)}

//   const response = await fetch(url, {
//     method,
//     headers: {
//       'Accept': 'application/json',
//       'Content-Type': 'application/json',
//       'X-Requested-With': 'XMLHttpRequest'
//     },
//     credentials: 'same-origin',
//     ...body,
//   })

//   const prod = await response.json();
//   // .then(res => res.json())  
//   return prod;
// }


// export default fetchApi;