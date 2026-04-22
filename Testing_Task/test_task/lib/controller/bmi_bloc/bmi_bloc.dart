import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_task/models/user_model.dart';
import 'package:test_task/services/bmi_service.dart';

part 'bmi_event.dart';
part 'bmi_state.dart';

class BmiBloc extends Bloc<BmiEvent, BmiState> {
  final BmiService bmiService;

  BmiBloc(this.bmiService)
    : super(
        const BmiState(
          UserModel(gender: Gender.male, age: 20, weightKG: 78, heightCM: 175),
        ),
      ) {
    on<AddWeight>((event, emit) {
      emit(
        BmiState(
          state.userModel.copyWith(weightKG: state.userModel.weightKG + 1),
        ),
      );
    });

    on<SubWeight>((event, emit) {
      emit(
        BmiState(
          state.userModel.copyWith(weightKG: state.userModel.weightKG - 1),
        ),
      );
    });

    on<AddAge>((event, emit) {
      emit(BmiState(state.userModel.copyWith(age: state.userModel.age + 1)));
    });

    on<SubAge>((event, emit) {
      emit(BmiState(state.userModel.copyWith(age: state.userModel.age - 1)));
    });

    on<SetHeight>((event, emit) {
      emit(BmiState(state.userModel.copyWith(heightCM: event.height)));
    });

    on<ToggleGender>((event, emit) {
      final newGender = state.userModel.gender == Gender.male
          ? Gender.female
          : Gender.male;

      emit(BmiState(state.userModel.copyWith(gender: newGender)));
    });

    on<CalculateBMI>((event, emit) {
      final bmi = bmiService.calculateBMI(
        heightCM: state.userModel.heightCM,
        weightKG: state.userModel.weightKG,
      );

      emit(BmiState(state.userModel.copyWith(bmi: bmi)));
    });
  }
}
