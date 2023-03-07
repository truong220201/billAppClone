import 'package:bill_app/common/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});
  static const String routePath = '/EmptyPage';

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return Scaffold(
      backgroundColor: context.colorScheme.error,
      body: Center(
        child: Text(
          'Trang không tồn tại',
          style: context.textStyle.headlineMedium?.copyWith(
            color: context.colorScheme.onError,
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black45),
            ),
            child: const Text('Quay lại'),
          ),
        ),
      ),
    );
  }
}
