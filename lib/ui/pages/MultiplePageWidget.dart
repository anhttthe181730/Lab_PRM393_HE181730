import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lab_he181730/ui/pages/HomePage2.dart';
import '../pages/About.dart';
import '../pages/ProductManagePage.dart';
import '../../widgets/CustomerWidget.dart';
import '../../services/GlobalStateService.dart';

class NavigationExample extends ConsumerWidget {
  const NavigationExample({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          ref.read(currentIndexProvider.notifier).state = index;
        },
        indicatorColor: Colors.amber,
        selectedIndex: ref.watch(currentIndexProvider),
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
            label: 'Messages',
          ),
        ],
      ),
      appBar: AppBar(
        leading:
            //const Icon(Icons.menu),
            Category2Menu(),
        title: const Center(child: Text("Product List")),
        backgroundColor: Colors.blue,
      ),
      body: <Widget>[
        /// Home page
        ProductList(),
        AboutBody(),
        HomePage(),

        /// Notifications page

        /// Messages page
      ][ref.watch(currentIndexProvider)],
    );
  }
}
