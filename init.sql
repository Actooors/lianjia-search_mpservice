-- auto-generated definition
create table if not exists city_lianjia_data_lianjia
(
  id             int          not null AUTO_INCREMENT primary key,
  city           varchar(256) not null,
  area           varchar(256) not null,
  sec_area       varchar(256) not null,
  title          varchar(256) not null,
  community_name varchar(256) not null,
  house_type     varchar(256) not null,
  square         double       not null,
  toward         varchar(256) not null,
  decoration     varchar(256) not null,
  lift           varchar(256) not null,
  flood          varchar(256) not null,
  total_price    int          not null,
  unit_price     int          not null,
  created_at     datetime     not null,
  updated_at     datetime     not null,
  deleted_at     datetime
)
  engine = innodb, charset = utf8;

insert into city_lianjia_data_lianjia (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at)
VALUES
  ('上海', '宝山', '大场镇', '环镇北路400弄 2室1厅 250万', '环镇北路400弄', '2室1厅', 59.08, '南', '简装', '无电梯', '高楼层(共6层)1995年建板楼', 270, 47932,
   now(), now(), null);

insert into city_lianjia_data_lianjia (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at)
VALUES
  ('上海', '宝山', '大场镇', '乾溪新村 2室1厅 260万', '乾溪新村', '2室1厅', 55.53, '南', '简装', '无电梯', '高楼层(共5层)1993年建板楼', 260, 46822,
   now(), now(), null);