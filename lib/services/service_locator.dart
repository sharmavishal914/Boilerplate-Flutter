// ambient variable to access the service locator
import 'package:get_it/get_it.dart';
import 'services.dart';
import 'package:http/http.dart' as http;

GetIt sl = GetIt.instance;

Future<void> setup() async {
  sl.registerSingleton<APIClient>(APIClient(httpClient: http.Client()));
  SessionManager sessionManager = SessionManager();
  await sessionManager.init();
  sl.registerSingleton<SessionManager>(sessionManager);
}
