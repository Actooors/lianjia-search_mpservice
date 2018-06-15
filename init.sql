-- auto-generated definition
create table if not exists city_lianjia_data_lianjia
(
  id             int          not null AUTO_INCREMENT primary key,
  created_at     datetime     not null,
  updated_at     datetime     not null,
  deleted_at     datetime,

  city           varchar(256) not null,
  area           varchar(256) not null,
  sec_area       varchar(256) not null,
  title          varchar(256) not null,
  community_name varchar(256),
  house_type     varchar(256),
  square         double,
  toward         varchar(256),
  decoration     varchar(256),
  lift           varchar(256),
  flood          varchar(256),
  total_price    int          not null,
  unit_price     int          not null,
  image          varchar(256) not null,
  link           varchar(256) not null,
  star           int          not null default 0,
  visit          int          not null default 0,
  publish_time   datetime     not null default now()
)
  engine = innodb, charset = utf8;

insert into city_lianjia_data_lianjia (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at, link, image, star, visit, publish_time)
VALUES
  ('上海', '宝山', '大场镇', '环镇北路400弄 2室1厅 250万', '环镇北路400弄', '2室1厅', 59.08, '南', '简装', '无电梯', '高楼层(共6层)1995年建板楼', 270, 47932,
    now(), now(), null, 'https://sh.lianjia.com/ershoufang/107100294743.html',
    'https://image1.ljcdn.com/310000-inspection/18c91e48-c9bc-43c8-812b-1c656645aab5.jpg.296x216.jpg.232x174.jpg', 20,
    20, '2018-05-16 21:15:16');

insert into city_lianjia_data_lianjia (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at, link, image, star, visit, publish_time)
VALUES
  ('上海', '宝山', '大场镇', '乾溪新村 2室1厅 260万', '乾溪新村', '2室1厅', 55.53, '南', '简装', '无电梯', '高楼层(共5层)1993年建板楼', 260, 46822,
    now(), now(), null, 'https://sh.lianjia.com/ershoufang/107100301883.html',
    'https://image1.ljcdn.com/310000-inspection/8a332f77-e949-4a68-9331-b084011f5aa2.jpg.296x216.jpg.232x174.jpg', 22,
    26, '2018-01-15 21:15:16');