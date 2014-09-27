BONSAI
======


#Location: http://bonsaibadge.herokuapp.com/

###Users
* Index:  GET /api/users/
* Create: POST /api/users/
* Update: PATCH /api/users/{id}
* Delete: DELETE /api/users/{id}
* Get nearby users: GET /api/nearby/users/{latitude}/{longitude}

###Employers
* Index:  GET /api/employers/
* Create: POST /api/employers/
* Update: PATCH /api/employers/{id}
* Delete: DELETE /api/employers/{id}
* Get nearby employers: GET /api/nearby/employers/{latitude}/{longitude}

###Roles
* Index:  GET /api/employers/{emp-id}/roles
* Create: POST /api/employers/{emp-id}/roles
* Update: PATCH /api/employers/{emp-id}/roles/{role-id}
* Delete: DELETE /api/employers/{emp-id}/roles/{role-id}

###Skeleton database entry forms
* http://bonsaibadge.herokuapp.com/newuser
* http://bonsaibadge.herokuapp.com/newemployer
* http://bonsaibadge.herokuapp.com/newemployer/{emp-id}/newrole