import 'package:randommerio_basic/randommerio_basic.dart' as randommerio_basic;
import 'package:http/http.dart' as http;

void main() async {
  // Create a URL to the Randommer.io API
  Uri url = Uri(
    scheme: 'https',
    host: 'randommer.io',
    path: 'api/Card/',
  );

  //  Create a header for the request
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-Api-Key': 'a45a594e67814c30883787b95fec5af1'
  };
// Make a get request to the API
  http.Response response = await http.get(
    url,
    headers: headers,
  );
  // Print the status code and body of the response
  print('Status code: ${response.statusCode}');
}
