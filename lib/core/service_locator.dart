import 'package:get_it/get_it.dart';
import '../features/home/data/counter_repository_impl.dart';
import '../features/home/domain/usecases/increment_counter.dart';
import '../features/home/domain/usecases/decrement_counter.dart';
import '../features/home/presentation/viewmodels/counter_rx_viewmodel.dart';

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

  // Register the DecrementCounter use case
  sl.registerLazySingleton<DecrementCounter>(
    () => DecrementCounter(sl<CounterRepositoryImpl>()),
    );

  sl.registerLazySingleton<CounterRxViewmodel>(
    () => CounterRxViewmodel(sl<IncrementCounter>(), sl<DecrementCounter>()),
  );
  
}
