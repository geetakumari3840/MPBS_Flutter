import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class ContactOne extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () => MapsLauncher.launchQuery(
                'Central Park, Shastri Nagar, Kanpur, Uttar Pradesh, India'),
            child: Text('LAUNCH QUERY'),
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => MapsLauncher.launchCoordinates(26.469011799655554,
                80.29583655276349, 'Google Headquarters are here'),
            child: Text('LAUNCH COORDINATES'),
          ),
        ],
      ),
    );
  }
}
