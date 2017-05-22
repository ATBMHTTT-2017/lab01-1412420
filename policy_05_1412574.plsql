--------------------------------------------------------
--   
--------------------------------------------------------
--------------------------------------------------------
-- Yeu cau 05
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ADMIN_BT1"."UPDATEPHONGBAN" (
	   pb_tenphong IN PhongBan.TenPhong%TYPE,
     pb_truongphong IN PhongBan.TruongPhong%TYPE,
     pb_ngaynhanchuc IN PhongBan.NgayNhanChuc%TYPE,
     pb_sonhanvien IN PhongBan.SoNhanVien%TYPE,
     pb_ChiNhanh IN PhongBan.ChiNhanh%TYPE,
     cn_truongchinhanh in ChiNhanh.TruongChiNhanh%TYPE
     )
IS
    v_phongban_count INTEGER;
BEGIN
      select count(*)
      into v_phongban_count
      from PhongBan p 
      Where p.TruongPhong = pb_truongphong or exists (
          select *
          from ChiNhanh cn, NhanVien nv
          where cn.TruongChiNhanh = cn_truongchinhanh and cn.TruongChiNhanh = nv.MaNV and nv.MaPhong = p.MaPhong
        );
      if v_phongban_count = 1 then
        update PhongBan 
        set TenPhong = pb_tenphong, NgayNhanChuc = pb_ngaynhanchuc, SoNhanVien = pb_sonhanvien, ChiNhanh = pb_ChiNhanh  
        where TruongPhong = pb_truongphong or exists(
          select *
          from ChiNhanh cn, NhanVien nv
          where cn.TruongChiNhanh = cn_truongchinhanh and cn.TruongChiNhanh = nv.MaNV and nv.MaPhong = PhongBan.MaPhong
          );
        COMMIT;
      end if;
EXCEPTION
  WHEN OTHERS THEN ROLLBACK;
END updatePhongBan;
/
----test YC5
alter session set "_ORACLE_SCRIPT"=true;

GRANT EXECUTE ON updatePhongBan TO NV937;
GRANT EXECUTE ON updatePhongBan TO NV802;
