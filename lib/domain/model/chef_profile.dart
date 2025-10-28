import 'package:freezed_annotation/freezed_annotation.dart';

part 'chef_profile.freezed.dart';
part 'chef_profile.g.dart';

@freezed
class ChefProfile with _$ChefProfile {
  const factory ChefProfile({
    required int id,
    required final String name,
    required final String image,
    required final String address,
  }) = _ChefProfile;

  factory ChefProfile.fromJson(Map<String, dynamic> json) =>
      _$ChefProfileFromJson(json);
}
