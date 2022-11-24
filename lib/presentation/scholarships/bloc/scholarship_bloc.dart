import 'package:app/presentation/scholarships/model/scholarship.dart';
import 'package:app/presentation/scholarships/repository/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'scholarship_event.dart';
part 'scholarship_state.dart';

class ScholarshipBloc extends Bloc<ScholarshipEvent, ScholarshipState> {
  ScholarshipBloc() : super(ScholarshipInitial()) {
    on<FecthDataEvent>(_homeLoadedData);
  }

  ScholarshipR repo = ScholarshipR();

  void _homeLoadedData(
      ScholarshipEvent event, Emitter<ScholarshipState> emit) async {
    emit(HomeLoadingState());

    try {
      List<Data> dummy = await repo.getAllPosts();
      print(dummy);
      emit(HomeDataLoadedState(data: dummy));
      print('event is triggered');
    } catch (e) {
      emit(HomeErrorFetchDataState(
        message: "something went very wrong :(",
      ));
    }
  }
}
