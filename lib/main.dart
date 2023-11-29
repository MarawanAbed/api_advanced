import 'package:api/api/domain/repositories/repo.dart';
import 'package:api/api/presentation/manager/api_cubit.dart';
import 'package:api/api/presentation/pages/home_page.dart';
import 'package:api/core/dl/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (context) =>
            ApiCubit(getIt<Repo>())..getAllUsers(),
        child: const HomePage(),
      ),
    );
  }
}
