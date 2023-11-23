import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';

PreferredSize Tap_Appbar() {
    return PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            backgroundColor: AppColors().darktheme,
            title:   BorderedText(
           strokeColor: const Color.fromARGB(255, 255, 255, 255),
            strokeWidth: 1,
        child: Text('Hot & New',style: GoogleFonts.montserrat().copyWith(
            fontSize: 30,
            color: AppColors().primarytheme,
            fontWeight: FontWeight.bold),)),
            actions: [
               Icon(
                Icons.cast,
                color: AppColors().whitetheme,
                size: 30,
              ),
              constantwidth10,
              Container(
                width: 30,
                height: 30,
                color: Colors.black,
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: AppColors().primarytheme,
              labelColor: AppColors().darktheme,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                  color: AppColors().primarytheme,
                  borderRadius: BorderRadius.circular(15)),
              tabs: const [
                Tab(
                  text: '🍿 Comming soon!',
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                )
              ],
            ),
          ));
  }

