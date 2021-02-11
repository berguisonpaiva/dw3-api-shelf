import 'package:pizza_delivery_app/app/helpers/rest_client.dart';
import 'package:pizza_delivery_app/app/models/user_model.dart';

class UserRepository {
  final RestClient restClient;

  UserRepository(this.restClient);

  Future<UserModel> login(String email, String password) async {
    final response = await restClient.post(
      '/user/auth',
      {'email': email, 'password': password},
      decoder: (resp) {
        if (resp != '') {
          return UserModel.fromMap(resp);
        }
      },
    );
    if (response.hasError) {
      String message = 'Erro ao autenticar usuário n';

      if (response.statusCode == 403) {
        message = 'Usuário e Senha Inválidos';
      }
      throw RestClientException(message);
    }
    return response.body;
  }
}
