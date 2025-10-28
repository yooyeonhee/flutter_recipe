import 'package:recipe_flutter/domain/model/chef_profile.dart';

abstract interface class ChefProfileRepository {
  Future<List<ChefProfile>> getChefProfiles();
  Future<ChefProfile?> getChefProfileByChefName(String chefName);
}
