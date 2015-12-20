open Lwt.Infix

let demo () =
  let doc = Dom_html.document in
  let _ = Base_maps.demo doc in
  let _ = Styled_maps.demo doc in
  let _ = Satellite.demo doc in
  let _ = Directions.demo doc in
  let _ = Markers.demo doc in
  let _ = Info_window.demo doc in
  let _ = Rectangle_event.demo doc in
  let _ = Earthquake.demo doc in
  let _ = Georss.demo doc in
  ()

let main _ =
  try
    demo () ;
    Lwt.return ()
  with
  | e -> Firebug.console##debug("EXCEPTION"); Firebug.console##debug(e); raise e

let _ = Lwt_js_events.onload () >>= main
