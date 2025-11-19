class ApiConfig {
  // GANTI dengan baseUrl WireMock kamu
  static const String baseUrl = 'https://vz37q.wiremockapi.cloud';
  static const String usersEndpoint = '/users';
  static const int timeoutSeconds = 30;

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}
