module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_rectangle_event"))
      (fun () -> assert false)
  in
  let center = new%js GM.latLng (Js.number_of_float 44.5452) (Js.number_of_float (-78.5389)) Js.undefined in
  let options = GM.emptyMapOptions() in
  let () = options##.center := center in
  let () = options##.zoom := Js.number_of_float 9. in
  let map = new%js GM.map element options in

  let boundSW = new%js GM.latLng (Js.number_of_float 44.490) (Js.number_of_float (-78.649)) Js.undefined in
  let boundNE = new%js GM.latLng (Js.number_of_float 44.599) (Js.number_of_float (-78.443)) Js.undefined in
  let bounds = new%js GM.latLngBounds (Js.def boundSW) (Js.def boundNE) in
  let options = GM.emptyRectangleOptions() in
  let () = options##.bounds := bounds in
  let () = options##.editable := Js._true in
  let () = options##.draggable := Js._true in
  let rectangle = new%js GM.rectangle (Js.def options) in
  let () = rectangle##setMap map in

  let options = GM.emptyInfoWindowOptions() in
  let info_window = new%js GM.infoWindow (Js.def options) in

  let show_new_rect(_) =
    let ne = rectangle##getBounds##getNorthEast in
    let sw = rectangle##getBounds##getSouthWest in
    let ne_lat = ne##lat##toString in
    let ne_lng = ne##lng##toString in
    let sw_lat = sw##lat##toString in
    let sw_lng = sw##lng##toString in
    let contentString = "<b>Rectangle moved.</b><br>"
                        ^ "New north-east corner: " ^ (Js.to_string ne_lat) ^ ", " ^ (Js.to_string ne_lng) ^ "<br>"
                        ^ "New south-west corner: " ^ (Js.to_string sw_lat) ^ ", " ^ (Js.to_string sw_lng)
    in
    let () = info_window##setContent (Js.string contentString) in
    let () = info_window##setPosition ne in
    info_window##_open (Js.def map) (Js.def(new%js GM.mvcObject))
  in

  rectangle##addListener (Js.string "bounds_changed") (Js.wrap_callback show_new_rect)
