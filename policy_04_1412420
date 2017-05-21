-- ======================== YEU CAU 4 ================================

create or replace view DuAn_View_1a
as
  select d.MaDA, d.TenDA, d.KinhPhi, p.TenPhong PHONGCHUTRI, cn.TenCN CHINHANHCHUTRI, nv.HoTen TRUONGDUAN, ct.SoTien TONGCHI
    from DuAn d
      join PhongBan p on p.MaPhong = d.PhongChuTri
        join ChiNhanh cn on cn.MaCN = p.ChiNhanh
          join NhanVien nv on nv.MaNv = d.TruongDA
            join ChiTieu ct on ct.DuAn = d.MaDA;

/
-- role giam doc
--drop role Giam_Doc;
create role Giam_Doc;
/
-- grant create session to gian doc
grant create session to Giam_Doc;
/
-- grant select on DuAn_View_1a to giam doc
grant select on DuAn_View_1a to Giam_Doc;
/
-- GIẢI THÍCH
/*
### Yêu cầu 4 - DAC
###### Giám đốc được phép xem thông tin dự án
- Tạo view ``DuAn_View_1a`` với những yêu cầu select đặt ra
- Tạo role ``Giam_Doc`` và grant select trên view ``DuAn_View_1a`` cho role ``Giam_Doc``
- Grant role `GiamDoc` cho user GiamDoc
*/

-- END GIẢI THÍCH

-- ======================== END YEU CAU 4 ================================