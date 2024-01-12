import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rundate/core/configs/firebase/firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rundate/core/configs/routes/go_router.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await dotenv.load(fileName: '.env');

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Supabase.initialize(
    url: dotenv.get('url'),
    anonKey: dotenv.get('anon'),
  );

  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // Crashlytics에 에러 전달
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  // 플러터에서 처리되지 않는 네이티브 에러도 확인
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(
    const ProviderScope(
      child: RunDate(),
    ),
  );
}

class RunDate extends ConsumerWidget {
  const RunDate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Run Date',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.theme,
      routerConfig: router,
      builder: (context, child) {
        SizeUtil.getMediaSize(context);
        return child!;
      },
    );
  }
}
