
import 'package:flutter/material.dart';

class Groupfeild extends StatelessWidget {
const Groupfeild({super.key,this.onsave, this.contorol, this.lapeltext,});
final void Function(String?)? onsave;
final  TextEditingController? contorol;
final String? lapeltext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                  validator: (data) {
                    if (data?.isEmpty ?? true) {
                      return 'feild is requird';
                    } else {
                      return null;
                    }
                  },
                  controller: contorol,
                  onSaved: onsave,
                  cursorColor: const Color.fromARGB(255, 79, 33, 243),
                  decoration:  InputDecoration(
                      labelText: lapeltext,
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 20, 75, 121)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                        border: const OutlineInputBorder(
                        borderSide: BorderSide(),
                      )),
                );
  }
}