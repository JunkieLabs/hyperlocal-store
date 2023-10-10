import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:storefront_flutter/app/tools/bloc/event_bloc.dart';

class LabsController extends Bloc<BlocEvent, int> {
  // LabsController() : super(0);
  
  
  // final AuthAccountRepository mAuthAccountRepo;
  var mLogger = Logger();

//{required this.mAuthAccountRepo}
  LabsController() : super(0) {
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
