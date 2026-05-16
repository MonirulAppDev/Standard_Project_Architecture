import 'package:spa_v2/core/base/base_viewmodel.dart';
import 'package:spa_v2/features/auth/domain/usecases/login_usecase.dart';
import 'package:spa_v2/features/auth/presentation/states/auth_state.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';

class AuthProvider extends BaseViewModel {
  final LoginUseCase _loginUseCase;

  AuthProvider(this._loginUseCase);

  AuthState _state = AuthInitial();
  AuthState get state => _state;

  Future<void> login(String email, String password) async {
    _state = AuthLoading();
    notifyListeners();

    try {
      final user = await _loginUseCase(LoginRequestModel(email: email, password: password));
      _state = AuthAuthenticated(user);
    } catch (e) {
      _state = AuthError(e.toString());
    }
    notifyListeners();
  }
}
