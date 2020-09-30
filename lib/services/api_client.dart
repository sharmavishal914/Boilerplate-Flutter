import 'package:flutterboilerplate/common/constants/constants.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'api_response.dart';

class APIClient {
  static const baseUrl = '<API Base Url>';
  static const baseAPIUrl = baseUrl + "api/";

  final http.Client httpClient;

  APIClient({@required this.httpClient}) : assert(httpClient != null);

  Future<APIResponse> getRequest(String url, {Map parameters}) async {
    final response = await http.get(url + _getQueryString(parameters));
    return _response(response);
  }

  Future<APIResponse> postRequest(String url, {Map body}) async {
    print("Request=" + url + _getQueryString(body));
    final response = await http.post(url, body: body);
    print("Response=" + url + "==>" + response.body.toString());
    return _response(response);
  }

  String _getQueryString(
    Map params, {
    String prefix: '&',
    bool inRecursion: false,
  }) {
    String query = '';
    params.forEach((key, value) {
      if (inRecursion) {
        key = '[$key]';
      }
      if (value is String || value is int || value is double || value is bool) {
        query += '$prefix$key=$value';
      } else if (value is List || value is Map) {
        if (value is List) value = value.asMap();
        value.forEach((k, v) {
          query += _getQueryString({k: v}, prefix: '$prefix$key', inRecursion: true);
        });
      }
    });
    return query;
  }

  APIResponse _response(http.Response response) {
    if (response.statusCode == 200) {
      if (response.body.toUpperCase().contains(StringConstant.INVALID_REQUEST.toUpperCase())) {
        return APIResponse.loginSessionExpired(StringConstant.INVALID_REQUEST);
      } else {
        return APIResponse.success(response.body);
      }
    } else {
      return APIResponse.error(response.body.toString());
    }
  }
}
