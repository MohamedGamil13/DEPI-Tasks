part of 'bmi_cubit.dart';

class BmiState extends Equatable {
  final UserModel userModel;

  const BmiState(this.userModel);

  @override
  List<Object?> get props => [userModel];
}
