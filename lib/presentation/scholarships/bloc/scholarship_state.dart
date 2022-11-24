part of 'scholarship_bloc.dart';

@immutable
abstract class ScholarshipState {}

class ScholarshipInitial extends ScholarshipState {}


class HomeLoadingState extends ScholarshipState {}

class HomeErrorFetchDataState extends ScholarshipState {
  final String message;

  HomeErrorFetchDataState({required this.message});
}

class HomeDataLoadedState extends ScholarshipState {
  final List<Data> data;

  HomeDataLoadedState({
    required this.data,
  });
}
