import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';

class AppConstants {
  static String searchTxt = "Search in thousands of products";
  static String categoryTxt = "Explore by Category";
  static String dealsTxt = "Deals of the day";
  static String cart = "Cart";
  static String offerTxt = "* Available until 24 December 2020";
    static String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return (failure as ServerFailure).message!;
    case CacheFailure:
      return (failure as CacheFailure).message!;
  
    default:
      return 'Unexpected error';
  }
}
}
