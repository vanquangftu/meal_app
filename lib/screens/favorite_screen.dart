import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavouriteSceen extends StatelessWidget {
  final List<Meal> favourites;
  FavouriteSceen(this.favourites);
  @override
  Widget build(BuildContext context) {
    if (favourites.isEmpty) {
      return Center(
        child: Text(
          'There is no chosen meals.\n Start adding some!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.title,
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favourites[index].id,
            title: favourites[index].title,
            imageUrl: favourites[index].imageUrl,
            affordability: favourites[index].affordability,
            duration: favourites[index].duration,
            complexity: favourites[index].complexity,
          );
        },
        itemCount: favourites.length,
      );
    }
  }
}
