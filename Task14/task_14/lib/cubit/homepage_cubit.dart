import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_14/models/news_model.dart';
import 'package:task_14/networking/api_service.dart';

part 'homepage_state.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit() : super(HomepageInitial());
  ApiService apiService = ApiService();
  void getAllNews() async {
    emit(HomepageLoading());
    try {
      final articles = await apiService.getAllNews();
      emit(HomepageSucess(articles: articles));
    } catch (e) {
      emit(HomepageFailure(errorMessage: e.toString()));
    }
  }
}
