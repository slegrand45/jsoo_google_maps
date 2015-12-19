module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_markers"))
      (fun () -> assert false)
  in
  let lat_lng = jsnew GM.latLng(Js.number_of_float (-25.363), Js.number_of_float 131.044, Js.undefined) in

  let options = GM.emptyMapOptions() in
  let () = options##center <- lat_lng in
  let () = options##scrollwheel <- Js._false in
  let () = options##zoom <- Js.number_of_float 4. in
  let map = jsnew GM.map(element, options) in

  let options = GM.emptyMarkerOptions() in
  let () = options##map <- map in
  let () = options##position <- lat_lng in
  let () = options##title <- Js.string "Hello World!" in
  jsnew GM.marker(Js.def options)