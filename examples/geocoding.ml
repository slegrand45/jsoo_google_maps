module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_geocoding"))
      (fun () -> assert false)
  in
  let center = new%js GM.latLng (Js.number_of_float (-34.397)) (Js.number_of_float 150.644) Js.undefined in
  let options = GM.emptyMapOptions() in
  let () = options##.center := center in
  let () = options##.zoom := Js.number_of_float 8. in
  let map = new%js GM.map element options in

  let geocoder = new%js GM.geocoder in

  let geocodeAddress geocoder map =
    let element =
      Js.Opt.get (doc##getElementById(Js.string "demo_geocoding_address"))
        (fun () -> assert false)
    in
    let element = Dom_html.tagged element in
    let element =
      match element with
      | Dom_html.Input v -> v
      | _ -> assert false
    in
    let address = element##.value in
    let geoReq = GM.emptyGeocoderRequest() in
    let () = geoReq##.address := address in
    let f results status =
      if status = GM.geocoderStatus##._OK then (
        let r =
          Js.Optdef.get (Js.array_get results 0)
            (fun () -> assert false)
        in
        let () = map##setCenter r##.geometry##.location in
        let options = GM.emptyMarkerOptions() in
        let () = options##.map := map in
        let () = options##.position := r##.geometry##.location in
        let _ = new%js GM.marker (Js.def options) in
        ()
      ) else (
        Dom_html.window##alert(Js.string "Geocoder error!") ;
        Firebug.console##debug status
      )
    in
    geocoder##geocode geoReq (Js.wrap_callback f)
  in
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_geocoding_submit"))
      (fun () -> assert false)
  in
  let _ = Dom.addEventListener element (Dom.Event.make "click")
      (Dom.handler (fun _ -> geocodeAddress geocoder map; Js._false))
      Js._false
  in
  ()