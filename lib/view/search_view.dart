import 'package:flutter/material.dart';
import 'package:photoapp/component/button_component.dart';
import 'package:photoapp/component/text_component.dart';

import '../component/text_field_component.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final searchController = TextEditingController();
  List<String> _imagesSearch = [];
  int _imageToShow = 15;
  final List<String> _images = const [
    "assets/images/dog.png",
    "assets/images/dog_1.png",
    "assets/images/dog_2.png",
    "assets/images/dog_3.png",
    "assets/images/dog_4.png",
    "assets/images/dog_5.png",
    "assets/images/dog_6.png",
    "assets/images/dog_7.png",
    "assets/images/dog_8.png",
    "assets/images/dog_9.png",
    "assets/images/dog_10.png",
    "assets/images/dog_11.png",
    "assets/images/dog_12.png",
    "assets/images/dog_13.png",
    "assets/images/dog_14.png",
    "assets/images/dog_15.png",
    "assets/images/dog_16.png",
    "assets/images/dog_17.png",
    "assets/images/dog_18.png",
    "assets/images/dog_19.png",
    "assets/images/dog_20.png",
    "assets/images/dog_21.png",
    "assets/images/dog_22.png",
    "assets/images/dog_23.png",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 76, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NormaTextComfortaa(
              text: "Search",
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              labelText: '',
              hintText: 'Search all photos',
              controller: searchController,
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {
                setState(() {
                  if (value == "dogs") {
                    _imagesSearch = _images;
                  } else {
                    _imagesSearch = [];
                  }
                });
              },
            ),
            const SizedBox(
              height: 32,
            ),
            if (_imagesSearch.isNotEmpty) ...[
              NormaText(
                  text:
                      (_imagesSearch.isNotEmpty) ? "ALL RESULTS" : "Not Found"),
              const SizedBox(
                height: 24,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 11,
                      mainAxisSpacing: 11),
                  itemCount: _imageToShow > _imagesSearch.length
                      ? _imagesSearch.length
                      : _imageToShow,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 107,
                      width: 107,
                      child: Image.asset(
                        _imagesSearch[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
              const SizedBox(
                height: 32,
              ),
              CustomButtonComponent(
                text: "see more".toUpperCase(),
                onPressed: () {
                  setState(
                    () {
                      _imageToShow += 9;
                    },
                  );
                },
                width: double.maxFinite,
              ),
              const SizedBox(
                height: 32,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
