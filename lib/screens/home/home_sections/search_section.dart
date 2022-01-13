import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .55,
          child: TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.grey,),
              border: InputBorder.none,
              hintText: 'Search Destination',
              enabled: true,
            ),
            showCursor: false,
            autocorrect: true,
            maxLines: 1,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.category_rounded,color: Colors.blue,size: 40,),
        ),
      ],
    );
  }
}
