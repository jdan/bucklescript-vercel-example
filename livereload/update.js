#!/usr/bin/env node

// TODO: argv contains the file which updated, use it
require("child_process").execSync("curl localhost:45678/update");
