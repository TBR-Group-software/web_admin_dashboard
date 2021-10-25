import 'package:get_it/get_it.dart';
import 'package:web_admin_dashboard/data/gateways/api_authentication_gateway.dart';
import 'package:web_admin_dashboard/data/gateways/api_group_gateway.dart';
import 'package:web_admin_dashboard/data/gateways/api_iot_gateway.dart';
import 'package:web_admin_dashboard/data/gateways/api_provider.dart';
import 'package:web_admin_dashboard/data/gateways/api_user_gateway.dart';
import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/data/models/iot_dto.dart';
import 'package:web_admin_dashboard/data/models/jwt_dto.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/data/repositories/api_group_repository.dart';
import 'package:web_admin_dashboard/data/repositories/api_iot_repository.dart';
import 'package:web_admin_dashboard/data/repositories/api_user_repository.dart';
import 'package:web_admin_dashboard/data/services/api_login_service.dart';
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/repositories/group_repository.dart';
import 'package:web_admin_dashboard/domain/repositories/iot_repository.dart';
import 'package:web_admin_dashboard/domain/repositories/user_repository.dart';
import 'package:web_admin_dashboard/domain/services/login_service.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/create_group_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/delete_group_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/get_groups_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/update_group_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/create_iot_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/delete_iot_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/get_iots_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/update_iot_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/login/login_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/create_user_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/delete_user_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/get_users_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/update_user_use_case.dart';
import 'package:web_admin_dashboard/factories/entities/group_from_dto_factory.dart';
import 'package:web_admin_dashboard/factories/entities/iot_from_dto_factory.dart';
import 'package:web_admin_dashboard/factories/entities/user_from_dto_factory.dart';
import 'package:web_admin_dashboard/factories/factory.dart';
import 'package:web_admin_dashboard/factories/models/from_entity/group_to_dto_factory.dart';
import 'package:web_admin_dashboard/factories/models/from_entity/iot_to_dto_factory.dart';
import 'package:web_admin_dashboard/factories/models/from_entity/user_to_dto_factory.dart';
import 'package:web_admin_dashboard/factories/models/from_json/group_from_json_factory.dart';
import 'package:web_admin_dashboard/factories/models/from_json/iot_from_json_factory.dart';
import 'package:web_admin_dashboard/factories/models/from_json/jwt_from_json_factory.dart';
import 'package:web_admin_dashboard/factories/models/from_json/user_from_json_factory.dart';
import 'package:web_admin_dashboard/factories/models/to_json/group_to_json_factory.dart';
import 'package:web_admin_dashboard/factories/models/to_json/iot_to_json_factory.dart';
import 'package:web_admin_dashboard/factories/models/to_json/user_to_json_factory.dart';
import 'package:web_admin_dashboard/presentation/blocs/groups/groups_bloc.dart';
import 'package:web_admin_dashboard/presentation/blocs/iots/iots_bloc.dart';
import 'package:web_admin_dashboard/presentation/blocs/login/login_bloc.dart';
import 'package:web_admin_dashboard/presentation/blocs/users/users_bloc.dart';

final GetIt sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<Factory<JsonWebTokenDto, Map<String, dynamic>>>(
      () => JsonWebTokenDtoFromJsonFactory());

  sl.registerLazySingleton<Factory<UserDto, Map<String, dynamic>>>(
      () => UserDtoFromJsonFactory());
  sl.registerLazySingleton<Factory<Map<String, dynamic>, UserDto>>(
      () => UserToJsonFactory());
  sl.registerLazySingleton<Factory<UserDto, User>>(() => UserToDtoFactory());
  sl.registerLazySingleton<Factory<User, UserDto>>(() => UserFromDtoFactory());

  sl.registerLazySingleton<Factory<GroupDto, Map<String, dynamic>>>(
      () => GroupDtoFromJsonFactory(sl.get()));
  sl.registerLazySingleton<Factory<Map<String, dynamic>, GroupDto>>(
      () => GroupToJsonFactory());
  sl.registerLazySingleton<Factory<Group, GroupDto>>(
      () => GroupFromDtoFactory(sl.get()));
  sl.registerLazySingleton<Factory<GroupDto, Group>>(
      () => GroupToDtoFactory(sl.get()));

  sl.registerLazySingleton<Factory<IotDto, Map<String, dynamic>>>(
      () => IotDtoFromJsonFactory(sl.get(), sl.get()));
  sl.registerLazySingleton<Factory<Map<String, dynamic>, IotDto>>(
      () => IotToJsonFactory());
  sl.registerLazySingleton<Factory<Iot, IotDto>>(
      () => IotFromDtoFactory(sl.get(), sl.get()));
  sl.registerLazySingleton<Factory<IotDto, Iot>>(
      () => IotToDtoFactory(sl.get(), sl.get()));

  sl.registerLazySingleton<ApiProvider>(() => ApiProvider(sl.get()));

  sl.registerLazySingleton<ApiAuthenticationGateWay>(
      () => ApiAuthenticationGateWay(sl.get(), sl.get()));
  sl.registerLazySingleton<LoginService>(
      () => ApiLoginService(sl.get(), sl.get()));
  sl.registerLazySingleton<LoginUseCase>(() => ApiLoginUseCase(sl.get()));
  sl.registerLazySingleton<LoginBloc>(() => LoginBloc(sl.get()));

  sl.registerLazySingleton<ApiUserGateWay>(
      () => ApiUserGateWay(sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<UserRepository>(
      () => ApiUserRepository(sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<GetUsersUseCase>(() => ApiGetUsersUseCase(sl.get()));
  sl.registerLazySingleton<CreateUserUseCase>(
      () => ApiCreateUserUseCase(sl.get()));
  sl.registerLazySingleton<UpdateUserUseCase>(
      () => ApiUpdateUserUseCase(sl.get()));
  sl.registerLazySingleton<DeleteUserUseCase>(
      () => ApiDeleteUserUseCase(sl.get()));
  sl.registerLazySingleton<UsersBloc>(
      () => UsersBloc(sl.get(), sl.get(), sl.get(), sl.get()));

  sl.registerLazySingleton<ApiGroupGateWay>(
      () => ApiGroupGateWay(sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<GroupRepository>(
      () => ApiGroupRepository(sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<GetGroupsUseCase>(
      () => ApiGetGroupsUseCase(sl.get()));
  sl.registerLazySingleton<CreateGroupUseCase>(
      () => ApiCreateGroupUseCase(sl.get()));
  sl.registerLazySingleton<UpdateGroupUseCase>(
      () => ApiUpdateGroupUseCase(sl.get()));
  sl.registerLazySingleton<DeleteGroupUseCase>(
      () => ApiDeleteGroupUseCase(sl.get()));
  sl.registerLazySingleton<GroupsBloc>(
      () => GroupsBloc(sl.get(), sl.get(), sl.get(), sl.get()));

  sl.registerLazySingleton<ApiIotGateWay>(
      () => ApiIotGateWay(sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<IotRepository>(
      () => ApiIotRepository(sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<GetIotsUseCase>(() => ApiGetIotsUseCase(sl.get()));
  sl.registerLazySingleton<CreateIotUseCase>(
      () => ApiCreateIotUseCase(sl.get()));
  sl.registerLazySingleton<UpdateIotUseCase>(
      () => ApiUpdateIotUseCase(sl.get()));
  sl.registerLazySingleton<DeleteIotUseCase>(
      () => ApiDeleteIotUseCase(sl.get()));
  sl.registerLazySingleton<IotsBloc>(
      () => IotsBloc(sl.get(), sl.get(), sl.get(), sl.get()));
}
