part of 'bmi_bloc.dart';

abstract class BmiEvent extends Equatable {
  const BmiEvent();

  @override
  List<Object?> get props => [];
}

class AddWeight extends BmiEvent {}

class SubWeight extends BmiEvent {}

class AddAge extends BmiEvent {}

class SubAge extends BmiEvent {}

class SetHeight extends BmiEvent {
  final double height;
  const SetHeight(this.height);

  @override
  List<Object?> get props => [height];
}

class ToggleGender extends BmiEvent {}

class CalculateBMI extends BmiEvent {}
