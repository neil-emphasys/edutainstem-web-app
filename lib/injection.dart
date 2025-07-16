import 'package:dio/dio.dart';
import 'package:edutainstem/application/rooms/room_bloc/room_bloc.dart';
import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt it = GetIt.instance;

Future<void> init() async {
  // * [SERVICES
  // it.registerLazySingleton<GiffyDialogService>(() => GiffyDialogService());

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
  // it.registerLazySingletonAsync<SharedPreferences>(
  //   () => SharedPreferences.getInstance(),
  // );
  // await GetIt.instance.isReady<SharedPreferences>();

  // * [FIREBASE AUTH]
  // it.registerLazySingleton(() => FirebaseAuth.instance);
  // it.registerLazySingleton(
  //   () => google.GoogleSignIn(scopes: AppConstants.googleSignInScopes),
  // );

  // * [DATA SOURCES]
  // it.registerLazySingleton<FirebaseAuthDataSource>(
  //   () => FirebaseAuthDataSourceImpl(firebaseAuth: it(), googleSignIn: it()),
  // );

  // * [REPOSITORY]
  // it.registerLazySingleton<FirebaseAuthRepository>(
  //   () => FirebaseAuthRepositoryImpl(it()),
  // );

  // * [BLOC]
  it.registerFactory<RoomBloc>(() => RoomBloc());
  it.registerFactory<RoomCreateBloc>(() => RoomCreateBloc());
}
