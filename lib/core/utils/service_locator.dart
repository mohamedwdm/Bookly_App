import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  // to create one instance from what you want and follow dependency injection principle
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  // example for why  Api Service getIt.registerSingleton<AuthRepoImpl>(HomeRepoImpl(ApiService(Dio())));
}

// we make the get it to avoid this
//  providers: [
//         BlocProvider(
//           create:
//               (context) => FeaturedBooksCubit(HomeRepoImpl(ApiService(Dio()))),
//         ),
//         BlocProvider(
//           create: (context) => NewstBooksCubit(HomeRepoImpl(ApiService(Dio()))),
//         ),
//       ],
