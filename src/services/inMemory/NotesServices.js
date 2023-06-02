/**
 * Project: 15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Filename: NotesServices.js
 * Course: 15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Description: Module 0200 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation
 * Description: Module 0201 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Pendahuluan Hapi Plugin dan Data Validation
 * Description: Module 0202 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Hapi Plugin
 * Description: Module 0203 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Hapi Plugin
 * Description: Module 0204 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Mendaftarkan Plugin pada Hapi Server
 * Description: Module 0205 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Plugin pada Notes API- Mengenal Struktur Proyek yang Digunakan
 * Description: Module 0206 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menyiapkan Proyek
 * Description: Module 0207 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat inMemory NotesService
 * Description: Module 0208 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Router Notes
 * Description: Module 0209 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Fungsi Handler Notes
 * Description: Module 0210 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Menggunakan Router dan Handler pada Plugin Notes
 * Description: Module 0211 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Mendaftarkan Notes Plugin di Server Hapi
 * Description: Module 0212 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Memahami Kata Kunci this
 * Description: Module 0213 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Data Validation
 * Description: Module 0214 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Data Validation Menggunakan Joi
 * Description: Module 0215 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API
 * Description: Module 0216 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Menyiapkan Skenario Pengujian
 * Description: Module 0217 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Membuat Notes Schema dan Validator
 * Description: Module 0218 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Menggunakan NoteValidator pada Plugin Note
 * Description: Module 0219 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Custom Exceptions- Mengenal Jenis Kesalahan Yang Terjadi di Transaksi HTTP
 * Description: Module 0220 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Custom Exceptions- Membuat Custom Error
 * Description: Module 0221 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Deploy Perubahan Hapi Plugin dan Data Validation
 * Directory: D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Reference Link:
 *  - https://www.dicoding.com/academies/271/tutorials/14387
 *  - https://www.dicoding.com/academies/271/tutorials/14392
 *  - https://www.dicoding.com/academies/271/tutorials/14397
 *  - https://www.dicoding.com/academies/271/tutorials/14402
 *  - https://www.dicoding.com/academies/271/tutorials/14407
 *  - https://www.dicoding.com/academies/271/tutorials/14412
 *  - https://www.dicoding.com/academies/271/tutorials/14417
 *  - https://www.dicoding.com/academies/271/tutorials/14422
 *  - https://www.dicoding.com/academies/271/tutorials/14427
 *  - https://www.dicoding.com/academies/271/tutorials/14432
 *  - https://www.dicoding.com/academies/271/tutorials/14433
 *  - https://www.dicoding.com/academies/271/tutorials/14437
 *  - https://www.dicoding.com/academies/271/tutorials/14442
 *  - https://www.dicoding.com/academies/271/tutorials/14447
 *  - https://www.dicoding.com/academies/271/tutorials/14452
 *  - https://www.dicoding.com/academies/271/tutorials/14457
 *  - https://www.dicoding.com/academies/271/tutorials/14462
 *  - https://www.dicoding.com/academies/271/tutorials/14467
 *  - https://www.dicoding.com/academies/271/tutorials/14472
 *  - https://www.dicoding.com/academies/271/tutorials/14477
 *  - https://www.dicoding.com/academies/271/tutorials/14482
 * Repository:
 *  - https://github.com/ygautomo/15-dicoding--0401-music-app-v0
 * 
 * Author: Yugo Gautomo
 * Status: Final March 01, 2023
 * Version 01
 */

// Program Title
console.log("15 Dicoding -- Back-End Developer- Fundamental Back-End");
console.log("Module 0207 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat inMemory NotesService");
console.log("NotesServices.js");
console.log("");

// 00 Hapi Plugin dan Data Validation- Membuat inMemory NotesService
console.log("00 Hapi Plugin dan Data Validation- Membuat inMemory NotesService");

// Get nanoid assignment object (Nano ID Node.js Module destructuring) variable- const variable declaration statement
const { nanoid } = require('nanoid');

// Get class InvariantError assignment object (custom InvariantError module destructuring) variable- const variable declaration statement
const InvariantError = require('../../exceptions/InvariantError');

// Get class NotFoundError assignment object (custom NotFoundError module destructuring) variable- const variable declaration statement
const NotFoundError = require('../../exceptions/NotFoundError');

// Create NotesService object class constructor or class declaration variable- class variable declaration statement
class NotesService {
  constructor() {
    this._notes = [];
  };

  addNote({ title, tags, body }) {
    const id = nanoid(16);
    const createdAt = new Date().toISOString();
    const updatedAt = createdAt;

    const newNote = {
      title, tags, body, id, createdAt, updatedAt
    };

    this._notes.push(newNote);
    console.log('Create New Notes', id);
    const isSuccess = this._notes.filter((note) => note.id === id).length > 0;

    if (!isSuccess) {
      // throw new Error('Catatan gagal ditambahkan');
      throw new InvariantError('Catatan gagal ditambahkan');
    };

    console.log(`New Notes ${id} is created`);
    return id;
  };

  getAllNotes() {
    return this._notes;
  };

  getNoteById(id) {
    const note = this._notes.filter((n) => n.id === id)[0];

    console.log('Read Notes', id);
    if (!note) {
      // throw new Error('Catatan tidak ditemukan');
      throw new NotFoundError('Catatan tidak ditemukan');
    };

    console.log(`Notes ${id} is read`);
    return note;
  };

  editNoteById( id, { title, tags, body }) {
    const updatedAt = new Date().toISOString();
    const index = this._notes.findIndex((note) => note.id === id);

    console.log('Update Notes', id);
    if (index === -1) {
      // throw new Error('Gagal memperbarui catatan. Id tidak ditemukan');
      throw new NotFoundError('Gagal memperbarui catatan. Id tidak ditemukan');
    };

    console.log(`Notes ${id} is updated`);
    this._notes[index] = {
      ...this._notes[index],
      title,
      tags,
      body,
      updatedAt
    };
  };

  deleteNoteById(id) {
    const index = this._notes.findIndex((note) => note.id === id);

    console.log('Delete Notes', id);
    if (index === -1) {
      // throw new Error('Catatan gagal dihapus. Id tidak ditemukan');
      throw new NotFoundError('Catatan gagal dihapus. Id tidak ditemukan');
    };

    console.log(`Notes ${id} is deleted`);
    this._notes.splice(index, 1);
  };
};

module.exports = NotesService;

// Called by server.js
console.log("NotesService module called by server.js");

// Running Command on Remote VPS Server (Linux)
// Called by server.js
// cd '/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/'
// nodemon ./src/server.js
// npm run start-dev

// Copy file 'NotesServices.js' to Remote VPS Server (Linux) from Local Computer (Ms. PowerShell)
// pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
//   source "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\src\services\inMemory\NotesServices.js" `
//   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/src/services/inMemory/

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
