type _LatLngBounds_or_LatLngBoundsLiteral
type _MapTypeId_or_string
(*
class type _LatLng_or_LatLngLiteral = object

end
*)
type string_or_node
type _Map_or_StreetViewPanorama
type string_or_Icon_or_Symbol
type string_or_MarkerLabel
type _SymbolPath_or_string
type _MVCArray_LatLng_or_Array_LatLng_or_LatLngLiteral
type _Object_or_undefined
type _DataFeature_or_DataFeatureOptions
type _DataStylingFunction_or_DataStyleOptions
type number_or_string
type _DataGeometry_or_LatLng_or_LatLngLiteral

type mapTypeId
type controlPosition
type mapTypeControlStyle
type scaleControlStyle
type streetViewStatus
type zoomControlStyle
type vehicleType
type travelMode
type animation
type trafficModel
type transitMode
type transitRoutePreference
type unitSystem
type directionsStatus
type markerConstant
type strokePosition
type symbolPath

class type _LatLngLiteral = object
  method lat : Js.number Js.t Js.prop
  method lng : Js.number Js.t Js.prop
end

class type _LatLng = object
  method equals : _LatLng Js.t -> bool Js.t Js.meth
  method lat : Js.number Js.t Js.meth
  method lng : Js.number Js.t Js.meth
  method toJSON : _LatLngLiteral Js.t Js.meth
  method toString : Js.js_string Js.t Js.meth
  method toUrlValue : Js.number Js.t Js.optdef -> Js.js_string Js.t Js.meth
end

class type _LatLngBoundsLiteral = object
  method east : Js.number Js.t Js.prop
  method north : Js.number Js.t Js.prop
  method south : Js.number Js.t Js.prop
  method west : Js.number Js.t Js.prop
end

class type _LatLngBounds = object  
  method contains : _LatLng Js.t -> bool Js.t Js.meth
  method equals : _LatLngBounds_or_LatLngBoundsLiteral -> bool Js.t Js.meth
  method extend : _LatLng Js.t -> _LatLngBounds Js.t Js.meth
  method getCenter : _LatLng Js.t Js.meth
  method getNorthEast : _LatLng Js.t Js.meth
  method getSouthWest : _LatLng Js.t Js.meth
  method intersects : _LatLngBounds_or_LatLngBoundsLiteral -> bool Js.t Js.meth
  method isEmpty : bool Js.t Js.meth
  method toJSON : _LatLngBoundsLiteral Js.t Js.meth
  method toSpan : _LatLng Js.t Js.meth
  method toString : Js.js_string Js.t Js.meth
  method toUrlValue : Js.number Js.t Js.optdef -> Js.js_string Js.t Js.meth
  method union : _LatLngBounds_or_LatLngBoundsLiteral -> _LatLngBounds Js.t Js.meth
end

class type _MapTypeId = object
  method _HYBRID : mapTypeId Js.readonly_prop
  method _ROADMAP : mapTypeId Js.readonly_prop
  method _SATELLITE : mapTypeId Js.readonly_prop
  method _TERRAIN : mapTypeId Js.readonly_prop
end

class type _ControlPosition = object
  method _BOTTOM_CENTER : controlPosition Js.readonly_prop
  method _BOTTOM_LEFT : controlPosition Js.readonly_prop
  method _BOTTOM_RIGHT : controlPosition Js.readonly_prop
  method _LEFT_BOTTOM : controlPosition Js.readonly_prop
  method _LEFT_CENTER : controlPosition Js.readonly_prop
  method _LEFT_TOP : controlPosition Js.readonly_prop
  method _RIGHT_BOTTOM : controlPosition Js.readonly_prop
  method _RIGHT_CENTER : controlPosition Js.readonly_prop
  method _RIGHT_TOP : controlPosition Js.readonly_prop
  method _TOP_CENTER : controlPosition Js.readonly_prop
  method _TOP_LEFT : controlPosition Js.readonly_prop
  method _TOP_RIGHT : controlPosition Js.readonly_prop
end

class type _MapTypeControlStyle = object
  method _DEFAULT : mapTypeControlStyle Js.readonly_prop
  method _DROPDOWN_MENU : mapTypeControlStyle Js.readonly_prop
  method _HORIZONTAL_BAR : mapTypeControlStyle Js.readonly_prop
end

class type _MapTypeControlOptions = object
  method mapTypeIds : _MapTypeId_or_string Js.js_array Js.t Js.prop
  method position : controlPosition Js.prop
  method style : mapTypeControlStyle Js.prop
end

class type _OverviewMapControlOptions = object
  method opened : bool Js.t Js.prop
end

class type _PanControlOptions = object
  method position : controlPosition Js.prop
end

class type _RotateControlOptions = object
  method position : controlPosition Js.prop
end

class type _ScaleControlStyle = object
  method _DEFAULT : scaleControlStyle Js.readonly_prop
end

class type _ScaleControlOptions = object
  method style : scaleControlStyle Js.prop
end

class type _StreetViewLink = object
  method description : Js.js_string Js.t Js.readonly_prop
  method heading : Js.number Js.t Js.readonly_prop
  method pano : Js.js_string Js.t Js.readonly_prop
end

class type _StreetViewLocation = object
  method description : Js.js_string Js.t Js.readonly_prop
  method latLng : _LatLng Js.t Js.readonly_prop
  method pano : Js.js_string Js.t Js.readonly_prop
  method shortDescription : Js.js_string Js.t Js.readonly_prop
end

class type _StreetViewPov = object
  method heading : Js.number Js.t Js.readonly_prop
  method pitch : Js.number Js.t Js.readonly_prop
end

class type _StreetViewStatus = object
  method _OK : streetViewStatus Js.readonly_prop
  method _UNKNOWN_ERROR : streetViewStatus Js.readonly_prop
  method _ZERO_RESULTS : streetViewStatus Js.readonly_prop
end

