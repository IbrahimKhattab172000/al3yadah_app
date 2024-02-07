import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class ShoulderCubit extends Cubit<ShoulderStates> {
  ShoulderCubit() : super(ShoulderInit());

  static ShoulderCubit of(context) => BlocProvider.of(context);

  final int totalSteps = 4;
  int currentStep = 0;

  bool get isLast => currentStep == 4;
  bool get isFirst => currentStep == 0;

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
