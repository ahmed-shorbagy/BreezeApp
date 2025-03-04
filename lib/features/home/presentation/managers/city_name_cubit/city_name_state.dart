part of 'city_name_cubit.dart';

@immutable
sealed class CityFromLocationState {}

final class CityFromLocationInitial extends CityFromLocationState {}

final class CityFromLocationSuccess extends CityFromLocationState {
  final CityFromLocationModel cityFromLocationModel;

  CityFromLocationSuccess({required this.cityFromLocationModel});
}

final class CityFromLocationLoading extends CityFromLocationState {}

final class CityFromLocationError extends CityFromLocationState {
  final String message;

  CityFromLocationError(this.message);
}
