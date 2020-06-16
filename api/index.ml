open Page;;

let default _ res =
  window ~title:"bucklescript-vercel-example" (
    p "Hello, world!" ^
    row ~align:"right" (
      button "OK" ^
      button "Cancel"
    )
  )
  |> center
  |> layout ~title:"bucklescript + vercel" ~livereload:true
  |> Server.send res
