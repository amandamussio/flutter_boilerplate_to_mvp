import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate_to_mvp/modules/auth/domain/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  
  AuthCubit(this._authFacade) : super(AuthState.initial());

  final IAuthFacade _authFacade;

  Future<void> authCheckRequested() async {
    final userOption = await _authFacade.getSignedInUser();
      userOption.fold(
          () =>  emit(const AuthState.unauthenticated()),
          (_) => emit(const AuthState.authenticated()),
        );
  }

  Future<void> logout() async {
      await _authFacade.signOut();
      emit(const AuthState.unauthenticated());
  }
}
