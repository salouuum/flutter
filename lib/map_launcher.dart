
import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
class Map_Launcher extends StatefulWidget {


  @override
  State<Map_Launcher> createState() => _Map_LauncherState();
}

class _Map_LauncherState extends State<Map_Launcher> {
  Future<bool> _ismapavailable () async {
    bool? available = await MapLauncher.isMapAvailable(MapType.google);
    bool damn = available! ;
    if (damn) {
      return true;
    } else {
      return false;
    }
  }
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async{
         if (await _ismapavailable()){
          MapLauncher.showMarker(
              mapType: MapType.google,
              coords: Coords(37.42796133580664, -122.085749655962),
              title: 'title',
          );
         }
          },
          child: Row(
            children: [
              Icon(
                Icons.map,
              ),
              Text(
                  'Open Maps',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
