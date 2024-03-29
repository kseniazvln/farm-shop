import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_shop/pages/cart_page/bloc/cart_bloc.dart';
import 'package:the_shop/router/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CatalogTab(),
        CartTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        // не уверен в правильно данного решения отображения количества товаров в корзине, но это работает
        return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
          final count = state.cart.products.length;
          return CupertinoTabBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              CustomBottomNavigationBarItem(
                icon: Icons.manage_search,
                label: 'Каталог',
              ),
              CustomBottomNavigationBarItem(
                icon: Icons.shopping_bag_outlined,
                label: 'Корзина',
                badgeChar: count > 0 ? count.toString() : null,
              ),
            ],
          );
        });
      },
    );
  }
}

class CustomBottomNavigationBarItem extends BottomNavigationBarItem {
  CustomBottomNavigationBarItem({
    required IconData icon,
    required String label,
    String? badgeChar,
  }) : super(
          icon: _NavigationBarIcon(
            icon: icon,
            badgeChar: badgeChar,
          ),
          label: label,
          activeIcon: _NavigationBarIcon(
            icon: icon,
            badgeChar: badgeChar,
          ),
          backgroundColor: Colors.transparent,
        );
}

class _NavigationBarIcon extends StatelessWidget {
  const _NavigationBarIcon({
    required this.icon,
    this.badgeChar,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String? badgeChar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(
          icon,
          size: 25,
        ),
        Visibility(
          visible: badgeChar != null && badgeChar != '0',
          child: Positioned(
            right: -10,
            top: -4,
            child: _Badge(
              char: badgeChar ?? '',
            ),
          ),
        )
      ],
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    required this.char,
    Key? key,
  }) : super(key: key);

  final String char;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: theme.colorScheme.error,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: theme.colorScheme.onError,
        ),
      ),
      constraints: const BoxConstraints(
        maxWidth: 20,
        maxHeight: 20,
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: FittedBox(
          child: Text(
            char,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onError,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
