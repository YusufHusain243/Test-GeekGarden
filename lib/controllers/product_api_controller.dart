import 'package:geek_garden/services/product_service.dart';
import 'package:get/get.dart';

class ProductsApiController extends GetxController with StateMixin<List> {
  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.empty());
    get();
  }

  void get() {
    change(null, status: RxStatus.loading());
    try {
      ProductsService().getData().then(
        (response) => {
          if (response.statusCode == 200)
            {
              change(
                response.body,
                status: RxStatus.success(),
              ),
            }
        },
        onError: (_) {
          change(null, status: RxStatus.error());
        },
      );
    } catch (e) {
      change(null, status: RxStatus.error());
    }
  }
}
