import 'package:equatable/equatable.dart';
import 'package:route_mate/core/data/local/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvents, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ChangeTheme>((event, emit) {
      emit(
        state.copyWith(mode: event.mode),
      );
      _changeTheme(event.mode);
    });
    on<LoadTheme>((event, emit) async {
      await _loadTheme(emit);
    });
  }

  Future<void> _loadTheme(Emitter<ThemeState> emit) async {
    try {
      final ThemeMode themeMode = await LocalDataHandler.loadTheme();
      emit(state.copyWith(mode: themeMode));
    } catch (e) {
      debugPrint(e.toString());
      emit(state.copyWith(mode: ThemeMode.system));
    }
  }

  void _changeTheme(ThemeMode mode) {
    try {
      LocalDataHandler.saveTheme(mode);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

class ThemeState extends Equatable {
  final ThemeMode? mode;

  const ThemeState({this.mode = ThemeMode.system});

  ThemeState copyWith({
    ThemeMode? mode,
  }) {
    return ThemeState(mode: mode ?? this.mode);
  }

  @override
  List<Object?> get props => [mode];
}

abstract class ThemeEvents extends Equatable {}

class LoadTheme extends ThemeEvents {
  @override
  List<Object?> get props => [];
}

class ChangeTheme extends ThemeEvents {
  final ThemeMode mode;

  ChangeTheme(this.mode);

  @override
  List<Object?> get props => [mode];
}
