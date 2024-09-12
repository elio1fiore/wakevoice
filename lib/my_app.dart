import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wakevoice/router/app_router.dart';
import 'package:wakevoice/router/app_router.gr.dart';

class WakeVoiceApp extends ConsumerWidget {
  const WakeVoiceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: "WakeVoice",
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(deepLinkBuilder: (deepLink) {
        return const DeepLink(
          [
            HomeRoute(),
          ],
        );
      }),
    );
  }
}
