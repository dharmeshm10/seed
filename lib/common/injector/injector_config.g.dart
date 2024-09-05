// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'injector_config.dart';
//
// // **************************************************************************
// // KiwiInjectorGenerator
// // **************************************************************************
//
// class _$InjectorConfig extends InjectorConfig {
//   @override
//   void _configureBlocs() {
//     final KiwiContainer container = KiwiContainer();
//     container
//         .registerSingleton((c) => TodoBloc(c<TodoState>(), c<TodoUsecase>()));
//   }
//
//   @override
//   void _configureUsecases() {
//     final KiwiContainer container = KiwiContainer();
//     container.registerSingleton(
//         (c) => TodoUsecase(todoRepository: c<TodoRepository>()));
//   }
//
//   @override
//   void _configureRepositories() {
//     final KiwiContainer container = KiwiContainer();
//     container.registerSingleton<TodoRepository>((c) => TodoRepositoryImpl(
//         todoRemoteDatasource: c<TodoRemoteDatasource>(),
//         todoLocalDatasource: c<TodoLocalDatasource>()));
//   }
//
//   @override
//   void _configureRemoteDataSources() {
//     final KiwiContainer container = KiwiContainer();
//     container.registerSingleton(
//         (c) => TodoRemoteDatasource(httpClient: c<HttpClient>()));
//   }
//
//   @override
//   void _configureLocalDataSources() {
//     final KiwiContainer container = KiwiContainer();
//     container.registerSingleton((c) => TodoLocalDatasource());
//   }
//
//   @override
//   void _configureCommon() {
//     final KiwiContainer container = KiwiContainer();
//     container.registerSingleton((c) => HttpClient.setTodoAPIhost());
//   }
// }
