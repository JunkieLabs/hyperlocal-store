import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:storefront_flutter/app/tools/bloc/event_bloc.dart';
import 'package:storefront_flutter/app/tools/bloc/state_bloc.dart';
import 'package:storefront_flutter/app/ui/pages/products/detail/bloc_states.dart';

// part 'bloc_events.dart';

class ProductDetailController extends Bloc<BlocEvent, ProductDetailBlocState> {
  // ProductDetailController() : super(0);
  
  
  // final AuthAccountRepository mAuthAccountRepo;
  var mLogger = Logger();

//{required this.mAuthAccountRepo}
  ProductDetailController() : super(ProductDetailBlocState()) {
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
