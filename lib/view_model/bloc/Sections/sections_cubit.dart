import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Model/section/Sections.dart';
import '../../../constatnt.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'sections_state.dart';



class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(context) => BlocProvider.of(context);

  Sections? sections;


  void getData() {
    DioHelper.getData(url: sectionEndPoint, token: token).then((response) {
      sections = Sections.fromJson(response.data);
      emit(DataStored());
    });
  }
}
