import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/config/menu/menu_items.dart';
import 'package:widgets/presentation/widgets/slideMenu/slide_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String screenName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: AppBar(title: const Text('Menu de Materia 3')),
      body: ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: menuList,
      ),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }

  Widget menuList(BuildContext context, int index) {
    final menuItem = appMenuItems[index];
    return _CustomListTitle(menuItem: menuItem);
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({required this.menuItem});

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
