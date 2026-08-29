import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/alert.dart';
import '../utils/constants.dart';

class AlertNotifier extends StateNotifier<List<AlertEntity>> {
  AlertNotifier() : super([]);

  int _nextId = 0;
  final Map<AlertScope, DateTime> _lastAlertTime = {};

  void sendAlert({
    String emoji = '✅',
    String message = 'Alert',
    Color color = CatppuccinColors.green,
    double duration = 5.0,
    AlertScope? scope,
  }) {
    if (scope != null) {
      final now = DateTime.now();
      final lastTime = _lastAlertTime[scope];
      if (lastTime != null && now.difference(lastTime).inMilliseconds < 800) {
        return; // Throttled
      }
      _lastAlertTime[scope] = now;
      dismissAlertsOfScope(scope);
    }

    final id = _nextId++;
    final alert = AlertEntity(
      id: id,
      emoji: emoji,
      message: message,
      color: color,
      duration: duration,
      visible: true,
      scope: scope,
    );

    state = [...state, alert];

    Timer(Duration(milliseconds: (duration * 1000).toInt()), () {
      dismissAlert(id);
    });
  }

  void dismissAlert(int id) {
    bool found = false;
    state = state.map((a) {
      if (a.id == id && a.visible) {
        found = true;
        return a.copyWith(visible: false);
      }
      return a;
    }).toList();

    if (found) {
      Timer(const Duration(milliseconds: 250), () {
        state = state.where((a) => a.id != id).toList();
      });
    }
  }

  void dismissAlertsOfScope(AlertScope scope) {
    final targets = state.where((a) => a.scope == scope && a.visible).toList();
    for (final alert in targets) {
      dismissAlert(alert.id);
    }
  }
}

final alertProvider = StateNotifierProvider<AlertNotifier, List<AlertEntity>>((ref) {
  return AlertNotifier();
});
