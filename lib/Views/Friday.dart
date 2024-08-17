// ignore_for_file: file_names

import 'package:daily_math/Componants/coustmelvatebbt.dart';
import 'package:daily_math/Componants/listofgroups.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:daily_math/cubits/cubit/listofgruops_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Friday extends StatefulWidget {
  const Friday({super.key});

  @override
  State<Friday> createState() => _FridayState();
}

class _FridayState extends State<Friday> {
  @override
  void initState() {
    BlocProvider.of<ListofgruopsCubit>(context).fetchallgroups();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const Elvatedbt(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.exit_to_app)),
                Coustumtext(
                  text: 'Friday',
                  textcolor: Colors.black,
                  textsize: 25,
                ),
              ],
            ),
            const Expanded(child: Listofgroups())
          ],
        ),
      ),
    );
  }
}
