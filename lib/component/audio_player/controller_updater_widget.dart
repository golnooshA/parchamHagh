import 'package:flutter/material.dart';

import 'widget_controllers.dart';

class ControllerUpdater extends StatefulWidget {
  final Widget Function() getChild;
  final SetStateController controller;

  ControllerUpdater({@required this.getChild, @required this.controller});

  @override
  State<StatefulWidget> createState() => _ControllerUpdaterState();
}

class _ControllerUpdaterState extends State<ControllerUpdater> {
  @override
  void initState() {
    super.initState();
    widget.controller.setState = _setState;
  }

  @override
  void didUpdateWidget(ControllerUpdater oldWidget) {
    widget.controller.setState = _setState;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    widget.controller.setState = _setState;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return widget.getChild();
  }

  _setState() {
    if (mounted) setState(() {});
  }
}
