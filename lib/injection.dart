import 'package:dio/dio.dart';
import 'package:edutainstem/application/rooms/room_bloc/room_bloc.dart';
import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/services/json_download_service.dart';
import 'package:edutainstem/core/services/loader_services.dart';
import 'package:edutainstem/core/services/validator_service.dart';
import 'package:edutainstem/data/repositories/room_repository_impl.dart';
import 'package:edutainstem/data/sources/remote/room_data_source.dart';
import 'package:edutainstem/data/sources/remote/room_data_source_impl.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt it = GetIt.instance;
User? user;

Future<void> init() async {
  user =
      FirebaseAuth.instance.currentUser ??
      (await FirebaseAuth.instance.signInAnonymously()).user;

  // * [SERVICES
  it.registerLazySingleton<ValidatorService>(() => const ValidatorService());
  it.registerLazySingleton<JsonDownloadService>(() => JsonDownloadService());
  it.registerLazySingleton<LoaderServices>(() => LoaderServices());

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
  // it.registerLazySingleton(
  //   () => google.GoogleSignIn(scopes: AppConstants.googleSignInScopes),
  // );

  // * [DATA SOURCES]
  it.registerLazySingleton<RoomDataSource>(() => RoomDataSourceImpl());

  // * [REPOSITORY]
  it.registerLazySingleton<RoomRepository>(() => RoomRepositoryImpl(it()));

  // * [BLOC]
  it.registerFactory<RoomBloc>(() => RoomBloc(it()));
  it.registerFactory<RoomCreateBloc>(() => RoomCreateBloc(it()));
}
