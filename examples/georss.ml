module GM = GoogleMaps

let demo doc =
  let element =
    Js.Opt.get (doc##getElementById(Js.string "demo_georss"))
      (fun () -> assert false)
  in

  let center = jsnew GM.latLng(Js.number_of_float 49.496675, Js.number_of_float (-102.65625), Js.undefined) in
  let options = GM.emptyMapOptions() in
  let () = options##center <- center in
  let () = options##zoom <- Js.number_of_float 4. in
  let map = jsnew GM.map(element, options) in

  let options = GM.emptyKmlLayerOptions() in
  let () =
  	options##url <- Js.string "http://api.flickr.com/services/feeds/geo/?g=322338@N20&lang=en-us&format=feed-georss"
  in
  let georssLayer = jsnew GM.kmlLayer(Js.def options) in
  let () = georssLayer##setMap(map) in
  ()