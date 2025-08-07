import 'package:bookly_app/features/search/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/styles.dart';
import '../../view_model/search_cubit.dart';
import 'custom_search_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CustomSearchTextField(
            onSubmitted: (value) {
              BlocProvider.of<SearchCubit>(context).fetchSearchBooks(value);
            },
          ),
          const SizedBox(height: 20),
          Text('Search Result', style: Styles.textStyle18),
          const SizedBox(height: 10),
          const Expanded(child: SearchResultListView()),
        ]
      ),
    );
  }
}

