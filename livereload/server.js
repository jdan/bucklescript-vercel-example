const http = require("http");
const EventEmitter = require("events");
const emitter = new EventEmitter();

http
  .createServer((req, res) => {
    if (req.url === "/wait") {
      console.log("[livereload.js] waiting...");
      res.setHeader("Access-Control-Allow-Origin", "*");
      emitter.once("update", () => res.end("ok"));
    } else if (req.url === "/update") {
      console.log("[livereload.js] emitting update");
      emitter.emit("update");
      res.end("ok");
    }
  })
  .listen(45678);
