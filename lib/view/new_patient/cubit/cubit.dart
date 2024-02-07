import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class NewPatientCubit extends Cubit<NewPatientStates> {
  NewPatientCubit() : super(NewPatientInit());

  static NewPatientCubit of(context) => BlocProvider.of(context);

  String selectedArea = "";

  void selectArea({required String area}) {
    selectedArea = area;
    _emit(NewPatientInit());
  }

  bool get isStateLoading {
    return state is NewPatientLoading;
  }

  void _emit(NewPatientStates state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
