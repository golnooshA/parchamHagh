
import 'package:parcham_hagh/core/storage/settings.dart';

class HttpConfig {
  // static const String host = 'ca1c1e87ba99.ngrok.io';
  static const String host = 'aqra.site';

  static Uri uri(String path, {bool isApi = true, Map<String, String> queryParameters = const {}}){
    queryParameters = {
      'lang': Settings.languageCode ?? 'en',
      ...queryParameters
    };
    return Uri.https(host, isApi ? '/api/' + path : path, queryParameters);
  }

  static String url(String path, {bool isApi = true, Map<String, String> queryParameters = const {}}){
    return uri(path, isApi: isApi, queryParameters: queryParameters).toString();
  }
}