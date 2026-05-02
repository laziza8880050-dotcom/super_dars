import 'package:bloc/bloc.dart';
import 'package:news/src/core/service/api_service.dart';
import 'package:news/src/features/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingState()) {
    getAppleNews();
  }

  Future<void> getAppleNews() async {
    try {
      emit(HomeLoadingState());
      final result = await ApiService.getApple();
      emit(HomeLoadedState(news: result, newIndex: 0));
    } catch (error) {
      emit(HomeErrorState(errorText: error.toString()));
    }
  }

  Future<void> getTeslaNews() async {
    try {
      emit(HomeLoadingState());
      final result = await ApiService.gettesla();
      emit(HomeLoadedState(news: result, newIndex: 1));
    } catch (e) {
      emit(HomeErrorState(errorText: e.toString(), newIndex: 1));
    }
  }

  Future<void> getcountryNews() async {
    try{
    emit(HomeLoadingState());
    final result = await ApiService.getcountry();
    emit(HomeLoadedState(news: result, newIndex: 2));
    } catch (e){
      emit(HomeErrorState(errorText: e.toString(), newIndex: 2));

    }
  }

  Future<void> gettechcrunchuri() async {
    try{
    emit(HomeLoadingState());
    final result = await ApiService.gettechcrunchuri();
    emit(HomeLoadedState(news: result, newIndex: 3));
    } catch(e){
       emit(HomeErrorState(errorText: e.toString(), newIndex: 3));
    }
  }

  Future<void> getdomainsNews() async {
 try{emit(HomeLoadingState());
    final result = await ApiService.getdomains();
    emit(HomeLoadedState(news: result, newIndex: 4));
  } catch (e){
      emit(HomeErrorState(errorText: e.toString(), newIndex: 4));
  }}

  void newindex(int index) {
    if (index == 0) {
      getAppleNews();
    } else if (index == 1) {
      getTeslaNews();
    } else if (index == 2) {
      getcountryNews();
    } else if (index == 3) {
      gettechcrunchuri();
    } else {
      getdomainsNews();
    }
  }
}
