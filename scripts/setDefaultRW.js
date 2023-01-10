//questo comando setta la priority per read and write concern
db.adminCommand({
"setDefaultRWConcern" : 1,
"defaultWriteConcern" : {"w" : 2},
"defaultReadConcern" : { "level" : "majority" }
})
    