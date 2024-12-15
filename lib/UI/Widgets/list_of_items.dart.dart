import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_cache.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';
import 'package:kora_analysis/UI/Routing%20Logic/route_generator.dart';
import 'package:kora_analysis/UI/Widgets/empty_page_widget.dart';

class ListOfItems<Obj extends KoraObj> extends StatelessWidget {
  final List<Obj> list;
  final Widget Function(Obj item, Function onSelection) builder;
  final KoraCache<Obj>? cache;
  final Function? onSelection;
  final KoraRoute? route;
  const ListOfItems(
    this.list, {
    super.key,
    required this.builder,
    this.onSelection,
    this.cache,
    this.route,
  });
  @override
  Widget build(BuildContext context) {
    return list.isNotEmpty
        ? Column(
            children: [
              for (Obj item in list)
                builder(
                  item,
                  (){
                    if(cache != null){
                      cache!.itemCache = item;
                    }
                    if(onSelection != null){
                      onSelection!(item);
                    }
                    if(route != null){
                      Navigator.of(context).pushNamed(route!.path);
                    }
                    else{
                      Navigator.of(context).pop();
                    }
                  },
                ),
            ],
          )
        : const EmptyPageNote();
  }
}
