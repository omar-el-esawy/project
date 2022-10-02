import 'package:flutter/material.dart';
import 'package:orangeeduapp/view_model/bloc/Sections/sections_cubit.dart';
import '../componant/LecturesComp/LongCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Sections extends StatelessWidget {
  Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionsCubit()..getData(),
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
            'Sections',
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
            child: BlocConsumer<SectionsCubit, SectionsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                SectionsCubit myCubit = SectionsCubit.get(context);
                return myCubit.sections == null
                    ? Center(
                        child: Text("Loading..."),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: myCubit.sections!.data!.length,
                        itemBuilder: (context, index) {
                          return longCard(
                            duration: "2:00pm",
                            title:
                                myCubit.sections!.data![index].sectionSubject,
                            day: (DateTime.parse(myCubit
                                    .sections!.data![index].sectionDate!)
                                .day).toString(),
                            startTime: myCubit
                                .sections!.data![index].sectionStartTime!,
                            endTime:
                                myCubit.sections!.data![index].sectionEndTime!,
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
