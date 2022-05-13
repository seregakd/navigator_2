import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router_page/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

    @override
    Widget build(context) {
      return AutoTabsScaffold(
          routes: [
            const FirstRoute(),
            SecondRoute(
              title: 'Second',
              text: 100,
            ),
            ThirdRoute(
              title: "Third",
              text: "Third Third",
            ),
          ],
          bottomNavigationBuilder: (_,tabsRouter) {
            return BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: const [
                  BottomNavigationBarItem(
                    label: 'First',
                    icon: Icon(
                      Icons.face,
                      color: Colors.green,
                      size: 30.0,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Second',
                    icon: Icon(
                      Icons.security,
                      color: Colors.green,
                      size: 30.0,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Third',
                    icon: Icon(
                      Icons.verified_outlined,
                      color: Colors.green,
                      size: 30.0,
                    ),
                  ),
                ],
            );
          }
      );
    }
}
