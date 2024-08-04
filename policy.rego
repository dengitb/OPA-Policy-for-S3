package s3_access

default allow = false

allow {
    input.request.user.role == "st-access-role"
}
