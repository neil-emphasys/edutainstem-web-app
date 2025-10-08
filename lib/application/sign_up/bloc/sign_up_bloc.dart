import 'package:bloc/bloc.dart';
import 'package:edutainstem/core/services/loader_services.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/domain/repositories/firebase_auth_repository.dart';
import 'package:edutainstem/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final FirebaseAuthRepository firebaseAuthRepository;

  SignUpBloc(this.firebaseAuthRepository)
    : super(_Initial(user: UserModel.initial())) {
    /* on<_DataChanged>((event, emit) {
      state.whenOrNull(
        initial: (user) {
          final currentState = state as _Initial;

          emit(
            currentState.copyWith(
              user: currentState.user.copyWith(
                firstName: event.firstName ?? currentState.user.firstName,
                lastName: event.lastName ?? currentState.user.lastName,
                email: event.email ?? currentState.user.email,
                password: event.firstName ?? currentState.user.password,
                preferredLanguage:
                    event.preferredLanguage ??
                    currentState.user.preferredLanguage,
              ),
            ),
          );
        },
      );
    }); */

    on<_SignUp>((event, emit) async {
      it<LoaderServices>().show(status: 'Signing Up User...');
      final result = await firebaseAuthRepository.signUp(event.user);
      it<LoaderServices>().dismiss();

      result.fold(
        (l) {
          emit(SignUpState.error(title: l.title ?? '', message: l.message));
          emit(SignUpState.initial(user: event.user));
        },
        (r) {
          emit(SignUpState.signedUp(user: r.data));
          emit(SignUpState.initial(user: event.user));
        },
      );
    });
  }
}
