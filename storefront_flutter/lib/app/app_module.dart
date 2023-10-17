import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/ui/app_default_page.dart';
import 'package:storefront_flutter/app/ui/labs/labs_module.dart';
import 'package:storefront_flutter/app/ui/pages/products/products_module.dart';

import 'ui/pages/home/home_module.dart';

class AppModule extends Module {
  // @override
  // final List<Bind> binds() = [];

  // @override
  // final List<ModularRoute> routes = [
  //   ModuleRoute('/', module: HomeModule()),
  // ];

  @override
  void binds(Injector i) {
    // TODO: implement binds
    // super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    
    // r.child('/', child: (context) => HomeModule());
     r.child('/', child: (context) => AppDefaultPage());
     r.module('/labs', module: LabsModule());
    r.module('/products', module:  ProductsModule());
    r.module('/home', module:  HomeModule());
    // super.routes(r);
  }

}


  // @override
  // final List<Bind> binds = [
  //   BlocBind.factory(
  //     (i) => LabsController(mAuthAccountRepo: i<AuthAccountRepository>()),
  //   ),
  //   BlocBind.factory(
  //     (i) => LabsAuthController(
  //         mAuthAccountRepository: i<AuthAccountRepository>(),
  //         mAuthProvider: i<AuthProvider>()),
  //   ),
  //   BlocBind.factory(
  //     (i) => LabsOnboardController(mContactApiRepo: i<ContactApiRepo>()),
  //   ),
  //   BlocBind.factory(
  //     (i) => LabsContactsController(mContactApiRepo: i<ContactApiRepo>(), mContactRepo: i<ContactRepository>()),
  //   ),BlocBind.factory(
  //     (i) => LabsMediaController(mMediaRepository: i<MediaRepository>()),
  //   ),BlocBind.factory(
  //     (i) => LabsChatsController(mChatRepo: i<ChatRepository>()),
  //   ),
  // ];

  // @override
  // final List<ModularRoute> routes = [
  //   ChildRoute(Modular.initialRoute, child: (_, args) => const LabsPage()),
  //   ChildRoute('/onboards', child: (_, args) => const LabsOnboardPage()),
  //   ChildRoute('/auth', child: (_, args) => const LabsAuthPage()),
  //   ChildRoute('/chats', child: (_, args) => const LabsChatsPage()),
  //   ChildRoute('/contacts', child: (_, args) => const LabsContactsPage()),
  //   ChildRoute('/commune', child: (_, args) => const LabsCommunePage()),
  //   ChildRoute('/events', child: (_, args) => const LabsEventsPage()),
  //   ChildRoute('/event-bonds', child: (_, args) => const LabsEventBondsPage()),
  //   ChildRoute('/common', child: (_, args) => const LabsCommonPage()),
  //   ChildRoute('/payment', child: (_, args) => const LabsPaymentsPage()),
  //   ChildRoute('/friend', child: (_, args) => const LabsfriendPage()),
  //   ChildRoute('/account', child: (_, args) => const LabsAccountPage()),
  //     ChildRoute('/common/media', child: (_, args) => const LabsMediaPage()),
  //     ChildRoute('/notification', child: (_, args) => const LabsNotificationsPage()),
   
  // ];
