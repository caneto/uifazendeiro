import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';

import '../../../../utils/styles/colors_app.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({Key? key}) : super(key: key);

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: ColorsApp.instance.greenfundo.withOpacity(0.57)
              ),
              accountName: const Text('user'),
              accountEmail: const Text('teste@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: ColorsApp.instance.greenfundo.withOpacity(0.91),
                child: const Text('Us'),
              ),),
          ListTile(
            leading: const Icon(Icons.credit_card),
            title: const Text('Cadastro de Cartões'),
            selected: 0 == _selectedIndex,
            onTap: () {
              context.pushNamed('creditCardPage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_home_work),
            title: const Text('Cadastro de Endereço'),
            selected: 1 == _selectedIndex,
            onTap: () {
              //_onSelectItem(1);
            },
          ),
        ],
      ),
    );
  }
}
