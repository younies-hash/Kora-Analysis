abstract class KoraCache<T>{
  T? itemCache;
  List<T> listCache = [];
  List<T> getFullList();
}