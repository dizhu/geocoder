# -*- encoding: utf-8 -*-
require 'redis'
require 'yaml'

def redis_conf
  @_conf ||= YAML.load_file('config/redis.yml')[ENV['RACK_ENV'] || 'development']
end

def redis
  @_redis ||= Redis.new(
    host: redis_conf[:host], 
    port: redis_conf[:port], 
    password: redis_conf[:password],
    db: redis_conf[:database]
  )
end

def redis
  @_redis ||= Redis.new(
    host: redis_conf[:host], 
    port: redis_conf[:port], 
    password: redis_conf[:password],
    db: redis_conf[:database]
  )
end