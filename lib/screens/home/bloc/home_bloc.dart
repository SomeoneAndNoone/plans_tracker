import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plans_tracker/screens/domain/repository/home_repository.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(InitialState());
}
