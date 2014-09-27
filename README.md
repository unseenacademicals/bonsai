BONSAI
======


#Location: http://bonsaibadge.herokuapp.com/

###Users
* Index:  GET /api/users/
* Create: POST /api/users/
* Update: PATCH /api/users/{id}
* Delete: DELETE /api/users/{id}

###Employers
* Index:  GET /api/employers/
* Create: POST /api/employers/
* Update: PATCH /api/employers/{id}
* Delete: DELETE /api/employers/{id}

###Roles
* Index:  GET /api/employers/{emp-id}/roles
* Create: POST /api/employers/{emp-id}/roles
* Update: PATCH /api/employers/{emp-id}/roles/{role-id}
* Delete: DELETE /api/employers/{emp-id}/roles/{role-id}