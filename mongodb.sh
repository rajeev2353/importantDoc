#!/bin/sh

/etc/init.d/mongod restart
mongo < mongosize.js 
#db.adminCommand( { "setParameter": 1, "wiredTigerEngineRuntimeConfig":"cache_size=2G"})

