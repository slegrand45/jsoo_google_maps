module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_map_geolocation"))
      (fun () -> assert false)
  in
  let center = new%js GM.latLng (Js.number_of_float (-34.397)) (Js.number_of_float 150.644) Js.undefined in

  let options = GM.emptyMapOptions() in
  let () = options##.center := center in
  let () = options##.zoom := Js.number_of_float 6. in
  let map = new%js GM.map element options in

  let options = GM.emptyInfoWindowOptions() in
  let info_window = new%js GM.infoWindow (Js.def options) in

  if (Geolocation.is_supported()) then (
    let geo = Geolocation.geolocation in
    let options = Geolocation.empty_position_options() in
    let () = options##.enableHighAccuracy := true in
    let f_success pos =
      let coords = pos##.coords in
      let latitude = coords##.latitude in
      let longitude = coords##.longitude in
      let latLng = new%js GM.latLng (Js.number_of_float latitude) (Js.number_of_float longitude) Js.undefined in
      map##setCenter latLng ;
      info_window##setPosition map##getCenter ;
      info_window##setContent (Js.string "Location found.") ;
      info_window##_open (Js.def map) (Js.undefined) ;
    in
    let f_error err =
      let msg = err##.message in
      info_window##setPosition map##getCenter ;
      info_window##setContent msg ;
      info_window##_open (Js.def map) (Js.undefined) ;
    in
    geo##getCurrentPosition (Js.wrap_callback f_success) (Js.wrap_callback f_error) options ;
  ) else (
    info_window##setPosition map##getCenter ;
    info_window##setContent (Js.string "Error: Your browser doesn\'t support geolocation.") ;
    info_window##_open (Js.def map) Js.undefined ;
  )
