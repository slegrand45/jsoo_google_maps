let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_base_maps"))
      (fun () -> assert false)
  in
  let options = GoogleMaps.emptyMapOptions() in
  let lat_lng = jsnew GoogleMaps.latLng (Js.number_of_float (-34.397), Js.number_of_float 150.644, Js._false) in
  let () = options##center <- lat_lng in
  let () = options##scrollwheel <- Js._false in
  let () = options##zoom <- Js.number_of_float 8. in
  jsnew GoogleMaps.map(element, options)