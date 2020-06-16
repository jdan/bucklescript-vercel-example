let layout ?(title="Page") ?(livereload=false) contents =
  let livereload_script =
    if livereload
    then
      "<script>
        fetch('//localhost:45678/wait')
          .then(() => window.location.reload())
      </script>"
    else ""
  in Printf.sprintf "
    <html>
      <head>
        <title>%s</title>
        <link rel=\"stylesheet\" href=\"https://unpkg.com/98.css\">
        <style>
          body { margin: 0; padding: 0; }
        </style>
      </head>
      <body>%s %s</body>
    </html>
  " title contents livereload_script

let center contents =
  Printf.sprintf
    "<div style=\"
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center\"
    >%s</div>"
    contents


let window ?(title="New window") body =
  Printf.sprintf
    "<div class=\"window\">
      <div class=\"title-bar\">
        <div class=\"title-bar-text\">%s</div>
        <div class=\"title-bar-controls\">
          <button aria-label=\"Minimize\"></button>
          <button aria-label=\"Maximize\"></button>
          <button aria-label=\"Close\"></button>
        </div>
      </div>
      <div class=\"window-body\">%s</div>
    </div>" title body

let row ?(align="left") body =
  let style =
    if align = "right"
    then "style=\"justify-content: flex-end\""
    else ""
  in
  Printf.sprintf
    "<section class=\"field-row\" %s>
      %s
    </section>"
    style
    body

let p contents =
  Printf.sprintf "<p>%s</p>" contents

let button contents =
  Printf.sprintf "<button>%s</button>" contents
