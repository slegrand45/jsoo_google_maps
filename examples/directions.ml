module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_directions"))
      (fun () -> assert false)
  in
  let chicago = jsnew GM.latLng(Js.number_of_float 41.85, Js.number_of_float (-87.65), Js.undefined) in
  let indianapolis = jsnew GM.latLng(Js.number_of_float 39.79, Js.number_of_float (-86.14), Js.undefined) in

  let options = GM.emptyMapOptions() in
  let () = options##center <- chicago in
  let () = options##scrollwheel <- Js._false in
  let () = options##zoom <- Js.number_of_float 7. in
  let map = jsnew GM.map(element, options) in

  let options = GM.emptyDirectionsRendererOptions() in
  let () = options##map <- map in
  let directions_display = jsnew GM.directionsRenderer(Js.def options) in
  let request = GM.emptyDirectionsRequest() in
  let place_indianapolis = GM.emptyPlace() in
  let () = place_indianapolis##location <- indianapolis in
  let () = request##destination <- place_indianapolis in
  let place_chicago = GM.emptyPlace() in
  let () = place_chicago##location <- chicago in
  let () = request##origin <- place_chicago in
  let () = request##travelMode <- GM.travelMode##_DRIVING in
  let directions_service = jsnew GM.directionsService () in
  let f response status =
    if status = GM.directionsStatus##_OK then
      directions_display##setDirections(response)
  in
  directions_service##route(request, Js.wrap_callback f)