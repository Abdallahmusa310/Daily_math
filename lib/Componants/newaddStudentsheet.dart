import 'package:daily_math/Componants/addcontainer.dart';
import 'package:daily_math/cubits/cubit/cubit/student_cubit.dart';
import 'package:daily_math/models/student_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class Newaddgroubsheet extends StatefulWidget {
  const Newaddgroubsheet({
    super.key,
  });
  @override
  State<Newaddgroubsheet> createState() => _NewaddgroubsheetState();
}

class _NewaddgroubsheetState extends State<Newaddgroubsheet> {
  final GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController studentnamee = TextEditingController();
  TextEditingController parentphone = TextEditingController();
  List<Studentmodel> studentss = List.empty(growable: true);
  int selctedindex = -1;
  @override
  
  Widget build(BuildContext context) {
    return Form(
      child: BlocProvider(
        create: (context) => StudentCubit(),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Expanded(
            child: BlocConsumer<StudentCubit, StudentState>(
              listener: (context, state) {},
              builder: (context, state) {
                return AbsorbPointer(
                absorbing: State is Studentloading ? true :false,
                  child: Column(children: [
                    CloseButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextField(
                      controller: studentnamee,
                      decoration: InputDecoration(
                        hintText: 'student name',
                        border: createborder(),
                        enabledBorder: createborder(),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    TextField(
                      controller: parentphone,
                      decoration: InputDecoration(
                        hintText: 'parent phone',
                        border: createborder(),
                        enabledBorder: createborder(),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    BlocListener<StudentCubit, StudentState>(
                      listener: (context, state) {
                                    if (state is Studentfaield) {
                             print('faild ${state.errormassage}');
                              }
                         if (state is Studentsucsses) {
                          
                              }
                      },
                      child: GestureDetector(
                        onTap: () {
                          String phone = parentphone.text.trim();
                          String name = studentnamee.text.trim();
                          if (name.isNotEmpty && phone.isNotEmpty) {
                            BlocProvider.of<StudentCubit>(context).addstudent(
                                Studentmodel(
                                    studentname: name, parentrhone: phone));
                            setState(() {
                              studentss.add(Studentmodel(
                                  studentname: name, parentrhone: phone));
                            });
                          }
                        },
                        child: Addbt(
                          bttext: 'Add Student',
                        ),
                      ),
                    ),
                    studentss.isEmpty
                        ? const Text('no students yet')
                        : Expanded(
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: studentss.length,
                                itemBuilder: (context, index) => getrow(index)),
                          )
                  ]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget getrow(int index) {
    return Column(
      children: [
        ListTile(
          title: Text(studentss[index].studentname),
          trailing: SizedBox(
            width: 96,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      studentnamee.text = studentss[index].studentname;
                      setState(() {
                        selctedindex = index;
                      });
                    },
                    icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      {
                        setState(() {
                          studentss.removeAt(index);
                        });
                      }
                    },
                    icon: const Icon(Icons.delete))
              ],
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              IconButton(
                  onPressed: () async {
                    final Uri uri = Uri(
                      scheme: 'tel',
                      path: studentnamee.text = studentss[index].parentrhone,
                    );
                    await launchUrl(uri);
                  },
                  icon: const Icon(Icons.call)),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(studentss[index].parentrhone),
              ),
            ],
          ),
          trailing: SizedBox(
            width: 96,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      studentnamee.text = studentss[index].studentname;
                      setState(() {
                        selctedindex = index;
                      });
                    },
                    icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      {
                        setState(() {
                          studentss.removeAt(index);
                        });
                      }
                    },
                    icon: const Icon(Icons.delete))
              ],
            ),
          ),
        )
      ],
    );
  }

  OutlineInputBorder createborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Color.fromARGB(255, 72, 33, 243)));
  }
}