class type _Size = object
  method equals : _Size Js.t -> bool Js.t Js.meth
  method toString : Js.js_string Js.t Js.meth

  method height : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.readonly_prop
end

class type _StreetViewTileData = object
  method getTileUrl : Js.js_string Js.t -> Js.number Js.t -> Js.number Js.t -> Js.number Js.t -> Js.js_string Js.t Js.meth

  method centerHeading : Js.number Js.t Js.readonly_prop
  method tileSize : _Size Js.t Js.readonly_prop
  method worldSize : _Size Js.t Js.readonly_prop
end

class type _StreetViewPanoramaData = object
  method copyright : Js.js_string Js.t Js.readonly_prop
  method imageDate : Js.js_string Js.t Js.readonly_prop
  method links : _StreetViewLink Js.t Js.js_array Js.t Js.readonly_prop
  method location : _StreetViewLocation Js.t Js.readonly_prop
  method tiles : _StreetViewTileData Js.t Js.readonly_prop
end

class type _StreetViewControlOptions = object
  method position : controlPosition Js.prop
end

class type _StreetViewAddressControlOptions = object
  method position : controlPosition Js.prop
end

class type _ZoomControlStyle = object
  method _DEFAULT : zoomControlStyle Js.readonly_prop
  method _LARGE : zoomControlStyle Js.readonly_prop
  method _SMALL : zoomControlStyle Js.readonly_prop
end

class type _ZoomControlOptions = object
  method position : controlPosition Js.prop
  method style : zoomControlStyle Js.prop
end

class type _StreetViewPanoramaOptions = object
  method addressControl : bool Js.t Js.prop
  method addressControlOptions : _StreetViewAddressControlOptions Js.t Js.prop
  method clickToGo : bool Js.t Js.prop
  method disableDefaultUI : bool Js.t Js.prop
  method disableDoubleClickZoom : bool Js.t Js.prop
  method enableCloseButton : bool Js.t Js.prop
  method imageDateControl : bool Js.t Js.prop
  method linksControl : bool Js.t Js.prop
  method panControl : bool Js.t Js.prop
  method panControlOptions : _PanControlOptions Js.t Js.prop
  method pano : Js.js_string Js.t Js.prop
  method panoProvider : (Js.js_string Js.t -> _StreetViewPanoramaData Js.t) Js.callback Js.prop
  method position : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t Js.prop
  method pov : _StreetViewPov Js.t Js.prop
  method scrollwheel : bool Js.t Js.prop
  method visible : bool Js.t Js.prop
  method zoomControl : bool Js.t Js.prop
  method zoomControlOptions : _ZoomControlOptions Js.t Js.prop
end

class type _MVCArray = object

end

class type _MapsEventListener = object

end

class type _MVCObject = object
  method addListener : Js.js_string Js.t -> 'a Js.callback -> _MapsEventListener Js.t Js.meth
  method bindTo : Js.js_string Js.t -> _MVCObject Js.t -> Js.js_string Js.t Js.optdef -> bool Js.t Js.optdef -> unit Js.meth
  method changed : Js.js_string Js.t -> unit Js.meth
  method get : Js.js_string Js.t -> 'a Js.meth
  method notify : Js.js_string Js.t -> unit Js.meth
  method set : Js.js_string Js.t -> 'a Js.t -> unit Js.meth
  method setValues : _Object_or_undefined -> unit Js.meth
  method unbind : Js.js_string Js.t -> unit Js.meth
  method unbindAll : unit Js.meth
end

class type _StreetViewPanorama = object
  method getLinks : _StreetViewLink Js.t Js.js_array Js.meth
  method getLocation : _StreetViewLocation Js.t Js.meth
  method getPano : Js.js_string Js.t Js.meth
  method getPhotographerPov : _StreetViewPov Js.t Js.meth
  method getPosition : _LatLng Js.t Js.meth
  method getPov : _StreetViewPov Js.t Js.meth
  method getStatus : streetViewStatus Js.meth
  method getVisible : bool Js.t Js.meth
  method getZoom : Js.number Js.t Js.meth
  method registerPanoProvider : (Js.js_string Js.t -> _StreetViewPanoramaData Js.t) Js.callback -> unit Js.meth
  method setLinks : _StreetViewLink Js.t Js.js_array -> unit Js.meth
  method setOptions : _StreetViewPanoramaOptions Js.t -> unit Js.meth
  method setPano : Js.js_string Js.t -> unit Js.meth
  method setPosition : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t -> unit Js.meth
  method setPov : _StreetViewPov Js.t -> unit Js.meth
  method setVisible : bool Js.t -> unit Js.meth
  method setZoom : Js.number Js.t -> unit Js.meth
  method controls : _MVCArray Js.t Js.js_array Js.t Js.prop (* Array<MVCArray<Node>> *)
end

class type _Point = object
  method equals : _Point Js.t -> bool Js.t Js.meth
  method toString : Js.js_string Js.t Js.meth
  method x : Js.number Js.t Js.prop
  method y : Js.number Js.t Js.prop
end

class type _SymbolPath = object
  method _BACKWARD_CLOSED_ARROW : symbolPath Js.readonly_prop
  method _BACKWARD_OPEN_ARROW : symbolPath Js.readonly_prop
  method _CIRCLE : symbolPath Js.readonly_prop
  method _FORWARD_CLOSED_ARROW : symbolPath Js.readonly_prop
  method _FORWARD_OPEN_ARROW : symbolPath Js.readonly_prop
end

class type _Symbol = object
  method anchor : _Point Js.t Js.prop
  method fillColor : Js.js_string Js.t Js.prop
  method fillOpacity : Js.number Js.t Js.prop
  method labelOrigin : _Point Js.t Js.prop
  method path : (* _SymbolPath_or_string *) symbolPath Js.prop
  method rotation : Js.number Js.t Js.prop
  method scale : Js.number Js.t Js.prop
  method strokeColor : Js.js_string Js.t Js.prop
  method strokeOpacity : Js.number Js.t Js.prop
  method strokeWeight : Js.number Js.t Js.prop
