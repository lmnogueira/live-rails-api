class LruCache

  attr_accessor :cache_size, :enable_cache

  DEFAULT_CACHE_SIZE = 100

  def initialize(args={})
    clear_cache
    @cache_size = args[:cache_size] || DEFAULT_CACHE_SIZE
  end

  def set(path, body, response)
    if @enable_cache
      key = Digest::MD5.hexdigest(path + body.map{|k,v| "#{k}=#{v}" }.join(','))
      if @cache[key.to_sym].nil?
        @cache[key.to_sym] = response
        @cache.shift if @cache.size > @cache_size
        return true
      end
    end
    return false
  end

  def get(path, body)
    if @enable_cache
      key = Digest::MD5.hexdigest(path + body.map{|k,v| "#{k}=#{v}" }.join(','))
      clear_cache
      response = @cache[key.to_sym]
    end
  end

  def clear_cache
    @cache = {}
  end

end
