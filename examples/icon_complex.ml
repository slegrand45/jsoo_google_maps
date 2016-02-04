module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_icon_complex"))
      (fun () -> assert false)
  in

  let center = new%js GM.latLng (Js.number_of_float (-33.9)) (Js.number_of_float 151.2) Js.undefined in
  let options = GM.emptyMapOptions() in
  let () = options##.center := center in
  let () = options##.zoom := Js.number_of_float 10. in
  let map = new%js GM.map element options in

  let beaches = [
    ("Bondi Beach", (-33.890542), 151.274856, 4.) ;
    ("Coogee Beach", (-33.923036), 151.259052, 5.) ;
    ("Cronulla Beach", (-34.028249), 151.157507, 3.) ;
    ("Manly Beach", (-33.80010128657071), 151.28747820854187, 2.) ;
    ("Maroubra Beach", (-33.950198), 151.259302, 1.)
  ] in

  let set_markers map =
    let image = GM.emptyIcon() in
    let size = new%js GM.size (Js.number_of_float 20.) (Js.number_of_float 32.) Js.undefined Js.undefined in
    let origin = new%js GM.point (Js.number_of_float 0.) (Js.number_of_float 0.) in
    let anchor = new%js GM.point (Js.number_of_float 0.) (Js.number_of_float 32.) in
    let () = image##.url := Js.string "images/beachflag.png" in
    let () = image##.size := size in
    let () = image##.origin := origin in
    let () = image##.anchor := anchor in
    let shape = GM.emptyMarkerShape() in
    let t = new%js Js.array_empty in
    let () =
      List.iteri (fun i e -> Js.array_set t i (Js.number_of_float e))
        [1.; 1.; 1.; 20.; 18.; 20.; 18.; 1.]
    in
    let () = shape##.coords := t in
    let () = shape##._type := Js.string "poly" in
    List.iter (fun (name, lat, lng, z) ->
        let options = GM.emptyMarkerOptions() in
        let lat_lng = new%js GM.latLng (Js.number_of_float lat) (Js.number_of_float lng) Js.undefined in
        let () = options##.position := lat_lng in
        let () = options##.map := map in
        let () = options##.icon := image in
        let () = options##.shape := shape in
        let () = options##.title := Js.string name in
        let () = options##.zIndex := Js.number_of_float z in
        let _ = new%js GM.marker (Js.def options) in
        ()
      ) beaches
  in
  set_markers map
