import 'package:flutter/material.dart';
import 'package:study_bloc/app/theme/app_style.dart';

ElevatedButton elevatedButtonBorder({
  required String title,
  required Function() onPressed,
  required Color color,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
    child: Text(
      title,
      style: typoVietNamProBold17.copyWith(color: Colors.white),
    ),
  );
}

SafeArea allSafeArea({required Widget child}) {
  return SafeArea(
    minimum: const EdgeInsets.symmetric(horizontal: 16),
    child: child,
  );
}
