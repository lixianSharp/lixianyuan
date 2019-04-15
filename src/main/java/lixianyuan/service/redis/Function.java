package lixianyuan.service.redis;

public interface Function<T, E> {
	public T callback(E e);
}
