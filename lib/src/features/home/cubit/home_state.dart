import 'package:news/src/features/home/model/new_model.dart';

abstract class HomeState {
  final int newIndex;
  HomeState({required this.newIndex});
}
class HomeLoadingState extends HomeState{
  HomeLoadingState({super.newIndex = 0});
}
class HomeErrorState extends HomeState{
  final String errorText;
  HomeErrorState({
     super.newIndex = 0,
    required this.errorText
  });
}


class HomeLoadedState extends HomeState{
  final NewModel news;

  HomeLoadedState({required this.news, required super.newIndex});

}