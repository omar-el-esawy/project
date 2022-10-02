import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orangeeduapp/Model/Exams/Exams.dart';

import '../../../constatnt.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'exams_state.dart';

class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());

  Exams? exams;
  List midTerms = [];
  List finals = [];

  static ExamsCubit get(context) => BlocProvider.of(context);

  void getData() {
    DioHelper.getData(url: examsEndPoint, token: token).then((response) {
      exams = Exams.fromJson(response.data);

      for (int i = 0; i < exams!.data!.length; i++)
        if (exams!.data![i].isFinal == true)
          finals.add(exams!.data![i]);
        else
          midTerms.add(exams!.data![i]);

      emit(DataStored());
    });
  }
}
