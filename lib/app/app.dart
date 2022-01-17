// This class StackedApp takes in a list of route which uses d same route dart d
// auto_route package has defined, with slight name changes.
import 'package:pet_selection/ui/views/home/home_view.dart';
import 'package:pet_selection/ui/views/landing_page/landing_page_view.dart';
import 'package:pet_selection/ui/views/pet_selection/pet_selection_view.dart';
import 'package:pet_selection/ui/views/user_access/user_access_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: LandingPageView,
      initial: true,
    ),
    MaterialRoute(
      page: UserAccessView,
    ),
    MaterialRoute(
      page: HomeView,
    ),
    MaterialRoute(
      page: PetSelectionView,
    ),
  ],
  dependencies: [
    LazySingleton(
      classType: NavigationService,
    ),
  ],
)
class AppSetUp {
  // Serves no purpose at the moment besides having an annotation attached

}
