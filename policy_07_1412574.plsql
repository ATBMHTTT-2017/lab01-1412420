
--------------------------------------------------------
--------------------------------------------------------
--  Yeu cau 07
--------------------------------------------------------
CREATE USER  NV818
IDENTIFIED BY 123;
GRANT SELECT, INSERT, UPDATE ON ChiTieu TO NV818;

  CREATE OR REPLACE EDITIONABLE FUNCTION "ADMIN_BT1"."TRUONG_DA_RW_CHI_TIEU_DU_AN" 
(
  p_schema in varchar2,
  p_object in varchar2)
return varchar2 
is 
  return_val varchar2(400);
  cursor c1 is
  select d.MaDA
  from DuAn d
  where d.TruongDA = user;
begin
  return_val := '';
  for mada in c1
  loop
    return_val := return_val ||','|| mada.MaDA;
  end loop;
  return_val := substr(return_val, 2);
  return_val := 'DuAn IN ('||return_val||')';
  return return_val;
end;
begin 
  
  DBMS_RLS.add_policy (
    object_schema => 'admin_bt1',
    object_name => 'ChiTieu',
    policy_name => 'chi_tieu_1a',
    function_schema =>'admin_bt1',
    policy_function => 'truong_da_rw_chi_tieu_du_an',
    statement_types => 'select, insert, update',
    update_check => true
    );

end;
/
-- remove truong_da_rw_chi_tieu_du_an to ChiTieu

begin 
  
   DBMS_RLS.drop_policy (
    object_schema => 'admin_bt1',
    object_name => 'ChiTieu',
    policy_name => 'chi_tieu_1a');

end;
-- end Yeu cau 7

/
