import 'package:ZY_Player_flutter/player/page/player_detail_page.dart';
import 'package:ZY_Player_flutter/player/page/player_search_page.dart';
import 'package:ZY_Player_flutter/player/page/zhibo_detail_page.dart';
import 'package:ZY_Player_flutter/routes/router_init.dart';
import 'package:fluro/fluro.dart';

class PlayerRouter implements IRouterProvider {
  static String searchPage = '/player_search';
  static String detailPage = '/player_detail';
  static String detailZhiboPage = '/player_zhibo_detail';

  @override
  void initRouter(FluroRouter router) {
    router.define(searchPage, handler: Handler(handlerFunc: (_, __) => PlayerSearchPage()));
    router.define(detailPage,
        handler: Handler(handlerFunc: (_, params) => PlayerDetailPage(playerList: params["playerList"]?.first)));

    router.define(detailZhiboPage,
        handler: Handler(
            handlerFunc: (_, params) => ZhiboDetailPage(title: params['title']?.first, url: params['url']?.first)));
  }
}
