// import 'package:kiwi/kiwi.dart';
//
// import 'package:seed/common/http/http_client.dart';
// import 'package:seed/data/datasources/local/local_database/todo_local_datasource.dart';
// import 'package:seed/data/datasources/remote/todo_remote_datasource.dart';
// import 'package:seed/data/repositories/todo_repository_impl.dart';
// import 'package:seed/domain/repositories/todo_repository.dart';
// import 'package:seed/domain/usescases/todo_usecase.dart';
// import 'package:seed/presentation/journey/todo/bloc/todo_bloc.dart';
// import 'package:seed/presentation/journey/todo/bloc/todo_state.dart';
//
// part 'injector_config.g.dart';
//
// abstract class InjectorConfig {
//   static late KiwiContainer container;
//
//   static void setup() {
//     container = KiwiContainer();
//     _$InjectorConfig()._configure();
//   }
//
//   // ignore: type_annotate_public_apis
//   static final resolve = container.resolve;
//
//   void _configure() {
//     _configureBlocs();
//     // _configureUsecases();
//     // _configureRepositories();
//     // _configureRemoteDataSources();
//     // _configureLocalDataSources();
//     // _configureCommon();
//   }
//
//   // ============ BLOCS ============
//   @Register.singleton(TodoBloc)
//   void _configureBlocs();
//
//   // ============ USECASES ============
//   @Register.singleton(TodoUsecase)
//   void _configureUsecases();
//
//   // ============ REPOSITORIES ============
//   @Register.singleton(TodoRepository, from: TodoRepositoryImpl)
//   void _configureRepositories();
//
//   // ============ REMOTE DATASOURCES ============
//   @Register.singleton(TodoRemoteDatasource)
//   void _configureRemoteDataSources();
//
//   // ============ LOCAL DATASOURCES ============
//   @Register.singleton(TodoLocalDatasource)
//   void _configureLocalDataSources();
//
//   // ============ COMMON ============
//   @Register.singleton(HttpClient, constructorName: 'setTodoAPIhost')
//   void _configureCommon();
// }
