import 'package:flutter/material.dart';
import 'package:mpbsindia/apidemo/userview.dart';
import 'package:mpbsindia/apidemo/vuew.api.dart';
import 'package:http/http.dart' as http;

class ApiDemo extends StatelessWidget {
  const ApiDemo({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Demo'),
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchUserviews(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error fatching Data'),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Userviews userview = snapshot.data[index];
                  return Text('${userview.name}');
                });
          },
        ),
      ),
    );
  }
}
