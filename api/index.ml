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
  |> with_live_reload
  |> layout ~title:"bucklescript + vercel"
  |> Server.send res
