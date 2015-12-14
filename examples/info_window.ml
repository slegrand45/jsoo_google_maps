let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_info_window"))
      (fun () -> assert false)
  in
  let uluru = jsnew GoogleMaps.latLng (Js.number_of_float (-25.363), Js.number_of_float 131.044, Js._false) in

  let options = GoogleMaps.emptyMapOptions() in
  let () = options##center <- uluru in
  let () = options##zoom <- Js.number_of_float 4. in
  let map = jsnew GoogleMaps.map(element, options) in

  let content = "<div id=\"content\"> \
    <div id=\"siteNotice\"></div> \
    <h1 id=\"firstHeading\" class=\"firstHeading\">Uluru</h1> \
    <div id=\"bodyContent\"> \
    <p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large  \
    sandstone rock formation in the southern part of the  \
    Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi)  \
    south west of the nearest large town, Alice Springs; 450&#160;km  \
    (280&#160;mi) by road. Kata Tjuta and Uluru are the two major  \
    features of the Uluru - Kata Tjuta National Park. Uluru is  \
    sacred to the Pitjantjatjara and Yankunytjatjara, the  \
    Aboriginal people of the area. It has many springs, waterholes,  \
    rock caves and ancient paintings. Uluru is listed as a World  \
    Heritage Site.</p> \
    <p>Attribution: Uluru, <a href=\"https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194\"> \
    https://en.wikipedia.org/w/index.php?title=Uluru</a>  \
    (last visited June 22, 2009).</p> \
    </div> \
    </div>"
  in

  let options = GoogleMaps.emptyInfoWindowOptions() in
  let () = options##content <- Js.string content in
  let info_window = jsnew GoogleMaps.infoWindow(options) in

  let options = GoogleMaps.emptyMarkerOptions() in
  let () = options##map <- map in
  let () = options##position <- uluru in
  let () = options##title <- Js.string "Uluru (Ayers Rock)" in
  let marker = jsnew GoogleMaps.marker(options) in
  let marker' = (marker :> GoogleMaps._MVCObject Js.t) in

  let f () = info_window##_open(map, marker') in
  marker##addListener(Js.string "click", Js.wrap_callback f)