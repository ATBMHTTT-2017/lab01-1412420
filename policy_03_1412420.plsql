-- ======================== YEU CAU 3 ================================

-- ========= role truong phong (Yeu Cau 3)
select * from PhongBan;
create user NV818 identified by 123;
--drop role Truong_Phong_r;
create role Truong_Phong_r;
/
-- grant session
grant create session to Truong_Phong_r;
/
-- grant isnert, update DuAn to TruongPhong
grant insert, update on DuAn to Truong_Phong_r;
/
-- grant role to cac truong phong
-- procedure create user truong phong and grant role 
CREATE OR REPLACE PROCEDURE GrantRoleToTruongPhong
IS
   cursor c1 is
     select TruongPhong
      from PhongBan;
BEGIN
   FOR phong in c1
   LOOP
    EXECUTE IMMEDIATE 'CREATE USER '||phong.TruongPhong||' identified by 123';
    EXECUTE IMMEDIATE 'GRANT Truong_Phong_r TO '||phong.TruongPhong;
   END LOOP;
END;
/
-- exec
begin 
    GrantRoleToTruongPhong;
end;
/
-- ========= end role truong phong

-- GIẢI THÍCH
/*
### Yêu cầu 3 - DAC
###### Trưởng phòng được phép cập nhật và thêm thông tin vào dự án
- Tạo role Truong_Phong_r 
- Grant insert, update trên table DuAn cho role này
- grant role này cho tất cả các user là trưởng phòng (tạo hàm GrantRoleToTruongPhong để grant cho linh hoạt)
*/

-- END GIẢI THÍCH

-- ======================== END YEU CAU 3 ================================