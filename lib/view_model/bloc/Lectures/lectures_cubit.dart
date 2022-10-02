import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:orangeeduapp/Model/lectures/lectures.dart';
import 'package:orangeeduapp/constatnt.dart';
import 'package:orangeeduapp/view/pages/Lectures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orangeeduapp/view_model/database/network/dio_helper.dart';
import 'package:orangeeduapp/view_model/database/network/end_points.dart';

part 'lectures_state.dart';

class LecturesCubit extends Cubit<LecturesState> {
  LecturesCubit() : super(LecturesInitial());
  LecutreModel? lecutreModel;

  static LecturesCubit get(context) => BlocProvider.of(context);

  void getData() {
    DioHelper.getData(url: lectureEndPoint, token: token).then((response) {
      lecutreModel = LecutreModel.fromJson(response.data);
      emit(DataResefed());
    });
  }
}
