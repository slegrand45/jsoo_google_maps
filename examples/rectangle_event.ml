let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_rectangle_event"))
      (fun () -> assert false)
  in
  let center = jsnew GoogleMaps.latLng(Js.number_of_float 44.5452, Js.number_of_float (-78.5389), Js.undefined) in
  let options = GoogleMaps.emptyMapOptions() in
  let () = options##center <- center in
  let () = options##zoom <- Js.number_of_float 9. in
  let map = jsnew GoogleMaps.map(element, options) in

  let boundSW = jsnew GoogleMaps.latLng(Js.number_of_float 44.490, Js.number_of_float (-78.649), Js.undefined) in
  let boundNE = jsnew GoogleMaps.latLng(Js.number_of_float 44.599, Js.number_of_float (-78.443), Js.undefined) in
  let bounds = jsnew GoogleMaps.latLngBounds(Js.def boundSW, Js.def boundNE) in
  let options = GoogleMaps.emptyRectangleOptions() in
  let () = options##bounds <- bounds in
  let () = options##editable <- Js._true in
  let () = options##draggable <- Js._true in
  let rectangle = jsnew GoogleMaps.rectangle(Js.def options) in
  let () = rectangle##setMap(map) in

  let options = GoogleMaps.emptyInfoWindowOptions() in
  let info_window = jsnew GoogleMaps.infoWindow(Js.def options) in

  let show_new_rect(_) =
    let ne = rectangle##getBounds()##getNorthEast() in
    let sw = rectangle##getBounds()##getSouthWest() in
    let ne_lat = ne##lat()##toString() in
    let ne_lng = ne##lng()##toString() in
    let sw_lat = sw##lat()##toString() in
    let sw_lng = sw##lng()##toString() in
    let contentString = "<b>Rectangle moved.</b><br>"
      ^ "New north-east corner: " ^ (Js.to_string ne_lat) ^ ", " ^ (Js.to_string ne_lng) ^ "<br>"
      ^ "New south-west corner: " ^ (Js.to_string sw_lat) ^ ", " ^ (Js.to_string sw_lng)
    in
    let () = info_window##setContent(Js.string contentString) in
    let () = info_window##setPosition(ne) in
    info_window##_open(Js.def map, Js.def(jsnew GoogleMaps.mvcObject()))
  in

  rectangle##addListener(Js.string "bounds_changed", Js.wrap_callback show_new_rect)
