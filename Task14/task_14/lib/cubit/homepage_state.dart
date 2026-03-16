part of 'homepage_cubit.dart';

@immutable
abstract class HomepageState {}

class HomepageInitial extends HomepageState {}

class HomepageSucess extends HomepageState {
  final List<Article> articles;

  HomepageSucess({required this.articles});
}

class HomepageLoading extends HomepageState {}

class HomepageFailure extends HomepageState {
  final String errorMessage;

  HomepageFailure({required this.errorMessage});
}
