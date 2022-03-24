// import 'dart:async';
// import 'dart:html';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
//
//
// class GoogleMaps extends StatefulWidget {
//
//   @override
//   State<GoogleMaps> createState() => _GoogleMapsState();
// }
//
// class _GoogleMapsState extends State<GoogleMaps> {
//   Completer<GoogleMapController> _controller = Completer();
//   late LocationData currentLocation ;
//   var location = new Location();
//
//   late GoogleMapController _mapController ;
//
//   Set<Marker> markers = Set<Marker>();
//
//   @override
//   void initState()  {
//     super.initState();
//   }
//
//   void setmarker(LatLng position, String id) {
//     setState(() {
//       markers.add(
//           Marker(markerId: MarkerId(id), position: position)
//       );
//     });
//   }
//
//
//
//   @override
//   // Widget build(BuildContext context)  {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       leading: IconButton(onPressed: () async{
//   //       Position position = await getlocation();
//   //       _mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude))));
//   //       }, icon: Icon(Icons.map)),
//   //     ),
//   //     body: SafeArea(
//   //       child: GoogleMap
//   //         (
//   //         initialCameraPosition: CameraPosition(target: _cameraPosition.target ,zoom: 15.0,),
//   //         mapType: MapType.normal,
//   //         markers: markers,
//   //         onTap: (point) {
//   //           setmarker(LatLng(point.latitude, point.longitude), '1');
//   //
//   //         },
//   //         myLocationButtonEnabled: true,
//   //         myLocationEnabled: true,
//   //     onMapCreated: (GoogleMapController controller){
//   //       _mapController = controller ;
//   //     },
//   //       ),
//   //     ),
//   //   );
//   // }
// Future<Position> getlocation () async{
//     bool serviceenabled ;
//     LocationPermission permission;
//
//     serviceenabled = await Geolocator.isLocationServiceEnabled();
//     if(!serviceenabled){
//       return Future.error('location services are not enabled');
//     }
//     permission = await Geolocator.checkPermission();
//
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//
//       if (permission == LocationPermission.denied) {
//         return Future.error("Location permission denied");
//       }
//     }
//
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error('Location permissions are permanently denied');
//     }
//
//     Position position = await Geolocator.getCurrentPosition();
//
//     return position;
// }
// }
//
//
