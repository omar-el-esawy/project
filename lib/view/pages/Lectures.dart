import 'package:flutter/material.dart';
import 'package:orangeeduapp/view_model/bloc/Lectures/lectures_cubit.dart';
import '../componant/LecturesComp/LongCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Lectures extends StatelessWidget {
  Lectures({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LecturesCubit()..getData(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.orange,
            ),
          ),
          title: Text(
            'Lectures',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PopupMenuButton(
                onSelected: (item) {},
                itemBuilder: (context) => [
                  PopupMenuItem(value: 0, child: Text("All Lectues")),
                  PopupMenuItem(value: 1, child: Text("Finished Lectures")),
                  PopupMenuItem(value: 2, child: Text("Remaining Lectures")),
                ],
                icon: Icon(
                  Icons.filter_alt,
                  color: Colors.orange,
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: BlocConsumer<LecturesCubit, LecturesState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                LecturesCubit myCubit = LecturesCubit.get(context);
                return myCubit.lecutreModel == null
                    ? Center(
                        child: Text("Loading ..."),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: myCubit.lecutreModel!.data!.length,
                        itemBuilder: (context, index) {
                          return longCard(
                            duration: myCubit
                                .lecutreModel!.data![index].lectureEndTime!,
                            title: myCubit
                                .lecutreModel!.data![index].lectureSubject!,
                            day: myCubit
                                .lecutreModel!.data![index].lectureStartTime!,
                            startTime: myCubit
                                .lecutreModel!.data![index].lectureStartTime!,
                            endTime: myCubit
                                .lecutreModel!.data![index].lectureEndTime!,
                          );
                        });
              },
            ),
          ),
        ),
      ),
    );
  }
}
