# backup-mysql
script backup-mysql-mariadb
Giải thích các bước:
- Bước 1: Đặt các biến cho tên người dùng, mật khẩu, tên cơ sở dữ liệu, thư mục lưu trữ sao lưu và số ngày tối đa để giữ các tệp sao lưu.
- Bước 2: Kiểm tra xem thư mục sao lưu có tồn tại không. Nếu không, thư mục sẽ được tạo ra.
- Bước 3: Tạo tên tệp sao lưu bằng cách sử dụng ngày và giờ hiện tại.
- Bước 4: Tạo sao lưu bằng mysqldump và lưu vào tệp sao lưu vừa tạo.
- Bước 5: Sử dụng lệnh `find` để tìm và xoá các tệp sao lưu cũ hơn số ngày tối đa đã đặt.

Lưu ý: Bạn cần thay đổi các giá trị biến như `USER`, `PASSWORD`, `DATABASE`, `BACKUP_DIR` và `MAX_AGE` để phù hợp với cấu hình của hệ thống của bạn.
Bạn cũng cần phải đảm bảo rằng script có quyền truy cập và ghi vào thư mục sao lưu.
