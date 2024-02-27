

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginButtonPressed>(_onLoginRequest);
    on<AuthLogoutButtonPressed>(_onLogoutRequested);
    
  }

  


  void _onLoginRequest(AuthLoginButtonPressed event,Emitter<AuthState> emit) async {
      emit(AuthLoading());
      try {
  final email = event.email;
  final password = event.password;
  
  if (password.length < 6) {
    return emit(AuthFailure('Password must be at least 6 characters'));
  }
  
  await Future.delayed(const Duration(seconds: 4),  (){
    emit(AuthSuccess(uid: "$email-$password"));
  });
} on Exception catch (e) {
  emit(AuthFailure(e.toString()));
}
  }

void _onLogoutRequested(AuthLogoutButtonPressed event,Emitter<AuthState> emit) async {
       emit (AuthLoading());
       try {
        await Future.delayed(const Duration(seconds: 4),  (){
    return emit(AuthInitial());
    }
     );
  
         
       } catch (e) {
         emit(AuthFailure(e.toString()));
         
       }
    }

    

}
