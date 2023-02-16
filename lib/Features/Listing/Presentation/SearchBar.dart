import 'package:expense_manager/Core/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 50.0,
      width: double.maxFinite,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.buttonBackground),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              padding: const EdgeInsets.only(top: 10.0),
              child: const TextField(
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            const Icon(Icons.search)
          ],
        ),
      ),
    );
  }
}
