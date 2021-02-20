import 'package:flutter/material.dart';

class StaticTabs extends StatefulWidget {

  final int initialIndex;
  final StaticTabsController controller;
  final List<Widget> views;
  final MainAxisAlignment columnMainAxisAlignment;
  final CrossAxisAlignment columnCrossAxisAlignment;
  final MainAxisSize columnMainAxisSize;
  final Widget Function(int) tabsBuilder;

  StaticTabs({
    this.initialIndex = 0,
    StaticTabsController controller,
    Widget Function(int) tabsBuilder,
    this.views = const [],
    this.columnCrossAxisAlignment = CrossAxisAlignment.center,
    this.columnMainAxisAlignment = MainAxisAlignment.start,
    this.columnMainAxisSize = MainAxisSize.min
  }) : this.controller = controller ?? StaticTabsController(), this.tabsBuilder = tabsBuilder ?? ((index){return SizedBox();});

  @override
  State<StatefulWidget> createState() => _StaticTabs();

}

class _StaticTabs extends State<StaticTabs> {

  int current;

  @override
  void initState() {
    current = widget.initialIndex ?? 0;
    widget.controller.setTab = setTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: widget.columnMainAxisSize,
      crossAxisAlignment: widget.columnCrossAxisAlignment,
      mainAxisAlignment: widget.columnMainAxisAlignment,
      children: <Widget>[
        widget.tabsBuilder(current),
        widget.views[current]
      ],
    );
  }

  setTab(int index){
    setState(() {
      current = index;
    });
  }

}

class StaticTabsController {
  void Function(int) setTab;

  setTabIndex(int index){
    setTab(index);
  }
}