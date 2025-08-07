import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/custom_seller_list_view_item.dart';
import '../../view_model/search_cubit.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          if (state.books.isEmpty) {
            return const Center(child: Text('No books found'));
          }
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return CustomSellerListViewItem(book: state.books[index]);
            },
          );
        } else if (state is SearchFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is SearchLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('Search for books'));
        }
      },
    );
  }
}