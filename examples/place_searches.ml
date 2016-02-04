module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_place_searches"))
      (fun () -> assert false)
  in

  let pyrmont = new%js GM.latLng (Js.number_of_float (-33.867)) (Js.number_of_float 151.195) Js.undefined in
  let options = GM.emptyMapOptions() in
  let () = options##.center := pyrmont in
  let () = options##.zoom := Js.number_of_float 15. in
  let map = new%js GM.map element options in
  let info_window = new%js GM.infoWindow Js.undefined in

  let create_marker place =
    let place_loc = place##.geometry##.location in
    let options = GM.emptyMarkerOptions() in
    let () = options##.map := map in
    let () = options##.position := place_loc in
    let marker = new%js GM.marker (Js.def options) in
    let marker' = (marker :> GM._MVCObject Js.t) in
    let f () =
      let () = info_window##setContent place##.name in
      info_window##_open (Js.def map) (Js.def marker')
    in
    marker##addListener (Js.string "click") (Js.wrap_callback f)
  in

  let callback results status _ =
    if status = GM.placesServiceStatus##._OK then (
      let l = results##.length in
      for i = 0 to (l - 1) do
        let e = Js.array_get results i in
        let e = Js.Optdef.get e (fun () -> assert false) in
        let _ = create_marker e in
        ()
      done
    )
  in

  let placeSearchRequest = GM.emptyPlaceSearchRequest() in
  let () = placeSearchRequest##.location := pyrmont in
  let () = placeSearchRequest##.radius := Js.number_of_float 500. in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 (Js.string "store") in
  let () = placeSearchRequest##.types := t in
  let service = new%js GM.placesService map in
  service##nearbySearch placeSearchRequest (Js.wrap_callback callback)
