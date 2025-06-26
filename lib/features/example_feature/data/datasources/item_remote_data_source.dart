import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import '../../../../core/network/api_service/api_service.dart';
import '../../../../core/network/endpoints/api_endpoints.dart';
import '../models/item_model.dart';

abstract class ItemRemoteDataSource {
  Future<List<ItemModel>> getItems();
}

class ItemRemoteDataSourceImpl implements ItemRemoteDataSource {
  final ApiService _apiService;

  ItemRemoteDataSourceImpl({required ApiService apiService}) : _apiService = apiService;
  @override
  Future<List<ItemModel>> getItems() async {
    return await _apiService.getCollectionData<ItemModel>(endpoint: ApiEndpoint.auth(AuthEndpoint.LOGIN), cachePolicy: CachePolicy.noCache, converter: ItemModel.fromJson, requiresAuthToken: false);
  }
}
