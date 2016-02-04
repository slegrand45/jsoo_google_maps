module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_earthquake"))
      (fun () -> assert false)
  in
  let script = Dom_html.createScript doc in
  let () = script##.src := Js.string "https://storage.googleapis.com/maps-devrel/quakes.geo.json" in
  let head = doc##getElementsByTagName (Js.string "head") in
  let head = head##item 0 in
  let head = Js.Opt.get head (fun _ -> assert false) in
  let () = Dom.appendChild head script in

  let mapStyle = new%js Js.array_empty in

  let style = GM.emptyMapTypeStyle () in
  let () = style##.featureType := Js.string "all" in
  let () = style##.elementType := Js.string "all" in
  let styler = GM.emptyMapTypeStyler () in
  let () = styler##.visibility := Js.string "off" in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 styler in
  let () = style##.stylers := t in
  let () = Js.array_set mapStyle 0 style in

  let style = GM.emptyMapTypeStyle () in
  let () = style##.featureType := Js.string "landscape" in
  (* "elementType" is simply "geometry" in demo *)
  let () = style##.elementType := Js.string "geometry.stroke" in
  let styler = GM.emptyMapTypeStyler () in
  let () = styler##.visibility := Js.string "on" in
  let () = styler##.color := Js.string "#fcfcfc" in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 styler in
  let () = style##.stylers := t in
  let () = Js.array_set mapStyle 1 style in

  let style = GM.emptyMapTypeStyle () in
  let () = style##.featureType := Js.string "water" in
  let () = style##.elementType := Js.string "labels" in
  let styler = GM.emptyMapTypeStyler () in
  let () = styler##.visibility := Js.string "off" in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 styler in
  let () = style##.stylers := t in
  let () = Js.array_set mapStyle 2 style in

  let style = GM.emptyMapTypeStyle () in
  let () = style##.featureType := Js.string "water" in
  let () = style##.elementType := Js.string "geometry" in
  let styler = GM.emptyMapTypeStyler () in
  let () = styler##.visibility := Js.string "on" in
  let () = styler##.hue := Js.string "#5f94ff" in
  let () = styler##.lightness := Js.number_of_float 60. in
  let t = new%js Js.array_empty in
  let () = Js.array_set t 0 styler in
  let () = style##.stylers := t in
  let () = Js.array_set mapStyle 3 style in

  let center = new%js GM.latLng (Js.number_of_float 20.) (Js.number_of_float (-160.)) Js.undefined in
  let options = GM.emptyMapOptions() in
  let () = options##.center := center in
  let () = options##.zoom := Js.number_of_float 2. in
  let () = options##.styles := mapStyle in
  let map = new%js GM.map element options in

  let data = new%js GM.data Js.undefined in
  let styleFeature (feature:GM._Data_Feature Js.t) =
    let mag = Js.Optdef.get (feature##getProperty (Js.string "mag"))
        (fun () -> 0.)
    in
    let interpolateHsl lowHsl highHsl fraction =
      let color = Array.make 3 0. in
      for i = 0 to 2 do
        color.(i) <- (highHsl.(i) -. lowHsl.(i)) *. fraction +. lowHsl.(i)
      done ;
      Printf.sprintf "hsl(%f,%f%%,%f%%)" color.(0) color.(1) color.(2)
    in
    let low = Array.make 3 0. in
    let () = low.(0) <- 151. in
    let () = low.(1) <- 83. in
    let () = low.(2) <- 34. in
    let high = Array.make 3 0. in
    let () = high.(0) <- 5. in
    let () = high.(1) <- 69. in
    let () = high.(2) <- 54. in
    let minMag = 1. in
    let maxMag = 6. in
    let fraction = ((Js.math##min mag maxMag) -. minMag)
                   /. (maxMag -. minMag)
    in
    let color = interpolateHsl low high fraction in

    let symbol = GM.emptySymbol() in
    let () = symbol##.path := GM.symbolPath##._CIRCLE in
    let () = symbol##.strokeWeight := Js.number_of_float 0.5 in
    let () = symbol##.strokeColor := Js.string "#fff" in
    let () = symbol##.fillColor := Js.string color in
    let () = symbol##.fillOpacity := Js.number_of_float (2. /. mag) in
    let () = symbol##.scale := Js.number_of_float (Js.math##pow mag 2.) in

    let dataStyleOptions = GM.emptyDataStyleOptions() in
    let () = dataStyleOptions##.icon := symbol in
    let () = dataStyleOptions##.zIndex := Js.number_of_float (Js.math##floor mag) in
    dataStyleOptions
  in
  let () = data##setStyle(Js.wrap_callback styleFeature) in
  (* no setMap(map) in demo (?) *)
  let () = data##setMap map in
  let () = map##.data := data in
  let () = Js.Unsafe.global##.eqfeed_callback := Js.wrap_callback
        (fun v -> map##.data##addGeoJson v Js.undefined)
  in
  ()
