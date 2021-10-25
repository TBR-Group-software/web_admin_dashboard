class JsonWebTokenDto {
  final String accessToken;
  final String refreshToken;

  JsonWebTokenDto({
    required this.accessToken,
    required this.refreshToken,
  });
}
