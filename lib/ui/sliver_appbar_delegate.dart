import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoneSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  BoneSliverAppBarDelegate(this._tabBar);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(BoneSliverAppBarDelegate oldDelegate) {
    return false;
  }

}