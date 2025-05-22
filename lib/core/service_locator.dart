import 'package:get_it/get_it.dart';
import '../features/home/data/counter_repository_impl.dart';
import '../features/home/domain/usecases/increment_counter.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  // Register the CounterRepositoryImpl
  sl.registerLazySingleton<CounterRepositoryImpl>(
    () => CounterRepositoryImpl(),
    );

  // Register the IncrementCounter use case
  sl.registerLazySingleton<IncrementCounter>(
    () => IncrementCounter(sl<CounterRepositoryImpl>()),
    );
}