import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart' as geo;

class MapsScreen extends StatefulWidget {
  final double latitude;
  final double longitude;
  const MapsScreen({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  late LatLng dicodingOffice;
  late GoogleMapController mapController;
  final Set<Marker> markers = {};
  MapType selectedMapType = MapType.normal;
  geo.Placemark? placemark;

  Future<void> setMapStyle() async {
    String value = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/style-map.json');
    await mapController.setMapStyle(value);
  }

  @override
  void initState() {
    super.initState();
    dicodingOffice = LatLng(widget.latitude, widget.longitude);

    final marker = Marker(
      markerId: const MarkerId("dicoding"),
      position: dicodingOffice,
      onTap: () {
        mapController.animateCamera(
          CameraUpdate.newLatLngZoom(dicodingOffice, 18),
        );
      },
    );
    markers.add(marker);

    getLocation();
  }

  Future<String?> getLocation() async {
    final info = await geo.placemarkFromCoordinates(
      dicodingOffice.latitude,
      dicodingOffice.longitude,
    );

    final place = info[0];
    return '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getLocation(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final street = snapshot.data;
          return Card(
            child: Container(
              padding: EdgeInsets.all(0.0),
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // sesuaikan dengan Card
                      child: GoogleMap(
                        indoorViewEnabled: true,
                        mapType: selectedMapType,
                        initialCameraPosition: CameraPosition(
                          target: dicodingOffice,
                          zoom: 15,
                        ),
                        onMapCreated: (controller) async {
                          setState(() {
                            mapController = controller;
                          });

                          await setMapStyle();
                        },
                        myLocationButtonEnabled: false,
                        zoomControlsEnabled: false,
                        mapToolbarEnabled: false,
                        markers: markers,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text(street!)),
                ],
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
