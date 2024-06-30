import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gestao_restaurante/dados/entidades/local_user.dart';
import 'package:gestao_restaurante/dados/entidades/local_user_credential.dart';
import 'package:gestao_restaurante/dados/servicos/login_firebase.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    _loginFirebase = LoginFirebase.instance;

    on<SignInEvent>(_onSignInEvent);
    on<SignUpEvent>(_onSignUpEvent);
  }

  late final LoginFirebase _loginFirebase;

  FutureOr<void> _onSignInEvent(
    SignInEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationLoading());
    try {
      final email = event.email;
      final password = event.password;

      final user = await _loginFirebase.login(email, password);

      if (user != null) {
        emit(AuthenticationSignInSuccess(user: user));
      } else {
        emit(const AuthenticationSignInError('Erro ao realizar login'));
      }
    } catch (e) {
      print(e);
      if (e is FirebaseAuthException) {
        if (e.code == 'invalid-credential') {
          emit(const AuthenticationSignInError('Credenciais inválidas'));
        }

        if (e.code == 'user-disabled') {
          emit(const AuthenticationSignInError('Usuário desabilitado'));
        }

        if (e.code == 'user-not-found') {
          emit(const AuthenticationSignInError('Usuário não encontrado'));
        }

        return;
      }
      emit(const AuthenticationSignInError('Erro ao realizar login'));
    }
  }

  FutureOr<void> _onSignUpEvent(
    SignUpEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationLoading());
    try {
      final nome = event.nome;
      final email = event.email;
      final password = event.password;
      final role = event.role;

      final user = await _loginFirebase.register(
        LocalUserCredential.make(
          nome: nome,
          email: email,
          password: password,
          role: role,
        ),
      );

      if (user != null) {
        emit(AuthenticationSignUpSuccess(user: user));
      } else {
        emit(const AuthenticationSignUpError('Erro ao realizar login'));
      }
    } catch (e) {
      print(e);
      emit(const AuthenticationSignUpError('Erro ao realizar login'));
    }
  }
}
