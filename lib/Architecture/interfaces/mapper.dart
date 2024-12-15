abstract class Mapper<T>{
  T fromMap(String id, Map<String, dynamic> map);
  Map<String, dynamic> toMap(T obj);
}