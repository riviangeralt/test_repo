import 'package:flutter/material.dart';
import 'package:masdr_hr_insights/features/dashboard/controllers/dashboard_controller.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/custom_tab_bar.dart';
import 'package:get/get.dart';

class CustomDashboardAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDashboardAppBar({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text('Dashboards'),
              Text(' / '),
              Text(
                'Overview',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Obx(
            () => TabBar(
              indicatorColor: Colors.transparent,
              labelPadding: const EdgeInsets.all(0.0),
              onTap: controller.onUpdateTab,
              overlayColor: WidgetStateProperty.resolveWith(
                  (states) => Colors.transparent),
              dividerHeight: 0,
              tabs: [
                CustomTabBar(
                    label: 'Turnover',
                    active: controller.currentIndex.value == 0),
                CustomTabBar(
                    label: 'Salary Growth',
                    active: controller.currentIndex.value == 1),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(
      double.infinity, kToolbarHeight + MediaQuery.paddingOf(context).top + 28);
}
