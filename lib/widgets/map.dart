import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'my_icons.dart';

Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    getIcons();
    super.initState();
  }

  var icon;
// Cargar imagen del Marker
  getIcons() async {
    icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 3.2, size: Size(24, 24)),
        "assets/img/marker.png");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      height: 262,
      child: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            gestureRecognizers: Set()
              ..add(
                  Factory<PanGestureRecognizer>(() => PanGestureRecognizer())),
            markers: markers.values.toSet(),
            initialCameraPosition: const CameraPosition(
              target: LatLng(38.897957, -77.036560),
              zoom: 13.0,
            ),
            onMapCreated: (GoogleMapController controller) {
              _onMapCreated(controller);
            },
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Row(
              children: [
                Container(
                  width: 77,
                  height: 44,
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF090A1B),
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {}, // button pressed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MyIcons.map,
                            size: 20,
                            color: Color(0xFFFF9176),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Карта',
                              style: TextStyle(
                                fontFamily: 'SFProDisplay',
                                letterSpacing: -.24,
                                color: Color(0xFFFFFFFF),
                                fontSize: 13,
                                height: 1.35,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_styles/mapstyle.json');
    var t = await _controller.future;
    t.setMapStyle(value);

    final marker = Marker(
      markerId: const MarkerId('Washington'),
      position: const LatLng(38.897957, -77.036560),
      icon: icon,
    );

    setState(() {
      markers[const MarkerId('Washington')] = marker;
    });
  }
}
