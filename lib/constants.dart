const String kDefaultFontFamily = 'Gilroy';
const int kAnimationduration = 900;
// class HomeHeaderWeb extends StatefulWidget {
//   final double pixels;
//   final Widget down_key;

//   const HomeHeaderWeb({
//     Key? key,
//     required this.pixels,
//     required this.down_key,
//   }) : super(key: key);

//   @override
//   State<HomeHeaderWeb> createState() => _HomeHeaderWebState();
// }

// List text = [
//   "Freelancers",
//   "Startups",
//   "businesses",
//   "Designers",
//   "Developers",
// ];

// class _HomeHeaderWebState extends State<HomeHeaderWeb> {
//   double width = 180;
//   String name = text[0];
//   double height = 1500;
//   int i = 0;
//   late bool condition;
//   VideoPlayerController? _videoPlayerController;

//   @override
//   void initState() {
//     _videoPlayerController =
//         VideoPlayerController.asset("assets/images/Untitled.webm")
//           ..setLooping(true)
//           ..initialize().then((_) {
//             setState(() {});
//           });
//     WidgetsBinding.instance!.addPostFrameCallback((_) {
//       // mutes the video
//       _videoPlayerController!.setVolume(0);
//       // Plays the video once the widget is build and loaded.
//       _videoPlayerController!.play();
//     });
//     width = 0;
//     condition = true;
//     super.initState();
//     Future.delayed(Duration(milliseconds: 400), () {
//       setState(() {
//         width = 180;
//         height = 0;
//       });
//     });
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _videoPlayerController!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height,
//       width: size.width,
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           Center(
//               child: _videoPlayerController!.value.isInitialized
//                   ? AspectRatio(
//                       aspectRatio: _videoPlayerController!.value.aspectRatio,
//                       child: VideoPlayer(_videoPlayerController!),
//                     )
//                   : Container(
//                       height: size.height,
//                       width: size.width,
//                     )),
//           Padding(
//             padding: EdgeInsets.fromLTRB(
//                 size.width * 0.2, size.height * 0.1, size.width * 0.2, 20),
//             child: Image.asset(
//               "assets/images/Logo.png",
//               filterQuality: FilterQuality.high,
//               height: size.height * 0.4,
//               width: size.width * 0.50,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.fromLTRB(
//                 size.width * 0.3, size.height * 0.63, size.width * 0.3, 0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Helping ",
//                   style: GoogleFonts.poppins(
//                       fontSize: 31.0,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white),
//                 ),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 1000),
//                   curve: Curves.easeInOut,
//                   width: width,
//                   onEnd: () {
//                     if (i == 5) i = 0;
//                     if (width == 0) {
//                       name = text[i++];
//                     }
//                     Future.delayed(Duration(milliseconds: 200), () {
//                       setState(() {
//                         width == 180 ? width = 0 : width = 180;
//                       });
//                     });
//                   },
//                   child: Text(
//                     name,
//                     softWrap: false,
//                     style: GoogleFonts.poppins(
//                         fontSize: 31.0,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white),
//                   ),
//                 ),
//                 Container(
//                   height: 29.0,
//                   width: 2.0,
//                   color: Colors.white,
//                 )
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.fromLTRB(
//                 size.width * 0.95, size.height * 0.73, 0, size.height * 0.02),
//             child: Container(
//               height: size.height * 0.25,
//               width: size.width * 0.05,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SocialButtons(
//                     child: Image.asset(
//                       "assets/images/Instagram_3d.png",
//                     ),
//                     url: "https://www.instagram.com/sponsorgenix",
//                   ),
//                   Spacer(),
//                   SocialButtons(
//                       url: "https://twitter.com/sponsorgenix",
//                       child: Image.asset("assets/images/Twitter_3d.png")),
//                   Spacer(),
//                   SocialButtons(
//                     url: "https://www.instagram.com/sponsorgenix",
//                     child: Image.asset(
//                       "assets/images/LinkedIn_3d.png",
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: size.width / 2,
//             bottom: 0,
//             child: Visibility(
//                 visible: widget.pixels >= size.height * 0.65 ? false : true,
//                 child: widget.down_key),
//           ),
//         ],
//       ),
//     );
//   }
// }