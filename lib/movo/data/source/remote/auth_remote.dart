import '../../../../core/helper/api.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class AuthRemote {
  Future<String> requestToken();
  Future<void> askPermission();
  Future<String> createSession();
}

class AuthRemoteImp implements AuthRemote {
  final Api _api;
  final String token = '';
  const AuthRemoteImp(this._api);

  @override
  Future<String> requestToken() async {
    final response = await _api.get("authentication/token/new");
    return response.data!['request_token'];
  }

  @override
  Future<void> askPermission() async {
    final Uri url = Uri.parse(
      'https://www.themoviedb.org/authenticate/$token',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Future<String> createSession() async {
    final response = await _api.post(
      "authentication/session/new?request_token=$token",
    );
    return response.data!['session_id'];
  }
}
