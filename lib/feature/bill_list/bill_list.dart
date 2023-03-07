import 'package:flutter/material.dart';

class EmptyPage extends StatefulWidget {
  static const String routePath = '/EmptyPage';
  const EmptyPage({Key? key}) : super(key: key);

  @override
  State<EmptyPage> createState() => _EmptyPage();
}

class _EmptyPage extends State<EmptyPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget walletScreenDashBoard = Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 224, width: double.infinity,
          //  color: Color(0xFF0070BA)
          color: const Color(0xff1546A0),
        ),
        SizedBox(
          height: 224,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  left: -156,
                  top: -96,
                  child: Opacity(
                    opacity: 0.16,
                    child: Image.asset(
                      "assets/images/full-bloom.png",
                      color: Colors.white,
                      height: 480,
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
            // top: 128,
            bottom: -60,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 64,
              child: ClipOval(
                child: Image.network(
                  "https://vietjet.net/includes/uploads/2020/12/nuoc-anh-thuoc-chau-nao.jpg",
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ))
      ],
    );
    //? STORES INFORMATION ABOUT THE USER
    Widget userInfo = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Personal Info",
                    style: TextStyle(color: Color(0xff929BAB)))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",
                  style: TextStyle(color: Color(0xff243656), fontSize: 15),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Flexible(
                  child: Text(
                    "F.name + Last.name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff243656),
                        fontSize: 15),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "E-mail",
                  style: TextStyle(color: Color(0xff243656), fontSize: 15),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Flexible(
                  child: Text(
                    'email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff243656),
                        fontSize: 15),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Phone",
                  style: TextStyle(color: Color(0xff243656), fontSize: 15),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Flexible(
                  child: Text(
                    '0123321123',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff243656),
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ]
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: e,
                  ))
              .toList(),
        ));
    Widget listCarts = ListView.separated(
      padding: const EdgeInsets.all(0),
      itemBuilder: (_, index) => Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                /*
              color: Color(0xffF5F7FA),
              blurRadius: 4,
              offset: Offset(0.0, 3),
              spreadRadius: 0
              */
                color: const Color(0xff1546a0).withOpacity(0.1),
                blurRadius: 48,
                offset: const Offset(2, 8),
                spreadRadius: -16),
          ],
          color: Colors.white,
        ),
        child: ListTile(
          onTap: () {},
          contentPadding:
              const EdgeInsets.only(left: 12, top: 0, right: 0, bottom: 0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(6.18),
            child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Color(0xff243656),
                  BlendMode.color,
                ),
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.saturation,
                  ),
                  child: Container(
                      color: Colors.white,
                      child: Image.network(
                        "https://i0.wp.com/thatnhucuocsong.com.vn/wp-content/uploads/2022/04/Anh-avatar-dep-anh-dai-dien-FB-Tiktok-Zalo.jpg?ssl=1",
                        width: 48,
                        height: 48,
                      )),
                )),
          ),
          title: const Text(
            'brand',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff243656),
                fontSize: 16.5),
          ),
          subtitle: const Text(
            '0123123123',
            style: TextStyle(fontSize: 13, color: Color(0xff929BAB)),
          ),
        ),
      ),
      separatorBuilder: (_, b) => const Divider(
        height: 14,
        color: Colors.transparent,
      ),
      itemCount: 5,
    );
    Widget myBankingCards = Expanded(
        child: Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: listCarts,
    ));

    Widget walletScreenContents = Column(
      children: [
        walletScreenDashBoard,
        const SizedBox(
          height: 60,
        ),
        userInfo,
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
          child: Row(
            children: [
              const Text(
                "My Cards",
                style: TextStyle(color: Color(0xff929BAB)),
              ),
              const Spacer(),
              InkWell(
                  onTap: goToAddCardScreen,
                  child: const Text(
                    "+ Add",
                    style: TextStyle(color: Color(0xff929BAB)),
                  ))
            ],
          ),
        ),
        myBankingCards,
      ],
    );

    return Scaffold(
        backgroundColor: const Color(0xfffdfdfd),
        //  backgroundColor: Color(0xfffcfcfc),
        appBar: AppBar(
          leading: IconButton(
              onPressed: goBackToLastTabScreen,
              icon: const Icon(Icons.arrow_back)),
          title: const Text("My Wallet"),
          centerTitle: true,
          actions: [
            Builder(
                builder: (context) => IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    )))
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: walletScreenContents,
          )
        ]));
  }

  void goToAddCardScreen() {}

  Widget _buildAvailableCards(
      BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
    return ListView.separated(
      padding: const EdgeInsets.all(0),
      itemBuilder: (_, index) => Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                /*
                  color: Color(0xffF5F7FA),
                  blurRadius: 4,
                  offset: Offset(0.0, 3),
                  spreadRadius: 0
                  */
                color: const Color(0xff1546a0).withOpacity(0.1),
                blurRadius: 48,
                offset: const Offset(2, 8),
                spreadRadius: -16),
          ],
          color: Colors.white,
        ),
        child: ListTile(
          onTap: () {},
          contentPadding:
              const EdgeInsets.only(left: 12, top: 0, right: 0, bottom: 0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(6.18),
            child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Color(0xff243656),
                  BlendMode.color,
                ),
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.saturation,
                  ),
                  child: Container(
                      color: Colors.white,
                      child: Image.network(
                        "https://i0.wp.com/thatnhucuocsong.com.vn/wp-content/uploads/2022/04/Anh-avatar-dep-anh-dai-dien-FB-Tiktok-Zalo.jpg?ssl=1",
                        width: 48,
                        height: 48,
                      )),
                )),
          ),
          title: const Text(
            'cart name',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff243656),
                fontSize: 16.5),
          ),
          subtitle: const Text(
            '1231231',
            style: TextStyle(fontSize: 13, color: Color(0xff929BAB)),
          ),
        ),
      ),
      separatorBuilder: (_, b) => const Divider(
        height: 14,
        color: Colors.transparent,
      ),
      itemCount: 12,
    );
  }

  void goBackToLastTabScreen() {}

  void _deleteCardDialogBox(String cardNumber) {
    Decoration buttonDecoration = BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.blueGrey.shade100,
            offset: const Offset(0, 4),
            blurRadius: 5.0)
      ],
      gradient: const RadialGradient(
          colors: [Color(0xff0070BA), Color(0xff1546A0)],
          radius: 8.4,
          center: Alignment(-0.24, -0.36)),
      borderRadius: BorderRadius.circular(10),
    );
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      primary: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text(
                "Delete Card?",
                textAlign: TextAlign.center,
              ),
              content: const Text(
                "Are you sure",
                textAlign: TextAlign.center,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 48,
                          width: 100,
                          decoration: buttonDecoration,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: buttonStyle,
                              child: const Text('Delete')),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Container(
                          height: 48,
                          width: 100,
                          decoration: buttonDecoration,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: buttonStyle,
                              child: const Text('Cancel')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ));
  }
}
