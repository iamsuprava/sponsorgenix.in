import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sponsorgenix/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class CustomWhatsAppFAB extends StatefulWidget {
  final double iconSize;
  final double containerHeight;

  const CustomWhatsAppFAB({
    Key? key,
    required this.iconSize,
    required this.containerHeight,
  }) : super(key: key);
  @override
  State<CustomWhatsAppFAB> createState() => _CustomWhatsAppFABState();
}

class _CustomWhatsAppFABState extends State<CustomWhatsAppFAB> {
  final _nameController = TextEditingController();
  final _msgController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _nameController.dispose();
    _msgController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Name field
    final _nameField = TextFormField(
      autofocus: false,
      controller: _nameController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        _nameController.text = value!;
      },
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Name cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid name (Min. 3 Character)");
        }
        return null;
      },
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person_rounded),
        hintText: "Enter Your Name",
        labelText: "Name",
        hintMaxLines: 1,
      ),
    );
    //text msg field
    final _msgField = TextFormField(
      controller: _msgController,
      keyboardType: TextInputType.text,
      onSaved: (value) {
        _msgController.text = value!;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return ("Message cannot be Empty");
        }
        if (value.length < 5) {
          return ("Message is too short !");
        }
        return null;
      },
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail_rounded),
          hintText: "Enter Your Message",
          labelText: "Your Text"),
    );
    return FloatingActionButton(
      child: Container(
        width: widget.containerHeight,
        height: widget.containerHeight,
        child: Icon(
          Icons.whatsapp_rounded,
          size: widget.iconSize,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: const Color(0xFF25D366),
          boxShadow: [
            BoxShadow(
              color: Colors.cyan.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 16,
              offset: const Offset(-8, 0),
            ),
            BoxShadow(
              color: Colors.greenAccent.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 16,
              offset: const Offset(8, 0),
            ),
            BoxShadow(
              color: Colors.cyan.withOpacity(0.2),
              spreadRadius: 16,
              blurRadius: 32,
              offset: const Offset(-8, 0),
            ),
            BoxShadow(
              color: Colors.greenAccent.withOpacity(0.2),
              spreadRadius: 16,
              blurRadius: 32,
              offset: const Offset(8, 0),
            )
          ],
        ),
      ),
      onPressed: () => showDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.transparent,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                child: Container(
                  height: size.height * 0.5,
                  width: size.width * 0.4,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white60, Colors.white30]),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            AutoSizeText(
                              "Connect Us on WhatsApp",
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: kDefaultFontFamily,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.whatsapp_rounded,
                              size: 25,
                              color: Color(0xFF25D366),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: _nameField,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: _msgField,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 30, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: Navigator.of(context).pop,
                                child: const Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 16,
                                      fontFamily: kDefaultFontFamily,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.greenAccent),
                                onPressed: () => sendText(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "SEND",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: kDefaultFontFamily,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.send_rounded)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void sendText() {
    var name = _nameController.text;
    var msg = _msgController.text;

    if (_formKey.currentState!.validate()) {
      _launchWhatsApp(name, msg);
      _nameController.clear();
      _msgController.clear();
    }
  }

  void _launchWhatsApp(name, msg) async {
    final link = WhatsAppUnilink(
        phoneNumber: '+91-8392068384', text: 'Hi this is $name.\n\n$msg');
    String _url = link.toString();
    if (await canLaunch(_url)) {
      await launch(_url);
    } else if (!await canLaunch(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
