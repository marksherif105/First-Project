// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:real_project/presentation/cubit/product_state.dart';
//
// import '../../product_service.dart';
//
//
// class ProductCubit extends Cubit<ProductState> {
//   ProductCubit({required this._repo}) : super(ProductIntialState());
//
//   final ProductService api = ProductService();
//   final ProductDetailsRepo _repo;
//
//   Future<void> fetchProducts() async {
//     emit(ProductsLoadingState());
//     final result = await api.fetchProducts();
//     if (result.items!.isEmpty) {
//       emit(ProductsFailureState(message: "List is Empty "));
//     }
//     emit(ProductsSuccessState(response: result));
//   }
//
//   Future<void> productDetails({required String productId}) async {
//     switch (state) {
//       case ProductsSuccessState(:final response):
//         emit(ProductsDetailsLoadingstate(response: response));
//         final result = await _repo.getProductDetails(productId: productId);
//         result.fold(
//               (failure) {
//             emit(
//               ProductsDetailsFailureState(
//                 response: response,
//                 message: failure.msg,
//               ),
//             );
//           },
//               (success) {
//             emit(
//               ProductsDetailsSuccessState(response: response, details: success),
//             );
//           },
//         );
//     }
//   }
// }