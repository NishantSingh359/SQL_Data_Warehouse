-- ===========================================
-- CREATE TABLES
-- ===========================================

-----------------------------------------
-- CREATE CRM TABLES
-----------------------------------------

-- CREATE bronze.crm_cust_info

if object_id ('bronze.crm_cust_info' , 'U') in not null
   drop table bronze.crm_cust_info;

create table bronze.crm_cust_info (
  cst_id int,
  cst_key nvarchar(50),
  cst_firstname nvarchar(50),
  cst_lastname nvarchar(50),
  cst_material_status nvarchar(50),
  cst_gndr nvarchar(50),
  cst_create_date date
);

-- CREATE bronze.crm_prd_info 

if object_id ('bronze.crm_prd_info' , 'U') in not null
   drop table bronze.crm_prd_info;

create table bronze.crm_prd_info (
  prd_id int,
  prd_key nvarchar (50),
  prd_nm nvarchar (50),
  prd_cost int,
  prd_line nvarchar (50),
  prd_start_dt datetime,
  prd_end_dt datetime
 );

-- CREATE bronze.crm_sales_details 

if object_id ('bronze.crm_sales_details' , 'U') in not null
   drop table bronze.crm_sales_details;

create table bronze.crm_sales_details (
  sls_ord_num nvarchar(50),
  sls_ord_key nvarchar(50),
  sls_cust_id int,
  sls_order_dt int,
  sls_ship_dt int,
  sls_due_dt int,
  sls_sales int,
  sls_quantity int,
  sls_price int
 );


-----------------------------------------
-- CREATE ERP TABLES
-----------------------------------------

-- CREATE bronze.erp_loc_a101 

if object_id ('bronze.erp_loc_a101' , 'U') in not null
   drop table bronze.erp_loc_a101;

create table bronze.erp_loc_a101 (
  cid nvarchar (50),
  cntry nvarchar (50)
);


-- CREATE bronze.erp_cust_az12 

if object_id ('bronze.erp_cust_az12' , 'U') in not null
   drop table bronze.erp_cust_az12;
create table bronze.erp_cust_az12 (
  cid nvarchar(50),
  bdate date,
  gen nvarchar(50)
);


-- CREATE bronze.erp_px_cat_g1v2

if object_id ('bronze.erp_px_cat_g1v2' , 'U') in not null
   drop table bronze.erp_px_cat_g1v2;

create table bronze.erp_px_cat_g1v2 (
  id nvarchar(50),
  cat nvarchar(50),
  subcat nvarchar(50),
  maintenance nvarchar(50)
);
