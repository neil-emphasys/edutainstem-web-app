import 'package:dio/dio.dart';
import 'package:edutainstem/application/accounts/accounts_bloc/accounts_bloc.dart';
import 'package:edutainstem/application/accounts/switch_cubit/switch_cubit.dart';
import 'package:edutainstem/application/auth/bloc/firebase_auth_bloc.dart';
import 'package:edutainstem/application/rooms/room_bloc/room_bloc.dart';
import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/application/sidebar/cubit/sidebar_x_cubit.dart';
import 'package:edutainstem/application/sign_up/bloc/sign_up_bloc.dart';
import 'package:edutainstem/core/constants/constants.dart';
import 'package:edutainstem/core/services/dialog_services.dart';
import 'package:edutainstem/core/services/json_download_service.dart';
import 'package:edutainstem/core/services/loader_services.dart';
import 'package:edutainstem/core/services/toastification_service.dart';
import 'package:edutainstem/core/services/validator_service.dart';
import 'package:edutainstem/data/repositories/accounts_repository_impl.dart';
import 'package:edutainstem/data/repositories/firebase_auth_repository_impl.dart';
import 'package:edutainstem/data/repositories/room_repository_impl.dart';
import 'package:edutainstem/data/sources/remote/accounts_data_source.dart';
import 'package:edutainstem/data/sources/remote/accounts_data_source_impl.dart';
import 'package:edutainstem/data/sources/remote/firebase_auth_data_source.dart';
import 'package:edutainstem/data/sources/remote/firebase_auth_data_source_impl.dart';
import 'package:edutainstem/data/sources/remote/room_data_source.dart';
import 'package:edutainstem/data/sources/remote/room_data_source_impl.dart';
import 'package:edutainstem/domain/repositories/accounts_repository.dart';
import 'package:edutainstem/domain/repositories/firebase_auth_repository.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart' as google;
import 'package:shared_preferences/shared_preferences.dart';

final GetIt it = GetIt.instance;

Future<void> init() async {
  // * [SERVICES]
  // it.registerLazySingleton<AuthStorageService>(() => AuthStorageService());
  it.registerLazySingleton<ValidatorService>(() => const ValidatorService());
  it.registerLazySingleton<JsonDownloadService>(() => JsonDownloadService());
  it.registerLazySingleton<LoaderServices>(() => LoaderServices());
  it.registerLazySingleton<DialogService>(() => DialogService());
  it.registerLazySingleton<ToastificationService>(
    () => ToastificationService.I,
  );

  // * [DIO / API]
  final Dio dio = Dio();
  dio.interceptors.add(
    LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  );
  it.registerLazySingleton(() => dio);

  // * [LOCAL STORAGE]
  it.registerLazySingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  await GetIt.instance.isReady<SharedPreferences>();

  // * [FIREBASE AUTH]
  it.registerLazySingleton(() => FirebaseAuth.instance);
  it.registerLazySingleton(
    () => google.GoogleSignIn(scopes: AppConstants.googleSignInScopes),
  );

  // * [DATA SOURCES]
  it.registerLazySingleton<RoomDataSource>(() => RoomDataSourceImpl());
  it.registerLazySingleton<FirebaseAuthDataSource>(
    () => FirebaseAuthDataSourceImpl(firebaseAuth: it(), googleSignIn: it()),
  );
  it.registerLazySingleton<AccountsDataSource>(() => AccountsDataSourceImpl());

  // * [REPOSITORY]
  it.registerLazySingleton<RoomRepository>(() => RoomRepositoryImpl(it()));
  it.registerLazySingleton<FirebaseAuthRepository>(
    () => FirebaseAuthRepositoryImpl(it()),
  );
  it.registerLazySingleton<AccountsRepository>(
    () => AccountsRepositoryImpl(it()),
  );

  // * [BLOC]
  it.registerFactory<SwitchCubit>(() => SwitchCubit(it()));

  // * [BLOC]
  it.registerFactory<RoomBloc>(() => RoomBloc(it()));
  it.registerFactory<RoomCreateBloc>(() => RoomCreateBloc(it()));
  it.registerFactory<FirebaseAuthBloc>(() => FirebaseAuthBloc(it()));
  it.registerFactory<SignUpBloc>(() => SignUpBloc(it()));
  it.registerFactory<AccountsBloc>(() => AccountsBloc(it()));
  it.registerFactory<SidebarXCubit>(() => SidebarXCubit());
}
