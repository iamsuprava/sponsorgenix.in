// import 'package:flutter/material.dart';
// import 'package:sponsorgenix/mobile/navigation/nav_drawer.dart';

// class BlogMobile extends StatelessWidget {
//   const BlogMobile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavigationDrawer(),
//       appBar: AppBar(title: Text("Blog"),),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/mobile/navigation/nav_drawer.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({Key? key}) : super(key: key);

  @override
  State<BlogMobile> createState() => _AboutUsMobileState();
}

class _AboutUsMobileState extends State<BlogMobile> {
  bool condition = false;
  double height = 0;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Blog"),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: controller,
              child: Center(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25.0, right: 25.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              height = MediaQuery.of(context).size.height;
                            });
                            Future.delayed(Duration(milliseconds: 1000), () {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                              child: Icon(
                            Icons.clear_rounded,
                            color: Colors.white,
                            size: 35.0,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 43.0,
                    ),
                    Text(
                      "Check out our latest blog posts",
                      style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Our Blog",
                      style: GoogleFonts.poppins(
                          fontSize: 46.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 112.0,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width > 1300
                            ? MediaQuery.of(context).size.width * 0.65
                            : MediaQuery.of(context).size.width > 1200
                                ? MediaQuery.of(context).size.width * 0.75
                                : MediaQuery.of(context).size.width * 0.85,
                        child: BootstrapRow(
                          height: 361,
                          children: [
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon"),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon..."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon..."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                            BootstrapCol(
                              fit: FlexFit.tight,
                              sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                              child: Container(
                                width: 370.0,
                                child: BlogCard(
                                    image: "",
                                    head: "Take a tourof my office",
                                    sub: "Coming Soon.."),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: condition ? null : 0,
                    bottom: condition ? 0 : null,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                      onEnd: () {
                        // setState(() {
                        //   condition ? condition = false : condition = true;
                        //   Future.delayed(Duration(milliseconds: 400), () {
                        //     height = 0;
                        //   });
                        // });
                      },
                      height: height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogCard extends StatefulWidget {
  final String image;
  final String head;
  final String sub;
  BlogCard({required this.head, required this.image, required this.sub});

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: 351 + 10.0,
      //color: Colors.red,
      width: 370,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Colors.white70,
                image: DecorationImage(
                  image: NetworkImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
              height: 231,
              width: 370,
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Text(
                widget.head,
                maxLines: 1,
                style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              width: 370,
              child: Text(
                widget.sub,
                maxLines: 3,
                softWrap: true,
                style: GoogleFonts.poppins(
                    height: 1.65,
                    fontSize: 14.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
