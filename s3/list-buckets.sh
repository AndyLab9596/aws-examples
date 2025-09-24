#!bin/bash

aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[] | .Name'

# Biểu thức trong jq
# .Buckets

# Truy cập vào mảng Buckets trong JSON.

# Tức là lấy ra toàn bộ danh sách bucket.

# | sort_by(.CreationDate)

# Sắp xếp danh sách bucket theo CreationDate (ngày tạo), từ cũ → mới.

# | reverse

# Đảo ngược mảng đã sắp xếp.

# Kết quả: từ mới nhất → cũ nhất.

# | .[]

# Duyệt qua từng phần tử trong mảng (từng bucket object).

# | .Name

# Lấy ra trường Name (tức là tên bucket).

exit 0