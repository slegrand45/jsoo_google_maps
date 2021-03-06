module GM = GoogleMaps

let demo doc =
  let styleArray = new%js Js.array_empty in

  let style = GM.emptyMapTypeStyle () in
  let () = style##.featureType := Js.string "all" in
  let styler = GM.emptyMapTypeStyler () in
  let () = styler##.saturation := Js.number_of_float (-80.) in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 styler in
  let () = style##.stylers := t in
  let () = Js.array_set styleArray 0 style in

  let style = GM.emptyMapTypeStyle () in
  let () = style##.featureType := Js.string "road.arterial" in
  let () = style##.elementType := Js.string "geometry" in
  let styler = GM.emptyMapTypeStyler () in
  let () = styler##.hue := Js.string "#00ffee" in
  let () = styler##.saturation := Js.number_of_float (50.) in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 styler in
  let () = style##.stylers := t in
  let () = Js.array_set styleArray 1 style in

  let style = GM.emptyMapTypeStyle () in
  let () = style##.featureType := Js.string "poi.business" in
  let () = style##.elementType := Js.string "labels" in
  let styler = GM.emptyMapTypeStyler () in
  let () = styler##.visibility := Js.string "off" in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 styler in
  let () = style##.stylers := t in
  let () = Js.array_set styleArray 2 style in

  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_styled_maps"))
      (fun () -> assert false)
  in
  let options = GM.emptyMapOptions() in
  let lat_lng = new%js GM.latLng (Js.number_of_float (-34.397)) (Js.number_of_float 150.644) Js.undefined in
  let () = options##.center := lat_lng in
  let () = options##.scrollwheel := Js._false in
  let () = options##.styles := styleArray in
  let () = options##.zoom := Js.number_of_float 8. in
  new%js GM.map element options