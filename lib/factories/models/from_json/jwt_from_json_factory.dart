import 'package:web_admin_dashboard/data/models/jwt_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class JsonWebTokenDtoFromJsonFactory
    implements Factory<JsonWebTokenDto, Map<String, dynamic>> {
  @override
  JsonWebTokenDto create(Map<String, dynamic> arg) => JsonWebTokenDto(
        accessToken: arg['access_token'] as String,
        refreshToken: arg['refresh_token'] as String,
      );
}