end

class type _IconSequence = object
  method fixedRotation : bool Js.t Js.prop
  method icon : _Symbol Js.t Js.prop
  method offset : Js.js_string Js.t Js.prop
  method repeat : Js.js_string Js.t Js.prop
end

class type _MapTypeStyler = object
  method color : Js.js_string Js.t Js.prop
  method gamma : Js.number Js.t Js.prop
  method hue : Js.js_string Js.t Js.prop
  method invert_lightness : bool Js.t Js.prop
  method lightness : Js.number Js.t Js.prop
  method saturation : Js.number Js.t Js.prop
  method visibility : Js.js_string Js.t Js.prop
  method weight : Js.number Js.t Js.prop
end

class type _MapTypeStyle = object
  method elementType : Js.js_string Js.t Js.prop
  method featureType : Js.js_string Js.t Js.prop
  method stylers : _MapTypeStyler Js.t Js.js_array Js.t Js.prop
end

class type _Projection = object
  method fromLatLngToPoint : _LatLng Js.t -> _Point Js.t Js.optdef -> _Point Js.t Js.meth
  method fromPointToLatLng : _Point Js.t -> bool Js.t Js.optdef -> _LatLng Js.t Js.meth
end

class type _MarkerShape = object
  method coords : Js.number Js.t Js.js_array Js.t Js.prop
  method _type : Js.js_string Js.t Js.prop
end

class type _MapType = object
  method getTile : _Point Js.t -> Js.number Js.t -> Dom.element Dom.document Js.t -> Dom.node Js.t Js.meth
  method releaseTile : Dom.node Js.t -> unit Js.meth
  method alt : Js.js_string Js.t Js.writeonly_prop
  method maxZoom : Js.number Js.t Js.writeonly_prop
  method minZoom : Js.number Js.t Js.writeonly_prop
  method name : Js.js_string Js.t Js.writeonly_prop
  method projection : _Projection Js.t Js.writeonly_prop
  method radius : Js.number Js.t Js.writeonly_prop
  method tileSize : _Size Js.t Js.writeonly_prop
end

class type _MapTypeRegistry = object
  inherit _MVCObject
  method _set : Js.js_string Js.t -> _MapType Js.t Js.optdef -> unit Js.meth
end

class type _MapOptions = object
  method backgroundColor : Js.js_string Js.t Js.prop
  method center : _LatLng Js.t Js.prop
  method disableDefaultUI : bool Js.t Js.prop
  method disableDoubleClickZoom : bool Js.t Js.prop
  method draggable : bool Js.t Js.prop
  method draggableCursor : Js.js_string Js.t Js.prop
  method draggingCursor : Js.js_string Js.t Js.prop
  method heading : Js.number Js.t Js.prop
  method keyboardShortcuts : bool Js.t Js.prop
  method mapMaker : bool Js.t Js.prop
  method mapTypeControl : bool Js.t Js.prop
  method mapTypeControlOptions : _MapTypeControlOptions Js.t Js.prop
  method mapTypeId : mapTypeId Js.prop
  method maxZoom : Js.number Js.t Js.prop
  method minZoom : Js.number Js.t Js.prop
  method noClear : bool Js.t Js.prop
  method overviewMapControl : bool Js.t Js.prop
  method overviewMapControlOptions : _OverviewMapControlOptions Js.t Js.prop
  method panControl : bool Js.t Js.prop
  method panControlOptions : _PanControlOptions Js.t Js.prop
  method rotateControl : bool Js.t Js.prop
  method rotateControlOptions : _RotateControlOptions Js.t Js.prop
  method scaleControl : bool Js.t Js.prop
  method scaleControlOptions : _ScaleControlOptions Js.t Js.prop
  method scrollwheel : bool Js.t Js.prop
  method streetView : _StreetViewPanorama Js.t Js.prop
  method streetViewControl : bool Js.t Js.prop
  method streetViewControlOptions : _StreetViewControlOptions Js.t Js.prop
  method styles : _MapTypeStyle Js.t Js.js_array Js.t Js.prop
  method tilt : Js.number Js.t Js.prop
  method zoom : Js.number Js.t Js.prop
  method zoomControl : bool Js.t Js.prop
  method zoomControlOptions : _ZoomControlOptions Js.t Js.prop
end

