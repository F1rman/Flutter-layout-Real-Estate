import 'package:buildings/styles/style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FeedbackForm extends StatefulWidget {
  FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF070817),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      'Форма зворотнього зв’язвку',
                      style: h2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      height: 262,
                      child: MapSample(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
LatLng _center = LatLng(9.669111, 80.014007);

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    getIcons();
    super.initState();
  }

  var icon;
// Cargar imagen del Marker
  getIcons() async {
    icon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 3.2), "assets/img/marker.png");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      myLocationButtonEnabled: false,
      mapType: MapType.normal,
      gestureRecognizers: Set()
        ..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer())),
      markers: markers.values.toSet(),
      initialCameraPosition: CameraPosition(
        target: LatLng(38.897957, -77.036560),
        zoom: 13.0,
      ),
      onMapCreated: (GoogleMapController controller) {
        _onMapCreated(controller);
      },
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_styles/mapstyle.json');
    var t = await _controller.future;
    t.setMapStyle(value);

    final marker = Marker(
      markerId: MarkerId('Washington'),
      position: LatLng(38.897957, -77.036560),
      icon: icon,
    );

    setState(() {
      markers[MarkerId('Washington')] = marker;
    });
  }
}
