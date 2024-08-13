package s3_access

default allow = false

Allow {
    input.request.user.role == "st-access-role"
    or 
    input.request.user.role == "st-admin-role"
}
