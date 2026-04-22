part of 'bmi_bloc.dart';

class BmiState extends Equatable {
  final UserModel userModel;

  const BmiState(this.userModel);

  @override
  List<Object?> get props => [userModel];
}
