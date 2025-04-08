import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:location/location.dart';

class PutMaps extends StatefulWidget {
  final Function(LatLng latLng) selectMaps;
  const PutMaps({super.key, required this.selectMaps});

  @override
  State<PutMaps> createState() => _PutMapsState();
}

class _PutMapsState extends State<PutMaps> {
  final LatLng dicodingOffice = const LatLng(-6.175392, 106.827153);
  late GoogleMapController mapController;
  final Set<Marker> markers = {};
  geo.Placemark? placemark;

  @override
  void initState() {
    super.initState();
    defineMarker(dicodingOffice, "Dicoding Office", "Jl. Kebon Jeruk");
  }

  void defineMarker(LatLng latLng, String street, String address) {
    final marker = Marker(
      markerId: const MarkerId("source"),
      position: latLng,
      infoWindow: InfoWindow(title: street, snippet: address),
    );

    widget.selectMaps(latLng);
    setState(() {
      markers.clear();
      markers.add(marker);
    });
  }

  void onMyLocationButtonPress() async {
    final Location location = Location();
    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    late LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        print("Location services is not available");
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        print("Location permission is denied");
        return;
      }
    }

    locationData = await location.getLocation();
    final latLng = LatLng(locationData.latitude!, locationData.longitude!);

    final info = await geo.placemarkFromCoordinates(
      latLng.latitude,
      latLng.longitude,
    );

    final place = info[0];
    final street = place.street;
    final address =
        '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {
      placemark = place;
    });

    defineMarker(latLng, street!, address);

    mapController.animateCamera(CameraUpdate.newLatLng(latLng));
  }

  void onLongPressGoogleMap(LatLng latLng) async {
    final info = await geo.placemarkFromCoordinates(
      latLng.latitude,
      latLng.longitude,
    );
    final place = info[0];
    final street = place.street!;
    final address =
        '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {
      placemark = place;
    });
    defineMarker(latLng, street, address);

    mapController.animateCamera(CameraUpdate.newLatLng(latLng));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            GoogleMap(
              indoorViewEnabled: true,
              zoomControlsEnabled: false,
              mapToolbarEnabled: false,
              myLocationButtonEnabled: false,
              myLocationEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: dicodingOffice,
                zoom: 15,
              ),
              onMapCreated: (controller) async {
                final marker = Marker(
                  markerId: const MarkerId("source"),
                  position: dicodingOffice,
                );

                final info = await geo.placemarkFromCoordinates(
                  dicodingOffice.latitude,
                  dicodingOffice.longitude,
                );
                final place = info[0];
                final street = place.street!;
                final address =
                    '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
                setState(() {
                  placemark = place;
                  mapController = controller;
                });
                defineMarker(dicodingOffice, street, address);
              },
              markers: markers,
              onLongPress: (LatLng latLng) {
                onLongPressGoogleMap(latLng);
              },
            ),
            Positioned(
              top: 16,
              right: 16,
              child: FloatingActionButton(
                child: const Icon(Icons.my_location),
                onPressed: () {
                  onMyLocationButtonPress(); // current location
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
