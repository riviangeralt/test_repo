import 'package:flutter/material.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/compare_company.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/custom_app_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static List colors = [
    Color(0xffE5ECF6),
    Color(0xffE3F5FF),
    Color(0xffE5ECF6),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomDashboardAppBar(
          context: context,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CompareCompany(),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 112,
                child: ListView.builder(
                  itemCount: colors.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) {
                    return Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: colors[i],
                      ),
                      margin: EdgeInsets.only(
                          right: i != colors.length - 1 ? 8.0 : 0.0),
                      padding: const EdgeInsets.all(8.0),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
