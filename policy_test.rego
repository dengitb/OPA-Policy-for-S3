package s3_access

test_allow_access {
    allow with input as {"request": {"user": {"role": "st-access-role"}}}
}

test_deny_access_different_role {
    not allow with input as {"request": {"user": {"role": "other-role"}}}
}

test_deny_access_missing_role {
    not allow with input as {"request": {"user": {}}}
}
