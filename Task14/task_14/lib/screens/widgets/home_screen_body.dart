import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_14/cubit/homepage_cubit.dart';
import 'package:task_14/screens/news_details_screen.dart';
import 'package:task_14/screens/widgets/news_list_tile.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageCubit, HomepageState>(
      builder: (context, state) {
        if (state is HomepageFailure) {
          return Text(state.errorMessage);
        }
        if (state is HomepageSucess) {
          return ListView.builder(
            itemCount: state.articles.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsDetailsScreen(
                        article: state.articles[index],
                        heroTag: index,
                      ),
                    ),
                  );
                },
                child: NewsListTile(
                  newsModel: state.articles[index],
                  herotag: index,
                ),
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
