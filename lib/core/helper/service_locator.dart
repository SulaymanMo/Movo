import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movo/core/helper/api.dart';
import 'package:movo/movo/data/repo/details_repo_imp.dart';
import 'package:movo/movo/data/repo/home_repo_imp.dart';
import 'package:movo/movo/data/repo/search_repo_imp.dart';
import 'package:movo/movo/data/source/local/home_local.dart';
import 'package:movo/movo/data/source/remote/details_remote.dart';
import 'package:movo/movo/data/source/remote/home_remote.dart';
import 'package:movo/movo/domain/usecase/ge_details_usecase.dart';
import 'package:movo/movo/domain/usecase/get_cast.dart';
import 'package:movo/movo/domain/usecase/get_images.dart';
import 'package:movo/movo/domain/usecase/get_movie.dart';
import 'package:movo/movo/domain/usecase/get_search.dart';
import 'package:movo/movo/domain/usecase/get_similar.dart';

GetIt getIt = GetIt.instance;

void serviceLocator() {
  // ! Repo & Api
  getIt.registerLazySingleton<Api>(
    () => Api(Dio()),
  );

  getIt.registerLazySingleton<HomeLocalImp>(
    () => HomeLocalImp(),
  );
  getIt.registerLazySingleton<HomeRemoteImp>(
    () => HomeRemoteImp(getIt.get<Api>()),
  );
  getIt.registerLazySingleton<HomeRepoImp>(
    () => HomeRepoImp(
      getIt.get<HomeLocalImp>(),
      getIt.get<HomeRemoteImp>(),
    ),
  );

  getIt.registerLazySingleton<SearchRepoImp>(
    () => SearchRepoImp(
      getIt.get<HomeLocalImp>(),
      getIt.get<HomeRemoteImp>(),
    ),
  );

  getIt.registerLazySingleton<DetailsRemoteImp>(
    () => DetailsRemoteImp(getIt.get<Api>()),
  );
  getIt.registerLazySingleton<DetailsRepoImp>(
    () => DetailsRepoImp(getIt.get<DetailsRemoteImp>()),
  );

  // ! Usecase
  getIt.registerLazySingleton<GetMovie>(
    () => GetMovie(getIt.get<HomeRepoImp>()),
  );
  getIt.registerLazySingleton<GetSearch>(
    () => GetSearch(getIt.get<SearchRepoImp>()),
  );

  getIt.registerLazySingleton<GetDetails>(
    () => GetDetails(getIt.get<DetailsRepoImp>()),
  );
  getIt.registerLazySingleton<GetImages>(
    () => GetImages(getIt.get<DetailsRepoImp>()),
  );
  getIt.registerLazySingleton<GetCast>(
    () => GetCast(getIt.get<DetailsRepoImp>()),
  );
  getIt.registerLazySingleton<GetSimilar>(
    () => GetSimilar(getIt.get<DetailsRepoImp>()),
  );
}
