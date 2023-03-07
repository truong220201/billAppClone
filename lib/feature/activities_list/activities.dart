import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  static const String routePath = '/Activities';
  const Activities({
    Key? key,
  }) : super(key: key);

  @override
  State<Activities> createState() => _Activities();
}

class _Activities extends State<Activities> {
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
  Widget appBarTitle =
      const Text("Activities", style: TextStyle(color: Color(0xff243656)));
  Icon actionIcon = const Icon(
    Icons.audiotrack,
    color: Colors.green,
    size: 30.0,
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfffdfdfd),
        //  backgroundColor: Color(0xfffcfcfc),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back, color: Color(0xff243656))),
          title: appBarTitle,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  if (actionIcon.icon == Icons.audiotrack) {
                    setState(() {
                      appBarTitle = Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                            color: Color(0xffF5F7FA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.18))),
                        child: TextField(
                          autofocus: true,
                          textAlignVertical: TextAlignVertical.center,
                          onChanged: (value) {
                            setState(() {});
                          },
                          style: const TextStyle(color: Color(0xff929BAB)),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(6.18),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffF5F7FA), width: 1.618),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffF5F7FA), width: 1.618),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                color: Color(0xff929BAB),
                              )),
                        ),
                      );

                      actionIcon = const Icon(
                        Icons.close,
                        color: Color(0xff243656),
                      );
                    });
                  } else {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                },
                icon: actionIcon),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Column(children: <Widget>[
          const SizedBox(
            height: 96,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffF5F7FA),
                borderRadius: BorderRadius.circular(10)),
            child: ToggleButtons(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff929BAB),
              fillColor: const Color(0xFF0070BA),
              selectedColor: Colors.white,
              renderBorder: false,
              onPressed: (int index) {
                setState(() {});
              },
              isSelected: const [true, false, false],
              children: const <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 16),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Sent",
                      style: TextStyle(fontSize: 16),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Received",
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: SizedBox(
            height: 300,
            width: double.infinity,
            child: Builder(builder: (context) {
              return listCarts;
            }),
          )),
        ]));
  }
}
