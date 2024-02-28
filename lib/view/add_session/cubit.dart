import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class AddSessionCubit extends Cubit<AddSessionState> {
  AddSessionCubit() : super(AddSessionInitial());
}
