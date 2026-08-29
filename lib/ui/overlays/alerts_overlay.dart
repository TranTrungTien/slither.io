import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/alert_provider.dart';
import '../../models/alert.dart';
import '../../utils/constants.dart';

class AlertsOverlay extends ConsumerWidget {
  const AlertsOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alerts = ref.watch(alertProvider);

    return Positioned(
      top: 100,
      left: 0,
      right: 0,
      child: Column(
        children: alerts.map((alert) => _AlertItem(key: ValueKey(alert.id), alert: alert)).toList(),
      ),
    );
  }
}

class _AlertItem extends StatefulWidget {
  final AlertEntity alert;
  const _AlertItem({super.key, required this.alert});

  @override
  State<_AlertItem> createState() => _AlertItemState();
}

class _AlertItemState extends State<_AlertItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: widget.alert.visible ? 1.0 : 0.0,
      child: ScaleTransition(
        scale: _slideAnimation,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.alert.color.withAlpha(220),
                widget.alert.color.withAlpha(150),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white30),
            boxShadow: [
              BoxShadow(
                color: widget.alert.color.withAlpha(100),
                blurRadius: 15,
                spreadRadius: -5,
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.alert.emoji, style: const TextStyle(fontSize: 22)),
              const SizedBox(width: 12),
              Text(
                widget.alert.message.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
