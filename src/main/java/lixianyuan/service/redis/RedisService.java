package lixianyuan.service.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

@Service
public class RedisService{
	@Autowired
	private ShardedJedisPool shardedJedisPool;
	
	private <T> T execute(Function<T, ShardedJedis> fun) {
        ShardedJedis shardedJedis = null;
        try {
            // 从连接池中获取到jedis分片对象
            shardedJedis = shardedJedisPool.getResource();
            return fun.callback(shardedJedis);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (null != shardedJedis) {
                // 关闭，检测连接是否有效，有效则放回到连接池中，无效则重置状态
                shardedJedis.close();
            }
        }
        return null;
    }

    /**
     * 执行set操作
     * 
     * @param key
     * @param value
     * @return
     */
    public String set(final String key, final String value) {
        return this.execute(new Function<String, ShardedJedis>() {
            public String callback(ShardedJedis e) {
                return e.set(key, value);
            }
        });
    }

    /**
     * 设置值并且设置生存时间
     * 
     * @param key
     * @param value
     * @param seconds
     * @return
     */
    public String set(final String key, final String value, final Integer seconds) {
        return this.execute(new Function<String, ShardedJedis>() {
            public String callback(ShardedJedis e) {
                String result = e.set(key, value);
                e.expire(key, seconds);
                return result;
            }
        });
    }

    /**
     * 指定get操作
     * 
     * @param key
     * @return
     */
    public String get(final String key) {
        return this.execute(new Function<String, ShardedJedis>() {
            public String callback(ShardedJedis e) {
                return e.get(key);
            }
        });
    }

    /**
     * 删除数据
     * 
     * @param key
     * @return
     */
    public Long del(final String key) {
        return this.execute(new Function<Long, ShardedJedis>() {
            public Long callback(ShardedJedis e) {
                return e.del(key);
            }
        });
    }
    
    /**
     * 设置生存时间
     * 
     * @param key
     * @return
     */
    public Long expire(final String key, final Integer seconds) {
        return this.execute(new Function<Long, ShardedJedis>() {
            public Long callback(ShardedJedis e) {
                return e.expire(key, seconds);
            }
        });
    }

}
	
	/*public String set(String key,String value){
		 ShardedJedis shardedJedis = null;
	        try {
	            // 从连接池中获取到jedis分片对象
	            shardedJedis = shardedJedisPool.getResource();
	            return shardedJedis.set(key, value);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            if (null != shardedJedis) {
	                // 关闭，检测连接是否有效，有效则放回到连接池中，无效则重置状态
	                shardedJedis.close();
	            }
	        }
	        return null;
	}
	
	public String get(String key){
		 ShardedJedis shardedJedis = null;
	        try {
	            // 从连接池中获取到jedis分片对象
	            shardedJedis = shardedJedisPool.getResource();
	            return shardedJedis.get(key);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            if (null != shardedJedis) {
	                // 关闭，检测连接是否有效，有效则放回到连接池中，无效则重置状态
	                shardedJedis.close();
	            }
	        }
	        return null;
	}*/
	
	
