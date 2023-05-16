class AuthProvider {

static final AuthProvider _shared = AuthProvider._sharedInstance();
  AuthProvider._sharedInstance();
  factory AuthProvider() => _shared;


  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
