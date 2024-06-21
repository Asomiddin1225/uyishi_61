import 'package:flutter/material.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double maxHeight;
  final double minHeight;
  SliverHeaderDelegate({
    required this.child,
    required this.maxHeight,
    required this.minHeight,
  });

  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
    // throw UnimplementedError();
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverHeaderDelegate oldDelegate) {
    if (oldDelegate.maxHeight != maxHeight || 
     oldDelegate.minHeight !=minHeight || 
     oldDelegate.child != child) {
      return true;
      
    }else{
      return false;
    }
  }
}
