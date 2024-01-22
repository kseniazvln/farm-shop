import 'package:dio/dio.dart';
import 'package:the_shop/data/repository/cart_repository.dart';
import 'package:the_shop/data/repository/catalog_repository.dart';
import 'package:the_shop/data/service/cart_service/cart_service.dart';
import 'package:the_shop/data/service/catalog_service/catalog_service.dart';
import 'package:the_shop/data/service/delivery_service/delivery_service.dart';
import 'package:the_shop/data/service/order_service/order_service.dart';
import 'package:the_shop/data/service/payment_service/payment_service.dart';

class AppStarter {
  static final AppStarter _instance = AppStarter._internal();

  factory AppStarter() => _instance;

  AppStarter._internal();

  final Dio dio = Dio();

  late final CatalogService catalogService;
  late final CatalogRepository catalogRepository =
      CatalogRepository(catalogService);

  late final CartService cartService;
  late final CartRepository cartRepository = CartRepository(cartService);

  late final DeliveryService deliveryService;
  late final PaymentService paymentService;
  late final OrderService orderService;

  Future<void> init() async {
    const timeout = Duration(seconds: 60);

    dio.options.baseUrl = 'https://c0557e1b-615d-43a8-8ff2-624fe13ef96a.mock.pstmn.io';
    dio.options
      ..contentType = "application/json"
      ..responseType = ResponseType.json
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;

    catalogService = CatalogService(dio);
    cartService = CartService(dio);
    deliveryService = DeliveryService(dio);
    paymentService = PaymentService(dio);
    orderService = OrderService(dio);
  }
}
