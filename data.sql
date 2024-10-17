create database qllop;

use qllop;

CREATE TABLE SinhVien(
	MaSV char(10) PRIMARY KEY,
    Hoten varchar(30),
    foreign key (MaLop)
    references LopHoc(MaLop)
);

create table LopHoc(
	MaLop char(10),
    TenLop varchar(20)
);

insert into SinhVien(MaSV, Hoten)
values ('22010328', 'Tran Thi Men');

insert into SinhVien(MaSV, Hoten)
values ('22020319', 'Nguyen Thu Thuy');

insert into SinhVien (MaSV, Hoten)
values ('2200330', 'Vu Ha Yen Vy');

select * FROM SinhVien;

-- xóa tất cả dữ liệu của bảng (không xóa hẳn bảng)
truncate table SinhVien; 

alter table SinhVien
add DiaChi varchar(255);

select * from SinhVien;

-- thêm cột cho bảng
alter table SinhVien
add QueQuan varchar(50);

-- Xóa 1 cột
-- alter table SinhVien
-- drop column QueQuan;

-- alter table SinhVien
-- drop column DiaChi;

alter table SinhVien
drop column QueQuan;

-- thay đổi kiểu dữ liệu của thuộc tính
alter table SinhVien
modify Hoten varchar(50);

-- các ràng buộc trong sql
-- not null: Đảm bảo rằng một cột không thể có giá trị Null
-- unique: đảm bảo rằng tất cả các giá trị trong một cột là khác nhau
-- primary key: sự kết hợp của notnull và unique, 
--    xác định duy nhất từng hàng trong bảng (khóa chính)
-- foreign key: khóa ngoại
-- check: đảm bảo rằng các giá trị trong một cột thỏa mãn một điều kiện cụ thể
-- default: đặt giá trị mặc định cho một cột nếu không có giá trị nào được mặc định

alter table SinhVien
modify MaSV char not null;

alter table LopHoc
add primary key (MaLop);

alter table SinhVien
add MaLop char(20);

alter table SinhVien
add foreign key (MaLop) references LopHoc (MaLop);

insert into LopHoc (MaLop, Tenlop)
values ('22010330','12A1');

select * from LopHoc;





