import 'package:flutter/material.dart';
import 'package:will_project/components/select_day_component.dart';
import 'package:will_project/components/selected_shift_component.dart';
import 'package:will_project/widgets/check_box_widget.dart';
import 'package:will_project/widgets/head_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadWidget(),
              const SizedBox(
                height: 20,
              ),
              const SelectDayComponent(),
              const SizedBox(
                height: 20,
              ),
              const SelectedShifiComponent(),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("AGENDAR"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
