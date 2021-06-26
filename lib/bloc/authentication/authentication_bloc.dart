import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutterblocfoodproductapp/data/securestorage.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(Uninitialized());

  final storageRepository = SecureStorage();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      var token = await storageRepository.hasToken();

      if (token != '') {
        yield Authenticated();
      } else
        yield UnAuthenticated();
    } else if (event is LoggedIn) {
      var token = event.token;
      var email = event.email;
      storageRepository.persistEmailAndToken(email, token);
      yield Authenticated();
    } else if (event is LoggedOut) {
      storageRepository.deleteAll();
      yield Authenticated();
    }
  }
}
