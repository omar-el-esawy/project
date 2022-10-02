import 'package:flutter/material.dart';
import 'package:orangeeduapp/view_model/bloc/Exams/exams_cubit.dart';
import '../componant/LecturesComp/LongCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LongCard {
  String? duration;
  String? title;
  String? day;
  String? startTime;
  String? endTime;

  LongCard(
      {this.duration, this.title, this.day, this.startTime, this.endTime}) {}
}

class Finals extends StatelessWidget {
  Finals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamsCubit()..getData(),
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
            child: BlocConsumer<ExamsCubit, ExamsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                ExamsCubit myCubit = ExamsCubit.get(context);
                return myCubit.exams == null
                    ? Center(
                        child: Text("Loading..."),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: myCubit.finals.length,
                        itemBuilder: (context, index) {
                          return longCard(
                            duration: "2:00pm",
                            title: myCubit.finals[index].examSubject,
                            day: myCubit.finals[index].examDate,
                            startTime: myCubit.finals[index].examStartTime,
                            endTime: myCubit.finals[index].examEndTime,
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
