import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PagingListView extends HookConsumerWidget {
  const PagingListView({
    super.key,
    required this.controller,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    this.itemExtent,
    this.itemExtentBuilder,
    this.prototypeItem,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    this.hitTestBehavior = HitTestBehavior.opaque,
    required this.itemCount,
    required this.fetchNextPage,
    required this.item,
    this.itemSeparator,
  });

  final ScrollController controller;
  final Axis scrollDirection;
  final bool reverse;
  final bool? primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final double? itemExtent;
  final double? Function(int, SliverLayoutDimensions)? itemExtentBuilder;
  final Widget? prototypeItem;
  final ChildIndexGetter? findChildIndexCallback;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double? cacheExtent;
  final int? semanticChildCount;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;
  final HitTestBehavior hitTestBehavior;
  final int itemCount;
  final VoidCallback fetchNextPage;
  final Widget Function(BuildContext context, int index) item;
  final Widget Function(BuildContext context, int index)? itemSeparator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Timer? debounce;
    useEffect(() {
      void onScroll() {
        const threshold = 0.8;

        final scrollValue =
            controller.offset / controller.position.maxScrollExtent;

        if (debounce?.isActive ?? false) {
          debounce?.cancel();
        }

        debounce = Timer(const Duration(milliseconds: 100), () {
          if (scrollValue > threshold) {
            fetchNextPage();
          }
        });
      }

      controller.addListener(onScroll);

      return () => controller.removeListener(onScroll);
    }, [controller]);

    if (itemSeparator != null) {
      return ListView.separated(
        controller: controller,
        scrollDirection: scrollDirection,
        reverse: reverse,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemCount: itemCount,
        findChildIndexCallback: findChildIndexCallback,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
        hitTestBehavior: hitTestBehavior,
        itemBuilder: item,
        separatorBuilder: itemSeparator ?? (_, __) => SizedBox.shrink(),
      );
    } else {
      return ListView.builder(
        controller: controller,
        scrollDirection: scrollDirection,
        reverse: reverse,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemExtent: itemExtent,
        itemExtentBuilder: itemExtentBuilder,
        itemCount: itemCount,
        prototypeItem: prototypeItem,
        findChildIndexCallback: findChildIndexCallback,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
        hitTestBehavior: hitTestBehavior,
        itemBuilder: item,
      );
    }
  }
}
