# Seed clean code architecture flutter

Seed app with clean code architecture.

## Overview

This repository follows Clean Code Architecture principles, dividing the project into three main layers:
1. **Data**
2. **Domain**
3. **Presentation**
4. **Common (Core)**

Each layer has a clear role and is separated to maintain scalability, testability, and maintainability.

---

### Architecture Layers

#### Common (Core)
The **common** layer contains functionalities used across the entire application, such as:
- HTTP client
- Environment configuration
- Platform-specific utilities (e.g., network checker)

These common utilities are shared between data, domain, and presentation layers. For example, the HTTP client is used by remote data sources, and network information is leveraged by the repository layer.

#### Domain
This is the innermost layer, housing the core business logic. It includes:
- **Usecases**: Business-specific actions that depend on repository contracts (not implementations).
- **Entities**: Business objects used across the domain logic.

The domain layer interacts with the repository to retrieve data or execute use cases.

#### Data
The **data** layer is responsible for handling communication with data sources. This layer:
- Implements the repositories defined in the domain layer.
- Communicates with data sources (e.g., APIs, databases).
- Maps data using `fromJson` and `toJson` methods without the need for extra mapper classes.

#### Presentation
The **presentation** layer contains all UI-related components, including:
- UI elements for displaying information.
- State management (BLoC pattern) which acts as the brain of the UI.

The presentation layer interacts with the domain layer through entities and use cases.

![CallFlow](https://github.com/dharmeshm10/seed/blob/main/assets/images/callFlow1.png)

The entity is somehow understood by both domain and repository so that they can communicate, that’s why it’s in middle.

<p align="center">
  <img src="https://github.com/dharmeshm10/seed/blob/main/assets/images/callFlow2.png" alt="CallFlow" width="400" height="400"/>
</p>


---

### Folder Structure

```bash
├── lib
│   ├── common
│   │   ├── configs
│   │   │   └── configuration.dart
│   │   │   ├── screen_utils.dart
│   │   ├── constants
│   │   │   ├── exception_constants.dart
│   │   │   ├── http_constants.dart
│   │   │   ├── local_database_type_constants.dart
│   │   │   └── route_constants.dart
│   │   ├── exceptions
│   │   │   ├── bad_request_exception.dart
│   │   │   ├── forbidden_exception.dart
│   │   │   ├── server_error_exception.dart
│   │   │   └── unauthorized_exception.dart
│   │   ├── extensions
│   │   │   └── string_extension.dart
│   │   ├── http
│   │   │   └── http_client.dart
│   │   ├── injector
│   │   │   ├── injector.dart
│   │   │   ├── injector_config.dart
│   │   │   └── injector_config.g.dart
│   │   └── utils
│   │       ├── database_util.dart
│   │       └── http_utils.dart
│   ├── data
│   │   ├── datasources
│   │   │   ├── local
│   │   │   │   ├── local_database
│   │   │   │   │   ├── base_local_database.dart
│   │   │   │   │   ├── tables
│   │   │   │   │   │   ├── todo_table.dart
│   │   │   │   │   │   └── todo_table.g.dart
│   │   │   │   └── todo_local_datasource.dart
│   │   │   └── remote
│   │   │       └── todo_remote_datasource.dart
│   │   ├── models
│   │   │   └── todo_model.dart
│   │   └── repositories
│   │       └── todo_repository_impl.dart
│   ├── domain
│   │   ├── entities
│   │   │   └── todo_entity.dart
│   │   ├── repositories
│   │   │   └── todo_repository.dart
│   │   └── usescases
│   │       └── todo_usecase.dart
│   ├── main.dart
│   └── presentation
│       ├── app.dart
│       ├── common_bloc
│       ├── journey
│       │   ├── dashboard
│       │   │   └── dashboard_screen.dart
│       │   └── todo
│       │       ├── bloc
│       │       │   └── todo_bloc.dart
│       │       └── todo_list
│       │           ├── todo_list_screen.dart
│       ├── routes.dart
│       ├── themes
│       │   └── theme_colors.dart
│       └── widgets
├── pubspec.lock
├── pubspec.yaml
test
├── __setup__
│   ├── base_test_bloc.dart
│   ├── navigation_mock.dart
│   ├── path_provider_mock.dart
│   └── wrapper.dart
├── common
│   ├── exceptions
│   │   ├── bad_request_exception_test.dart
│   │   ├── forbidden_exception_test.dart
│   │   ├── server_error_exception_test.dart
│   │   └── unauthorized_exception_test.dart
│   ├── http
│   │   ├── __mock__
│   │   │   ├── http_client_data.dart
│   │   │   └── http_client_mock.dart
│   │   └── http_client_test.dart
│   └── utils
│       ├── __mock__
│       │   ├── sample_adapter.dart
│       │   ├── sample_table.dart
│       │   └── sample_table_mock.dart
│       ├── database_utils_test.dart
│       └── http_util_test.dart
├── data
│   ├── datasources
│   │   ├── local
│   │   │   ├── __mock__
│   │   │   │   ├── base_local_datasource_mock.dart
│   │   │   │   ├── sample_model.dart
│   │   │   │   ├── todo_local_datasource_mock.dart
│   │   │   │   └── todo_table_data.dart
│   │   │   ├── base_local_datasource_test.dart
│   │   │   └── todo_local_datasource_test.dart
│   │   └── remote
│   │       ├── __mock__
│   │       │   ├── http_client_mock.dart
│   │       │   └── todo_remote_datasource_mock.dart
│   │       └── todo_remote_datasource_test.dart
├── models
│   ├── __mock__
│   │   └── todo_model_data.dart
│   └── todo_model_test.dart
├── repositories
│   ├── __mock__
│   │   ├── todo_json_data.dart
│   │   └── todo_repository_mock.dart
│   └── todo_repository_impl_test.dart
├── domain
│   ├── entities
│   │   └── __mock__
│   │       └── todo_entity_data.dart
│   └── usecases
│       ├── __mock__
│       │   └── todo_usecase_mock.dart
│       └── todo_usecase_test.dart
├── local_database_test_files
│   ├── database_util_test.hive
│   ├── database_util_test.lock
│   ├── testbox.hive
│   ├── testbox.lock
│   ├── todo.hive
│   └── todo.lock
└── presentation
    ├── app_test.dart
    └── journey
        ├── dashboard
        │   └── dashboard_screen_test.dart
        └── todo
            ├── bloc
            │   ├── __mock__
            │   │   └── todo_bloc_mock.dart
            │   └── todo_bloc_test.dart
            ├── create_todo
            │   └── create_todo_screen_test.dart
            ├── todo_list
            │   ├── todo_list_screen_test.dart
            │   └── widgets
            │       └── todo_item_test.dart
            └── todo_routes_test.dart
```

# How to run the app
```bash 
flutter run
```


# In case of addition to the injector file
```bash 
flutter pub run build_runner build --delete-conflicting-outputs
```

# How to test
```bash 
flutter test --coverage
```

# To see the coverage percentage
```bash 
lcov -r coverage/lcov.info "*/__test*__/*" "*.g.dart" -o coverage/lcov_cleaned.info
```


# To view the coverage of each file in HTML format
```bash 
genhtml coverage/lcov_cleaned.info -o coverage
```
