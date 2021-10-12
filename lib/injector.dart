import 'package:get_it/get_it.dart';

import 'data/repositories/warp_repository_impl.dart';
import 'domain/repositories/warp_repository.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector.registerLazySingleton<WarpRepository>(() => WarpRepositoryImpl());
}
