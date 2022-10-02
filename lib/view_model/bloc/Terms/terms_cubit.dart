import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:orangeeduapp/Model/terms_conditions/terms_conditions.dart';
import 'package:orangeeduapp/view_model/database/network/end_points.dart';

import '../../../constatnt.dart';
import '../../database/network/dio_helper.dart';

part 'terms_state.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsInitial());

  TermsAndConditionsModel ? termsAndConditions;
  String ? content;

  void getTermsAndConditions()
  {
    DioHelper.getData(url: termsEndPoint, token: token)
        .then((value) {
          termsAndConditions = TermsAndConditionsModel.fromJson(value.data);
          content = termsAndConditions!.data!.terms;
          emit(DataFetched());
    });
  }

}
