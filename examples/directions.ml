let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_directions"))
      (fun () -> assert false)
  in
  let chicago = jsnew GoogleMaps.latLng (Js.number_of_float 41.85, Js.number_of_float (-87.65), Js._false) in
  let indianapolis = jsnew GoogleMaps.latLng (Js.number_of_float 39.79, Js.number_of_float (-86.14), Js._false) in

  let options = GoogleMaps.emptyMapOptions() in
  let () = options##center <- chicago in
  let () = options##scrollwheel <- Js._false in
  let () = options##zoom <- Js.number_of_float 7. in
  let map = jsnew GoogleMaps.map(element, options) in

  let options = GoogleMaps.emptyDirectionsRendererOptions() in
  let () = options##map <- map in
  let directions_display = jsnew GoogleMaps.directionsRenderer(options) in
  let request = GoogleMaps.emptyDirectionsRequest() in
  let place_indianapolis = GoogleMaps.emptyPlace() in
  let () = place_indianapolis##location <- indianapolis in
  let () = request##destination <- place_indianapolis in
  let place_chicago = GoogleMaps.emptyPlace() in
  let () = place_chicago##location <- chicago in
  let () = request##origin <- place_chicago in
  let () = request##travelMode <- GoogleMaps.travelMode##_DRIVING in
  let directions_service = jsnew GoogleMaps.directionsService () in
  let f response status =
    if status = GoogleMaps.directionsStatus##_OK then
      directions_display##setDirections(response)
  in
  directions_service##route(request, Js.wrap_callback f)