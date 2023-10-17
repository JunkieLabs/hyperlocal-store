import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:storefront_flutter/app/tools/bloc/event_bloc.dart';
import 'package:storefront_flutter/app/tools/bloc/state_bloc.dart';
import 'package:storefront_flutter/app/ui/pages/products/list/bloc_states.dart';

// part 'bloc_events.dart';

class ProductsController extends Bloc<BlocEvent, ProductsBlocState> {
  // ProductsController() : super(0);
  
  
  // final AuthAccountRepository mAuthAccountRepo;
  var mLogger = Logger();

//{required this.mAuthAccountRepo}
  ProductsController() : super(ProductsBlocState()) {
    // counterStream = _controller.stream;
  }



  @override
  Future<void> close() {
    return super.close();
  }


  
  // Future<UserCredential> getRedirectResult() async {
  //   mLogger.d("getRedirectResult");
  //   var result =  await mAuthAccountRepo.getFirebaseRedirectResult();
  //   mLogger.d("getRedirectResult 2", result);
  //  return result;
  // }
}
