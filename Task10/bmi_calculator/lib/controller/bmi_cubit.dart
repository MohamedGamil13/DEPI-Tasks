import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/models/user_model.dart';
import 'package:equatable/equatable.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit()
    : super(
        const BmiState(
          UserModel(gender: Gender.male, age: 20, weightKG: 78, heightCM: 175),
        ),
      );

  void addWeight() {
    emit(
      BmiState(
        state.userModel.copyWith(weightKG: state.userModel.weightKG + 1),
      ),
    );
  }

  void subWeight() {
    emit(
      BmiState(
        state.userModel.copyWith(weightKG: state.userModel.weightKG - 1),
      ),
    );
  }

  void addAge() {
    emit(BmiState(state.userModel.copyWith(age: state.userModel.age + 1)));
  }

  void subAge() {
    emit(BmiState(state.userModel.copyWith(age: state.userModel.age - 1)));
  }

  void setHeight(double value) {
    emit(BmiState(state.userModel.copyWith(heightCM: value)));
  }

  void toggleGender() {
    final newGender = state.userModel.gender == Gender.male
        ? Gender.female
        : Gender.male;
    emit(BmiState(state.userModel.copyWith(gender: newGender)));
  }

  void calculateBMI() {
    final heightM = state.userModel.heightCM / 100;
    final bmi = (state.userModel.weightKG) / (heightM * heightM);
    emit(BmiState(state.userModel.copyWith(bmi: bmi)));
  }
}
