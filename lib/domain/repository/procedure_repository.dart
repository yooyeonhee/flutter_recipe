import 'package:recipe_flutter/domain/model/procedure.dart';

abstract interface class ProcedureRepository {
  Future<List<Procedure>> getProcedures();
  Future<List<Procedure>> getProceduresByRecipeId(int recipeId);
}
