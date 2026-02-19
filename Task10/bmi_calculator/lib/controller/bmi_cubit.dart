import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/models/user_model.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit()
    : super(
        BmiState(
          UserModel(gender: 'Male', age: 20, weightKG: 78, heightCM: 175),
        ),
      );
  void addWeight() {
    state.userModel.weightKG++;

    emit(BmiState(state.userModel));
  }

  void subWeight() {
    state.userModel.weightKG--;
    emit(BmiState(state.userModel));
  }

  void addAge() {
    state.userModel.age++;
    emit(BmiState(state.userModel));
  }

  void subAge() {
    state.userModel.age--;
    emit(BmiState(state.userModel));
  }
}
