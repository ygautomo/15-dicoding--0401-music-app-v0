/**
 * Project: 15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Filename: handler.js
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
 *  - N/A
 * 
 * Author: Yugo Gautomo
 * Status: Final March 01, 2023
 * Version 01
 */

// Program Title
console.log("15 Dicoding -- Back-End Developer- Fundamental Back-End");
console.log("Module 0209 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Fungsi Handler Notes");
console.log("handler.js");
console.log("");

// 00 Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Fungsi Handler Notes
console.log("00 Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Fungsi Handler Notes");

// Get class ClientError assignment object (custom ClientError module destructuring) variable- const variable declaration statement
const ClientError = require('../../exceptions/ClientError');

// Create NotesHandler object class constructor or class declaration variable- class variable declaration statement
class NotesHandler {
  constructor(service, validator) {
    this._service = service;
    this._validator = validator;

    this.postNoteHandler = this.postNoteHandler.bind(this);
    this.getNotesHandler = this.getNotesHandler.bind(this);
    this.getNoteByIdHandler = this.getNoteByIdHandler.bind(this);
    this.putNoteByIdHandler = this.putNoteByIdHandler.bind(this);
    this.deleteNoteByIdHandler = this.deleteNoteByIdHandler.bind(this);
  };

  // class method postNoteHandler(request, h)
  postNoteHandler(request, h) {
    try {
      this._validator.validateNotePayload(request.payload);
      const { title = 'untitled', tags, body } = request.payload;
      const noteId = this._service.addNote({ title, body, tags });
      const response = h.response({
        // error: 'false',
        status: 'success',
        message: 'Catatan berhasil ditambahkan',
        data: {
          noteId
        }
      });

      response.code(201);
      // response.header('Access-Control-Allow-Origin', '*');
      return response;
    } catch (error) {
      if (error instanceof ClientError) {
        const response = h.response({
          // error: 'true',
          status: 'fail',
          message: error.message
        });

        response.code(error.statusCode);
        // response.header('Access-Control-Allow-Origin', '*');
        return response;
      };

      // Server Error !
      const response = h.response({
        // error: 'true',
        status: 'error',
        message: 'Maaf, terjadi kegagalan pada server kami.'
      });

      response.code(500);
      console.error(error);
      // response.header('Access-Control-Allow-Origin', '*');
      return response;
    };
  };

  // class method getNotesHandler()
  getNotesHandler() {
    const notes = this._service.getAllNotes();

    return {
      // error: 'false',
      status: 'success',
      data: {
        notes
      }
    };
  };

  // class method getNoteByIdHandler(request, h)
  getNoteByIdHandler(request, h) {
    try {
      const { id } = request.params;
      const note = this._service.getNoteById(id);

      return {
        // error: 'false',
        status: 'success',
        data: {
          note
        }
      };
    } catch (error) {
      if (error instanceof ClientError) {
        const response = h.response({
          // error: 'true',
          status: 'fail',
          message: error.message
        });

        response.code(error.statusCode);
        // response.header('Access-Control-Allow-Origin', '*');
        return response;
      };
 
      // Server Error !
      const response = h.response({
        // error: 'true',
        status: 'error',
        message: 'Maaf, terjadi kegagalan pada server kami.'
      });

      response.code(500);
      console.error(error);
      // response.header('Access-Control-Allow-Origin', '*');
      return response;
    };
  };

  // class method putNoteByIdHandler(request, h)
  putNoteByIdHandler(request, h) {
    try {
      this._validator.validateNotePayload(request.payload);
      const { id } = request.params;
      this._service.editNoteById(id, request.payload);

      const response = h.response({
        // error: 'false',
        status: 'success',
        message: 'Catatan berhasil diperbarui'
      });

      response.code(200);
      // response.header('Access-Control-Allow-Origin', '*');
      return response;
    } catch (error) {
      if (error instanceof ClientError) {
        const response = h.response({
          // error: 'true',
          status: 'fail',
          message: error.message
        });

        response.code(error.statusCode);
        // response.header('Access-Control-Allow-Origin', '*');
        return response;
      };

      // Server Error !
      const response = h.response({
        // error: 'true',
        status: 'error',
        message: 'Maaf, terjadi kegagalan pada server kami.'
      });

      response.code(500);
      console.error(error);
      // response.header('Access-Control-Allow-Origin', '*');
      return response;
    };
  };

  // class method deleteNoteByIdHandler()
  deleteNoteByIdHandler(request, h) {
    try {
      const { id } = request.params;
      this._service.deleteNoteById(id);

      const response = h.response({
        // error: 'false',
        status: 'success',
        message: 'Catatan berhasil dihapus'
      });

      response.code(200);
      response.header('Access-Control-Allow-Origin', '*');
      return response;
    } catch (error) {
      if (error instanceof ClientError) {
        const response = h.response({
          // error: 'true',
          status: 'fail',
          message: error.message
        });

        response.code(error.statusCode);
        // response.header('Access-Control-Allow-Origin', '*');
        return response;
      };

      // Server Error !
      const response = h.response({
        // error: 'true',
        status: 'error',
        message: 'Maaf, terjadi kegagalan pada server kami.'
      });

      response.code(500);
      console.error(error);
      // response.header('Access-Control-Allow-Origin', '*');
      return response;
    };
  };
};

module.exports = NotesHandler;

// Called by server.js
console.log("handler module called by server.js");

// Running Command on Remote VPS Server (Linux)
// Called by server.js
// cd '/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/'
// nodemon ./src/server.js
// npm run start-dev

// Copy file 'handler.js' to Remote VPS Server (Linux) from Local Computer (Ms. PowerShell)
// pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
//   source "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\src\api\notes\handler.js" `
//   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/src/api/notes/

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
