import 'package:http/http.dart' as http;
import 'package:mpbsindia/apidemo/userview.dart';

Future<List<Userviews>> fetchUserviews() async {
  String url = "https://chameleonlike-house.000webhostapp.com/test/view.php";
  final response = await http.get(Uri.parse(url));
  return userviewsFromJson(response.body);
}
