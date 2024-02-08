import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class ShoulderCubit extends Cubit<ShoulderStates> {
  ShoulderCubit() : super(ShoulderInit());

  static ShoulderCubit of(context) => BlocProvider.of(context);

  final int totalSteps = 5;
  int currentStep = 1;

  bool get isLast => currentStep == 5;
  bool get isFirst => currentStep == 1;

  void nextStep() {
    currentStep++;
    _emit(ShoulderInit());
  }

  void previousStep() {
    currentStep--;
    _emit(ShoulderInit());
  }

  bool get isStateLoading {
    return state is ShoulderLoading;
  }

  void _emit(ShoulderStates state) {
    if (!isClosed) {
      emit(state);
    }
  }
}