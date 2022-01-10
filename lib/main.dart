import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plans_tracker/screens/domain/repository/home_repository.dart';
import 'package:plans_tracker/screens/home/bloc/home_bloc.dart';

import 'app.dart';

void main() async {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<HomeRepository>(
          create: (context) => HomeRepository(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(context.read<HomeRepository>()),
          )
        ],
        child: App(),
      ),
    ),
  );
}
