import 'package:flutter/material.dart';
import 'package:orangeeduapp/view_model/bloc/Terms/terms_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_html_css/simple_html_css.dart';


class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsCubit()..getTermsAndConditions(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Terms & Conditions",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocConsumer<TermsCubit, TermsState>(
          listener: (context, state) {},
          builder: (context, state) {
            TermsCubit obj = BlocProvider.of(context);
            return obj.termsAndConditions == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                  child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          color: Colors.white,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: HTML.toTextSpan(
                              context,
                              obj.content!,
                              defaultTextStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 19,
                                decoration: TextDecoration.none
                              )
                            )

                          ),
                        ),
                      ),
                    ),
                );
          },
        ),
      ),
    );
  }
}
