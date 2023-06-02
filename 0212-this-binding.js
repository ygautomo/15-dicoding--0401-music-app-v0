/**
 * Project: 15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Filename: 0212-this-binding.js
 * Course: 15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Description: Module 0212 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Memahami Kata Kunci this
 * Directory: D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Reference Link:
 * - https://www.dicoding.com/academies/271/tutorials/14437
 * Repository:
 *  - N/A
 * 
 * Author: Yugo Gautomo
 * Status: Final March 01, 2023
 * Version 01
 */

// Program Title
console.log("15 Dicoding -- Back-End Developer- Fundamental Back-End");
console.log("Module 0212 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Memahami Kata Kunci this");
console.log("0212-this-binding.js");
console.log("");

// 00 Hapi Plugin dan Data Validation- Memahami Kata Kunci this
console.log("00 Hapi Plugin dan Data Validation- Memahami Kata Kunci this");

// Create Game object class constructor or class declaration variable- class variable declaration statement
class Game {
  constructor(name) {
    this._name = name;
    this.loadingStuff = this.loadingStuff.bind(this);
  };

  loadingStuff() {
    console.log('Memuat komponen permainan ...');
    console.log(this);
    console.log(`Permainan ${this._name} akan segera dimulai!`);
  };
};

// Create gamePlayer anonymous arrow function expression object variable- const variable declaration statement
const gamePlayer = (game) => ({
  play: game.loadingStuff
});

// Create runner anonymous arrow function expression object variable- const variable declaration statement
const runner = () => {
  const game = new Game('Catur');
  gamePlayer(game).play();
};

runner();

// Running Command
// - Google Chrome Console
// - Javascript Playground (https://playcode.io)
// - Javascript Playground (https://www.tutorialspoint.com/codingground.htm)

// References:
// - Dicoding, Notes App Front End (http://notesapp-v1.dicodingacademy.com)
// - ESLint, JavaScript Code Analysis Tools (https://eslint.org)
// - ESLint, JavaScript Code Analysis Tools, Airbnb JavaScript Style Guide (https://github.com/airbnb/javascript)
// - ESLint, JavaScript Code Analysis Tools, Google JavaScript Style Guide (https://google.github.io/styleguide/jsguide.html)
// - ESLint, JavaScript Code Analysis Tools, JavaScript Standard Style Guide (https://standardjs.com)
// - hapi, Node.js Web Framework (https://hapi.dev)
// - hapi, Node.js Web Framework, Plugins (https://hapi.dev/plugins)
// - JavaScript MDN Web Docs, References, HTTP, Cross-Origin Resource Sharing (CORS) (https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)
// - JavaScript MDN Web Docs, References, HTTP, HTTP request methods (https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)
// - JavaScript MDN Web Docs, References, JavaScript, Reference, Expressions and operators, Destructuring assignment (https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment)
// - JavaScript MDN Web Docs, References, JavaScript, Reference, Standard built-in objects, Function, Function.prototype.bind() (https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind)
// - Nano ID, JavaScript Unique String Generatot (https://github.com/ai/nanoid)
// - Node Package Manager (NPM) (https://www.npmjs.com)
// - Node Package Manager (NPM), ESLint (https://www.npmjs.com/package/eslint)
// - Node Package Manager (NPM), npx (https://www.npmjs.com/package/npx)
// - Node Package Manager (NPM), hapi (https://www.npmjs.com/package/@hapi/hapi)
// - Node Package Manager (NPM), joi (https://joi.dev)
// - Node Package Manager (NPM), Nano ID (https://www.npmjs.com/package/nanoid)
// - Node Package Manager (NPM), nodemon (https://www.npmjs.com/package/nodemon)
// - Node.js (https://nodejs.org/en)
// - Node.js, Documentation, v18.16.0. API (https://nodejs.org/dist/latest-v18.x/docs/api)
// - Node.js, Documentation, v18.16.0. API, HTTP (https://nodejs.org/dist/latest-v18.x/docs/api/http.html)
// - nodemon, Node.js Tools (https://nodemon.io)
// - Smashing Magazine, Blog Article, Taming this In JavaScript With Bind Operator e(https://www.smashingmagazine.com/2018/10/taming-this-javascript-bind-operator)
// - Ubuntu Manuals (https://manpages.ubuntu.com)
