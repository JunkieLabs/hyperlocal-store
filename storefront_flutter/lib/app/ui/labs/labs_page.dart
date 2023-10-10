
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/ui/constants.dart';
import 'package:storefront_flutter/app/ui/labs/labs_controller.dart';
import 'package:storefront_flutter/res/values/gaps.dart';


class LabsPage extends StatefulWidget {
  final String title;
  const LabsPage({Key? key, this.title = 'Labs'}) : super(key: key);

  @override
  _LabsPageState createState() => _LabsPageState();
}

class _LabsPageState extends State<LabsPage> {

  late final LabsController store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<LabsController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scrollbar(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                JlResGaps.v_16,
                Text("Contacts"),
                JlResGaps.v_16,
                // ContactSelectItem(
                //   contactBox: ContactBox()
                //     ..id = "2"
                //     ..boxId = 2
                //     ..email = "paramContact.email"
                //     ..phone = null
                //     ..name = "Fire"
                //     ..status = 32,
                //   isSelected: false,
                //   onSelect: (isSelected, contactSelectType) => {
                //     mLogger
                //         .d("ContactSelectItem: $isSelected, $contactSelectType")
                //   },
                // ),
                Text("Pages"),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Splash Page'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.splash);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Onboard Pages'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsOnboard);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Auth Pages'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsAuth);
                    },
                  ),
                ),

                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Home'),
                    onPressed: () {
                      // Modular.to.navigate(UiConstants.Routes.homeDetails);
                      Modular.to.pushNamed(UiConstants.Routes.home);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Chat'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsChats);
                    },
                  ),
                ),
                 JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Contact Pages'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsContacts);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Commune'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsCommune);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Events'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsEvents);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Event Bonds'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsEventBonds);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Payment'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsPayment);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Notification'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsNotification);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Friend'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsFriend);
                    },
                  ),
                ),

                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Accounts'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsAccount);
                    },
                  ),
                ),
                JlResGaps.v_16,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Common'),
                    onPressed: () {
                      Modular.to.pushNamed(UiConstants.Routes.labsCommon);
                    },
                  ),
                ),

                JlResGaps.v_16,

              ],
            ),
          ),
        ),
      ),
    );
  }
}