class type _Data = object
  inherit _MVCObject
  method add : _DataFeature_or_DataFeatureOptions -> _Data_Feature Js.t Js.meth
  method addGeoJson : 'a Js.t -> _Data_GeoJsonOptions Js.t Js.optdef -> _Data_Feature Js.t Js.js_array Js.t Js.meth
  method contains : _Data_Feature Js.t -> bool Js.t Js.meth
  method forEach : (_Data_Feature Js.t -> unit Js.t) Js.callback -> unit Js.meth
  method getControlPosition : _ControlPosition Js.t Js.meth
  method getControls : Js.js_string Js.t Js.js_array Js.t Js.meth
  method getDrawingMode : Js.js_string Js.t Js.meth
  method getFeatureById : number_or_string -> _Data_Feature Js.t Js.optdef Js.meth
  method getMap : _Map Js.t Js.meth
  method getStyle : (* _DataStylingFunction_or_DataStyleOptions *) _Data_StyleOptions Js.t Js.meth
  method loadGeoJson : Js.js_string Js.t -> _Data_GeoJsonOptions Js.t Js.optdef -> (_Data_Feature Js.t Js.js_array Js.t -> unit Js.t) Js.callback -> unit Js.meth
  method overrideStyle : _Data_Feature Js.t -> _Data_StyleOptions Js.t -> unit Js.meth
  method remove : _Data_Feature Js.t -> unit Js.meth
  method revertStyle : _Data_Feature Js.t Js.optdef -> unit Js.meth
  method setControlPosition : _ControlPosition Js.t -> unit Js.meth
  method setControls : Js.js_string Js.t Js.js_array Js.t -> unit Js.meth
  method setDrawingMode : Js.js_string Js.t -> unit Js.meth
  method setMap : _Map Js.t -> unit Js.meth
  method setStyle : (* _DataStylingFunction_or_DataStyleOptions *) (_Data_Feature Js.t -> _Data_StyleOptions Js.t) Js.callback -> unit Js.meth
  method toGeoJson : ('a Js.t -> unit Js.t) Js.callback -> unit Js.meth
end

and _Data_Geometry = object
  method getType : Js.js_string Js.t Js.meth
end

and _Data_FeatureOptions = object
  method geometry : _DataGeometry_or_LatLng_or_LatLngLiteral Js.writeonly_prop
  method id : number_or_string Js.writeonly_prop
  method properties : 'a Js.t Js.writeonly_prop
end

and _Data_DataOptions = object
  method controlPosition : _ControlPosition Js.t Js.writeonly_prop
  method controls : Js.js_string Js.t Js.js_array Js.t Js.writeonly_prop
  method drawingMode : Js.js_string Js.t Js.writeonly_prop
  method featureFactory : (_Data_Geometry Js.t -> _Data_Feature Js.t) Js.callback Js.writeonly_prop
  method map : _Map Js.t Js.writeonly_prop
  method style : _DataStylingFunction_or_DataStyleOptions Js.writeonly_prop
end

and _Data_Feature = object
  method forEachProperty : ('a -> Js.js_string Js.t -> unit Js.t) Js.callback -> unit Js.meth
  method getGeometry : _Data_Geometry Js.t Js.meth
  method getId : number_or_string Js.optdef Js.meth
  method getProperty : Js.js_string Js.t -> 'a Js.optdef Js.meth
  method removeProperty : Js.js_string Js.t -> unit Js.meth
  method setGeometry : _DataGeometry_or_LatLng_or_LatLngLiteral -> unit Js.meth
  method setProperty : Js.js_string Js.t -> 'a -> unit Js.meth
  method toGeoJson : ('a Js.t -> unit Js.t) Js.callback -> unit Js.meth
end

and _Data_GeoJsonOptions = object
  method idPropertyName : Js.js_string Js.t Js.writeonly_prop
end

and _Data_StyleOptions = object
  method clickable : bool Js.t Js.writeonly_prop
  method cursor : Js.js_string Js.t Js.writeonly_prop
  method draggable : bool Js.t Js.writeonly_prop
  method editable : bool Js.t Js.writeonly_prop
  method fillColor : Js.js_string Js.t Js.writeonly_prop
  method fillOpacity : Js.number Js.t Js.writeonly_prop
  method icon : (* string_or_Icon_or_Symbol *) _Symbol Js.t Js.writeonly_prop
  method shape : _MarkerShape Js.t Js.writeonly_prop
  method strokeColor : Js.js_string Js.t Js.writeonly_prop
  method strokeOpacity : Js.number Js.t Js.writeonly_prop
  method strokeWeight : Js.number Js.t Js.writeonly_prop
  method title : Js.js_string Js.t Js.writeonly_prop
  method visible : bool Js.t Js.writeonly_prop
  method zIndex : Js.number Js.t Js.writeonly_prop
end

and _Map = object
  inherit _MVCObject
  method fitBounds : _LatLngBounds_or_LatLngBoundsLiteral -> unit Js.meth
  method getBounds : _LatLngBounds Js.t Js.meth
  method getCenter : _LatLng Js.t Js.meth
  method getDiv : Dom_html.element Js.t Js.meth
  method getHeading : Js.number Js.t Js.meth
  method getMapTypeId : _MapTypeId_or_string Js.meth
  method getProjection : _Projection Js.t Js.meth
  method getStreetView : _StreetViewPanorama Js.t Js.meth
  method getTilt : Js.number Js.t Js.meth
  method getZoom : Js.number Js.t Js.meth
  method panBy : Js.number Js.t -> Js.number Js.t -> unit Js.meth
  method panTo : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t -> unit Js.meth
  method panToBounds : _LatLngBounds_or_LatLngBoundsLiteral -> unit Js.meth
  method setCenter : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t -> unit Js.meth
  method setHeading : Js.number Js.t -> unit Js.meth
  method setMapTypeId : _MapTypeId_or_string -> unit Js.meth
  method setOptions : _MapOptions Js.t -> unit Js.meth
  method setStreetView : _StreetViewPanorama Js.t -> unit Js.meth
  method setTilt : Js.number Js.t -> unit Js.meth
  method setZoom : Js.number Js.t -> unit Js.meth
  method controls : (* Array<MVCArray<Node>> *) _MVCArray Js.t Js.prop
  method data : _Data Js.t Js.prop
  method mapTypes : _MapTypeRegistry Js.t Js.prop
  method overlayMapTypes : (* MVCArray<MapType> *) _MVCArray Js.t Js.prop
end

class type _DirectionsGeocodedWaypoint = object
  method partial_match : bool Js.t Js.readonly_prop
  method place_id : Js.js_string Js.t Js.readonly_prop
  method types : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop
end

class type _TransitFare = object

end

class type _Time = object
  method text : Js.js_string Js.t Js.readonly_prop
  method time_zone : Js.js_string Js.t Js.readonly_prop
  method value : Js.date Js.t Js.readonly_prop
end

class type _Distance = object
  method text : Js.js_string Js.t Js.readonly_prop
  method value : Js.number Js.t Js.readonly_prop
end

class type _Duration = object
  method text : Js.js_string Js.t Js.readonly_prop
  method value : Js.number Js.t Js.readonly_prop
end

class type _TransitStop = object
  method location : _LatLng Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop
end

class type _TransitAgency = object
  method name : Js.js_string Js.t Js.readonly_prop
  method phone : Js.js_string Js.t Js.readonly_prop
  method url : Js.js_string Js.t Js.readonly_prop
end

class type _VehicleType = object
  method _BUS : vehicleType Js.readonly_prop
  method _CABLE_CAR : vehicleType Js.readonly_prop
  method _COMMUTER_TRAIN : vehicleType Js.readonly_prop
  method _FERRY : vehicleType Js.readonly_prop
  method _FUNICULAR : vehicleType Js.readonly_prop
  method _GONDOLA_LIFT : vehicleType Js.readonly_prop
  method _HEAVY_RAIL : vehicleType Js.readonly_prop
  method _HIGH_SPEED_TRAIN : vehicleType Js.readonly_prop
  method _INTERCITY_BUS : vehicleType Js.readonly_prop
  method _METRO_RAIL : vehicleType Js.readonly_prop
  method _MONORAIL : vehicleType Js.readonly_prop
  method _OTHER : vehicleType Js.readonly_prop
  method _RAIL : vehicleType Js.readonly_prop
  method _SHARE_TAXI : vehicleType Js.readonly_prop
  method _SUBWAY : vehicleType Js.readonly_prop
  method _TRAM : vehicleType Js.readonly_prop
  method _TROLLEYBUS : vehicleType Js.readonly_prop
end

class type _TransitVehicle = object
  method icon : Js.js_string Js.t Js.readonly_prop
  method local_icon : Js.js_string Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop
  method _type : vehicleType Js.readonly_prop
end

class type _TransitLine = object
  method agencies : _TransitAgency Js.t Js.js_array Js.t Js.readonly_prop
  method color : Js.js_string Js.t Js.readonly_prop
  method icon : Js.js_string Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop
  method short_name : Js.js_string Js.t Js.readonly_prop
  method text_color : Js.js_string Js.t Js.readonly_prop
  method url : Js.js_string Js.t Js.readonly_prop
  method vehicle : _TransitVehicle Js.t Js.readonly_prop
end

class type _TransitDetails = object
  method arrival_stop : _TransitStop Js.t Js.readonly_prop
  method arrival_time : _Time Js.t Js.readonly_prop
  method departure_stop : _TransitStop Js.t Js.readonly_prop
  method departure_time : _Time Js.t Js.readonly_prop
  method headsign : Js.js_string Js.t Js.readonly_prop
  method headway : Js.number Js.t Js.readonly_prop
  method line : _TransitLine Js.t Js.readonly_prop
  method num_stops : Js.number Js.t Js.readonly_prop
end

class type _TravelMode = object
  method _BICYCLING : travelMode Js.readonly_prop
  method _DRIVING : travelMode Js.readonly_prop
  method _TRANSIT : travelMode Js.readonly_prop
  method _WALKING : travelMode Js.readonly_prop
end

class type _DirectionsStep = object
  method distance : _Distance Js.t Js.readonly_prop
  method duration : _Duration Js.t Js.readonly_prop
  method end_location : _LatLng Js.t Js.readonly_prop
  method instructions : Js.js_string Js.t Js.readonly_prop
  method path : _LatLng Js.t Js.js_array Js.t Js.readonly_prop
  method start_location : _LatLng Js.t Js.readonly_prop
  method steps : _DirectionsStep Js.t Js.js_array Js.t Js.readonly_prop
  method transit : _TransitDetails Js.t Js.readonly_prop
  method travel_mode : travelMode Js.readonly_prop
end

class type _DirectionsLeg = object
  method arrival_time : _Time Js.t Js.readonly_prop
  method departure_time : _Time Js.t Js.readonly_prop
  method distance : _Distance Js.t Js.readonly_prop
  method duration : _Duration Js.t Js.readonly_prop
  method duration_in_traffic : _Duration Js.t Js.readonly_prop
  method end_address : Js.js_string Js.t Js.readonly_prop
  method end_location : _LatLng Js.t Js.readonly_prop
  method start_address : Js.js_string Js.t Js.readonly_prop
  method start_location : _LatLng Js.t Js.readonly_prop
  method steps : _DirectionsStep Js.t Js.js_array Js.t Js.readonly_prop
  method via_waypoints : _LatLng Js.t Js.js_array Js.t Js.readonly_prop
end

class type _DirectionsRoute = object
  method bounds : _LatLngBounds Js.t Js.readonly_prop
  method copyrights : Js.js_string Js.t Js.readonly_prop
  method fare : _TransitFare Js.t Js.readonly_prop
  method legs : _DirectionsLeg Js.t Js.js_array Js.t Js.readonly_prop
  method overview_path : _LatLng Js.t Js.js_array Js.t Js.readonly_prop
  method overview_polyline : Js.js_string Js.t Js.readonly_prop
  method warnings : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop
  method waypoint_order : Js.number Js.t Js.js_array Js.t Js.readonly_prop
end

class type _DirectionsResult = object
  method geocoded_waypoints : _DirectionsGeocodedWaypoint Js.t Js.js_array Js.t Js.readonly_prop
  method routes : _DirectionsRoute Js.t Js.js_array Js.t Js.readonly_prop
end

class type _InfoWindowOptions = object
  method content : (* string_or_node *) Js.js_string Js.t Js.prop
  method disableAutoPan : bool Js.t Js.prop
  method maxWidth : Js.number Js.t Js.prop
  method pixelOffset : _Size Js.t Js.prop
  method position : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t Js.prop
  method zIndex : Js.number Js.t Js.prop
end

class type _InfoWindow = object
  method close : unit Js.meth
  method getContent : (* string_or_node *) Js.js_string Js.t Js.meth
  method getPosition : _LatLng Js.t Js.meth
  method getZIndex : Js.number Js.t Js.meth
  method _open : (* _Map_or_StreetViewPanorama *) _Map Js.t Js.optdef -> _MVCObject Js.t Js.optdef -> unit Js.meth
  method setContent : (* string_or_node *) Js.js_string Js.t -> unit Js.meth
  method setOptions : _InfoWindowOptions Js.t -> unit Js.meth
  method setPosition : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t -> unit Js.meth
  method setZIndex : Js.number Js.t -> unit Js.meth
end

class type _Animation = object
  method _BOUNCE : animation Js.readonly_prop
  method _DROP : animation Js.readonly_prop
end

class type _Attribution = object
  method iosDeepLinkId : Js.js_string Js.t Js.prop
  method source : Js.js_string Js.t Js.prop
  method webUrl : Js.js_string Js.t Js.prop
end

class type _MarkerPlace = object
  method location : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t Js.prop
  method placeId : Js.js_string Js.t Js.prop
  method query : Js.js_string Js.t Js.prop
end

class type _MarkerOptions = object
  method anchorPoint : _Point Js.t Js.prop
  method animation : animation Js.prop
  method attribution : _Attribution Js.t Js.prop
  method clickable : bool Js.t Js.prop
  method crossOnDrag : bool Js.t Js.prop
  method cursor : Js.js_string Js.t Js.prop
  method draggable : bool Js.t Js.prop
  method icon : string_or_Icon_or_Symbol Js.prop
  method label : string_or_MarkerLabel Js.prop
  method map : (* _Map_or_StreetViewPanorama *) _Map Js.t Js.prop
  method opacity : Js.number Js.t Js.prop
  method optimized : bool Js.t Js.prop
  method place : _MarkerPlace Js.t Js.prop
  method position : _LatLng Js.t Js.prop
  method shape : _MarkerShape Js.t Js.prop
  method title : Js.js_string Js.t Js.prop
  method visible : bool Js.t Js.prop
  method zIndex : Js.number Js.t Js.prop
end

class type _PolylineOptions = object
  method clickable : bool Js.t Js.prop
  method draggable : bool Js.t Js.prop
  method editable : bool Js.t Js.prop
  method geodesic : bool Js.t Js.prop
  method icons : _IconSequence Js.t Js.js_array Js.t Js.prop
  method map : _Map Js.t Js.prop
  method path : _MVCArray_LatLng_or_Array_LatLng_or_LatLngLiteral Js.prop
  method strokeColor : Js.js_string Js.t Js.prop
  method strokeOpacity : Js.number Js.t Js.prop
  method strokeWeight : Js.number Js.t Js.prop
  method visible : bool Js.t Js.prop
  method zIndex : Js.number Js.t Js.prop
end

class type _Polyline = object
  inherit _MVCObject
  method getDraggable : bool Js.t Js.meth
  method getEditable : bool Js.t Js.meth
  method getMap : _Map Js.t Js.meth
  method getPath : (* MVCArray<LatLng> *) _MVCArray Js.t Js.meth
  method getVisible : bool Js.t Js.meth
  method setDraggable : bool Js.t -> unit Js.meth
  method setEditable : bool Js.t -> unit Js.meth
  method setMap : _Map Js.t -> unit Js.meth
  method setOptions : _PolylineOptions Js.t -> unit Js.meth
  method setPath : _MVCArray_LatLng_or_Array_LatLng_or_LatLngLiteral -> unit Js.meth
  method setVisible : bool Js.t -> unit Js.meth
end

class type _StrokePosition = object
  method _CENTER : strokePosition Js.readonly_prop
  method _INSIDE : strokePosition Js.readonly_prop
  method _OUTSIDE : strokePosition Js.readonly_prop
end

class type _RectangleOptions = object
  method bounds : (* _LatLngBounds_or_LatLngBoundsLiteral *) _LatLngBounds Js.t Js.prop
  method clickable : bool Js.t Js.prop
  method draggable : bool Js.t Js.prop
  method editable : bool Js.t Js.prop
  method fillColor : Js.js_string Js.t Js.prop
  method fillOpacity : Js.number Js.t Js.prop
  method map : _Map Js.t Js.prop
  method strokeColor : Js.js_string Js.t Js.prop
  method strokeOpacity : Js.number Js.t Js.prop
  method strokePosition : _StrokePosition Js.t Js.prop
  method strokeWeight : Js.number Js.t Js.prop
  method visible : bool Js.t Js.prop
  method zIndex : Js.number Js.t Js.prop
end

class type _Rectangle = object
  inherit _MVCObject
  method getBounds : _LatLngBounds Js.t Js.meth
  method getDraggable : bool Js.t Js.meth
  method getEditable : bool Js.t Js.meth
  method getMap : _Map Js.t Js.meth
  method getVisible : bool Js.t Js.meth
  method setBounds : _LatLngBounds_or_LatLngBoundsLiteral Js.t -> unit Js.meth
  method setDraggable : bool Js.t -> unit Js.meth
  method setEditable : bool Js.t -> unit Js.meth
  method setMap : _Map Js.t -> unit Js.meth
  method setOptions : _RectangleOptions Js.t -> unit Js.meth
  method setVisible : bool Js.t -> unit Js.meth
end

class type _CircleOptions = object
  method center : _LatLng Js.t Js.prop
  method clickable : bool Js.t Js.prop
  method draggable : bool Js.t Js.prop
  method editable : bool Js.t Js.prop
  method fillColor : Js.js_string Js.t Js.prop
  method fillOpacity : Js.number Js.t Js.prop
  method map : _Map Js.t Js.prop
  method radius : Js.number Js.t Js.prop
  method strokeColor : Js.js_string Js.t Js.prop
  method strokeOpacity : Js.number Js.t Js.prop
  method strokePosition : _StrokePosition Js.t Js.prop
  method strokeWeight : Js.number Js.t Js.prop
  method visible : bool Js.t Js.prop
  method zIndex : Js.number Js.t Js.prop
end

class type _Circle = object
  inherit _MVCObject
  method getBounds : _LatLngBounds Js.t Js.meth
  method getCenter : _LatLng Js.t Js.meth
  method getDraggable : bool Js.t Js.meth
  method getEditable : bool Js.t Js.meth
  method getMap : _Map Js.t Js.meth
  method getRadius : Js.number Js.t Js.meth
  method getVisible : bool Js.t Js.meth
  method setCenter : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t -> unit Js.meth
  method setDraggable : bool Js.t -> unit Js.meth
  method setEditable : bool Js.t -> unit Js.meth
  method setMap : _Map Js.t -> unit Js.meth
  method setOptions : _CircleOptions Js.t -> unit Js.meth
  method setRadius : Js.number Js.t -> unit Js.meth
  method setVisible : bool Js.t -> unit Js.meth
end

class type _DirectionsRendererOptions = object
  method directions : _DirectionsResult Js.t Js.prop
  method draggable : bool Js.t Js.prop
  method hideRouteList : bool Js.t Js.prop
  method infoWindow : _InfoWindow Js.t Js.prop
  method map : _Map Js.t Js.prop
  method markerOptions : _MarkerOptions Js.t Js.prop
  method panel : Dom_html.element Js.t Js.prop
  method polylineOptions : _PolylineOptions Js.t Js.prop
  method preserveViewport : bool Js.t Js.prop
  method routeIndex : Js.number Js.t Js.prop
  method suppressBicyclingLayer : bool Js.t Js.prop
  method suppressInfoWindows : bool Js.t Js.prop
  method suppressMarkers : bool Js.t Js.prop
  method suppressPolylines : bool Js.t Js.prop
end

class type _DirectionsRenderer = object
  method getDirections : _DirectionsResult Js.t Js.meth
  method getMap : _Map Js.t Js.meth
  method getPanel : Dom_html.element Js.t Js.meth
  method getRouteIndex : Js.number Js.t Js.meth
  method setDirections : _DirectionsResult Js.t -> unit Js.meth
  method setMap : _Map Js.t -> unit Js.meth
  method setOptions : _DirectionsRendererOptions Js.t -> unit Js.meth
  method setPanel : Dom_html.element Js.t -> unit Js.meth
  method setRouteIndex : Js.number Js.t -> unit Js.meth
end

class type _Place = object
  method location : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t Js.prop
  method placeId : Js.js_string Js.t Js.prop
  method query : Js.js_string Js.t Js.prop
end

class type _TrafficModel = object
  method _BEST_GUESS : trafficModel Js.readonly_prop
  method _OPTIMISTIC : trafficModel Js.readonly_prop
  method _PESSIMISTIC : trafficModel Js.readonly_prop
end

class type _DrivingOptions = object
  method departureTime : Js.date Js.t Js.prop
  method trafficModel : trafficModel Js.prop
end

class type _TransitMode = object
  method _BEST_GUESS : transitMode Js.readonly_prop
  method _OPTIMISTIC : transitMode Js.readonly_prop
  method _PESSIMISTIC : transitMode Js.readonly_prop
end

class type _TransitRoutePreference = object
  method _FEWER_TRANSFERS : transitRoutePreference Js.readonly_prop
  method _LESS_WALKING : transitRoutePreference Js.readonly_prop
end

class type _TransitOptions = object
  method arrivalTime : Js.date Js.t Js.prop
  method departureTime : Js.date Js.t Js.prop
  method modes : transitMode Js.js_array Js.t Js.prop
  method routingPreference : transitRoutePreference Js.prop
end

class type _UnitSystem = object
  method _IMPERIAL : unitSystem Js.readonly_prop
  method _METRIC : unitSystem Js.readonly_prop
end

class type _DirectionsWaypoint = object
  method location : _Place Js.t Js.prop
  method stopover : bool Js.t Js.prop
end

class type _DirectionsRequest = object
  method avoidFerries : bool Js.t Js.prop
  method avoidHighways : bool Js.t Js.prop
  method avoidTolls : bool Js.t Js.prop
  method destination : _Place Js.t Js.prop
  method drivingOptions : _DrivingOptions Js.t Js.prop
  method optimizeWaypoints : bool Js.t Js.prop
  method origin : _Place Js.t Js.prop
  method provideRouteAlternatives : bool Js.t Js.prop
  method region : Js.js_string Js.t Js.prop
  method transitOptions : _TransitOptions Js.t Js.prop
  method travelMode : travelMode Js.prop
  method unitSystem : unitSystem Js.prop
  method waypoints : _DirectionsWaypoint Js.t Js.js_array Js.t Js.prop
end

class type _DirectionsStatus = object
  method _INVALID_REQUEST : directionsStatus Js.readonly_prop
  method _MAX_WAYPOINTS_EXCEEDED : directionsStatus Js.readonly_prop
  method _NOT_FOUND : directionsStatus Js.readonly_prop
  method _OK : directionsStatus Js.readonly_prop
  method _OVER_QUERY_LIMIT : directionsStatus Js.readonly_prop
  method _REQUEST_DENIED : directionsStatus Js.readonly_prop
  method _UNKNOWN_ERROR : directionsStatus Js.readonly_prop
  method _ZERO_RESULTS : directionsStatus Js.readonly_prop
end

class type _DirectionsService = object
  method route : _DirectionsRequest Js.t -> (_DirectionsResult Js.t -> directionsStatus -> unit) Js.callback -> unit Js.meth
end

class type _Icon = object
  method anchor : _Point Js.t Js.writeonly_prop
  method labelOrigin : _Point Js.t Js.writeonly_prop
  method origin : _Point Js.t Js.writeonly_prop
  method scaledSize : _Size Js.t Js.writeonly_prop
  method size : _Size Js.t Js.writeonly_prop
  method url : Js.js_string Js.t Js.writeonly_prop
end

class type _MarkerLabel = object
  method color : Js.js_string Js.t Js.prop
  method fontFamily : Js.js_string Js.t Js.prop
  method fontSize : Js.js_string Js.t Js.prop
  method fontWeight : Js.js_string Js.t Js.prop
  method text : Js.js_string Js.t Js.prop
end

class type _Marker = object
  inherit _MVCObject
  method getAnimation : animation Js.meth
  method getAttribution : _Attribution Js.t Js.meth
  method getClickable : bool Js.t Js.meth
  method getCursor : Js.js_string Js.t Js.meth
  method getDraggable : bool Js.t Js.meth
  method getIcon : string_or_Icon_or_Symbol Js.meth
  method getLabel : _MarkerLabel Js.t Js.meth
  method getMap : _Map_or_StreetViewPanorama Js.meth
  method getOpacity : Js.number Js.t Js.meth
  method getPlace : _MarkerPlace Js.t Js.meth
  method getPosition : _LatLng Js.t Js.meth
  method getShape : _MarkerShape Js.t Js.meth
  method getTitle : Js.js_string Js.t Js.meth
  method getVisible : bool Js.t Js.meth
  method getZIndex : Js.number Js.t Js.meth
  method setAnimation : animation -> unit Js.meth
  method setAttribution : _Attribution Js.t -> unit Js.meth
  method setClickable : bool Js.t -> unit Js.meth
  method setCursor : Js.js_string Js.t -> unit Js.meth
  method setDraggable : bool Js.t -> unit Js.meth
  method setIcon : string_or_Icon_or_Symbol -> unit Js.meth
  method setLabel : string_or_MarkerLabel -> unit Js.meth
  method setMap : _Map_or_StreetViewPanorama -> unit Js.meth
  method setOpacity : Js.number Js.t -> unit Js.meth
  method setOptions : _MarkerOptions Js.t -> unit Js.meth
  method setPlace : _MarkerPlace Js.t -> unit Js.meth
  method setPosition : (* _LatLng_or_LatLngLiteral *) _LatLng Js.t -> unit Js.meth
  method setShape : _MarkerShape Js.t -> unit Js.meth
  method setTitle : Js.js_string Js.t -> unit Js.meth
  method setVisible : bool Js.t -> unit Js.meth
  method setZIndex : Js.number Js.t -> unit Js.meth

  method _MAX_ZINDEX : markerConstant Js.readonly_prop
end

let dataFeature =
  (Js.Unsafe.js_expr "google.maps.Data")##_Feature

let mvcObject =
  (Js.Unsafe.js_expr "google.maps")##_MVCObject

let map =
  (Js.Unsafe.js_expr "google.maps")##_Map

let latLng =
  (Js.Unsafe.js_expr "google.maps")##_LatLng

let latLngBounds =
  (Js.Unsafe.js_expr "google.maps")##_LatLngBounds

let streetViewPanorama =
  (Js.Unsafe.js_expr "google.maps")##_StreetViewPanorama

let size =
  (Js.Unsafe.js_expr "google.maps")##_Size

let point =
  (Js.Unsafe.js_expr "google.maps")##_Point

let directionsRenderer =
  (Js.Unsafe.js_expr "google.maps")##_DirectionsRenderer

let infoWindow =
  (Js.Unsafe.js_expr "google.maps")##_InfoWindow

let directionsService =
  (Js.Unsafe.js_expr "google.maps")##_DirectionsService

let marker =
  (Js.Unsafe.js_expr "google.maps")##_Marker

let polyline =
  (Js.Unsafe.js_expr "google.maps")##_Polyline

let rectangle =
  (Js.Unsafe.js_expr "google.maps")##_Rectangle

let circle =
  (Js.Unsafe.js_expr "google.maps")##_Circle

let data =
  (Js.Unsafe.js_expr "google.maps")##_Data

let mapTypeRegistry =
  (Js.Unsafe.js_expr "google.maps")##_MapTypeRegistry

let emptyMapOptions () = Js.Unsafe.obj [||]

let emptyMapTypeStyle () = Js.Unsafe.obj [||]

let emptyMapTypeStyler () = Js.Unsafe.obj [||]

let emptyDirectionsRendererOptions () = Js.Unsafe.obj [||]

let emptyDirectionsRequest () = Js.Unsafe.obj [||]

let emptyPlace () = Js.Unsafe.obj [||]

let emptyMarkerOptions () = Js.Unsafe.obj [||]

let emptyInfoWindowOptions () = Js.Unsafe.obj [||]

let emptyRectangleOptions () = Js.Unsafe.obj [||]

let emptyCircleOptions () = Js.Unsafe.obj [||]

let emptyPolylineOptions () = Js.Unsafe.obj [||]

let emptySymbol () = Js.Unsafe.obj [||]

let emptyDataStyleOptions () = Js.Unsafe.obj [||]

let mapTypeId =
  (Js.Unsafe.js_expr "google.maps")##_MapTypeId

let controlPosition =
  (Js.Unsafe.js_expr "google.maps")##_ControlPosition

let mapTypeControlStyle =
  (Js.Unsafe.js_expr "google.maps")##_MapTypeControlStyle

let scaleControlStyle =
  (Js.Unsafe.js_expr "google.maps")##_ScaleControlStyle

let streetViewStatus =
  (Js.Unsafe.js_expr "google.maps")##_StreetViewStatus

let zoomControlStyle =
  (Js.Unsafe.js_expr "google.maps")##_ZoomControlStyle

let travelMode =
  (Js.Unsafe.js_expr "google.maps")##_TravelMode

let vehicleType =
  (Js.Unsafe.js_expr "google.maps")##_VehicleType

let animation =
  (Js.Unsafe.js_expr "google.maps")##_Animation

let transitMode =
  (Js.Unsafe.js_expr "google.maps")##_TransitMode

let transitRoutePreference =
  (Js.Unsafe.js_expr "google.maps")##_TransitRoutePreference

let unitSystem =
  (Js.Unsafe.js_expr "google.maps")##_UnitSystem

let trafficModel =
  (Js.Unsafe.js_expr "google.maps")##_TrafficModel

let directionsStatus =
  (Js.Unsafe.js_expr "google.maps")##_DirectionsStatus

let markerConstant =
  (Js.Unsafe.js_expr "google.maps")##_Marker

let symbolPath =
  (Js.Unsafe.js_expr "google.maps")##_SymbolPath