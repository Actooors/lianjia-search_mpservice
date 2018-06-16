-- auto-generated definition
create table if not exists data_list
(
  id             int          not null AUTO_INCREMENT primary key,
  created_at     datetime     not null,
  updated_at     datetime     not null,
  deleted_at     datetime,

  page_id        varchar(16)  not null unique,
  city           varchar(64)  not null,
  area           varchar(64)  not null,
  sec_area       varchar(64)  not null,
  title          varchar(256) not null,
  community_name varchar(256),
  house_type     varchar(64),
  square         double,
  toward         varchar(64),
  decoration     varchar(64),
  lift           varchar(64),
  flood          varchar(256),
  total_price    int          not null,
  unit_price     int          not null,
  image          varchar(256) not null,
  star           int          not null default 0,
  visit          int          not null default 0,
  publish_time   datetime     not null default now()
)
  engine = innodb, charset = utf8;

insert into data_list (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at, page_id, image, star, visit, publish_time)
VALUES
  ('上海', '宝山', '大场镇', '环镇北路400弄 2室1厅 250万', '环镇北路400弄', '2室1厅', 59.08, '南', '简装', '无电梯', '高楼层(共6层)1995年建板楼', 270, 47932,
    now(), now(), null, '107100294743',
    'https://image1.ljcdn.com/310000-inspection/18c91e48-c9bc-43c8-812b-1c656645aab5.jpg.296x216.jpg.232x174.jpg', 20,
    20, '2018-05-16 21:15:16');

insert into data_list (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at, page_id, image, star, visit, publish_time)
VALUES
  ('上海', '宝山', '大场镇', '乾溪新村 2室1厅 260万', '乾溪新村', '2室1厅', 55.53, '南', '简装', '无电梯', '高楼层(共5层)1993年建板楼', 260, 46822,
    now(), now(), null, '107100301883',
    'https://image1.ljcdn.com/310000-inspection/8a332f77-e949-4a68-9331-b084011f5aa2.jpg.296x216.jpg.232x174.jpg', 22,
    26, '2018-01-15 21:15:16');


create table if not exists data_detail (
  id                  int          not null AUTO_INCREMENT primary key,
  created_at          datetime     not null,
  updated_at          datetime     not null,
  deleted_at          datetime,

  page_id             varchar(16)  not null unique,
  city                varchar(64)  not null,
  area                varchar(64)  not null,
  sec_area            varchar(64)  not null,
  title               varchar(256) not null,
  #小区名
  community_name      varchar(64),
  house_type          varchar(64),
  square              double,
  toward              varchar(64),
  decoration          varchar(64),
  lift                varchar(64),
  flood               varchar(64),
  total_price         int          not null,
  unit_price          int          not null,
  image               varchar(256) not null,
  star                int          not null default 0,
  visit               int          not null default 0,
  publish_time        datetime     not null default now(),

  #楼型
  building_type       varchar(64),
  #权属
  ownership           varchar(64),
  #首付预算,string
  down_payment_budget varchar(64),
  #用途
  house_use           varchar(64),
  #年代
  completion_date     year,
  #楼层
  floor               varchar(64),
  visit7             int,
  visit30            int,
  #轮播图链接，以|分隔
  carousel_images     varchar(6000)
)
  engine = innodb, charset = utf8;

insert into data_detail (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at, page_id, image, star, visit, publish_time,
                         #楼型
                         building_type,
                         #权属
                         ownership,
                         #首付预算,string
                         down_payment_budget,
                         #用途
                         house_use,
                         #年代
                         completion_date,
                         #楼层
                         floor,
                         visit7,
                         visit30,
                         #轮播图链接，以|分隔
                         carousel_images)
VALUES
  ('上海', '宝山', '大场镇', '环镇北路400弄 2室1厅 250万', '环镇北路400弄', '2室1厅', 59.08, '南', '简装', '无电梯', '高楼层(共6层)1995年建板楼', 270, 47932,
                                                                                                             now(),
                                                                                                             now(),
                                                                                                             null,
                                                                                                             '107100294743',
                                                                                                             'https://image1.ljcdn.com/310000-inspection/18c91e48-c9bc-43c8-812b-1c656645aab5.jpg.296x216.jpg.232x174.jpg',
                                                                                                             20,
                                                                                                             20,
                                                                                                             '2018-05-16 21:15:16',
   '板楼', '商品房', '参考首付95万', '普通住宅', 1994, '中楼层/6', 1, 3,
   'https://image1.ljcdn.com/shfdfs-image/20171108/b3aae556-fc31-4cf0-8ad3-44f54b259389.jpg!m_fill,w_500,h_280,lg_north_west,lx_0,ly_0,l_rorate_logo,f_jpg,ls_50|https://image1.ljcdn.com/shfdfs-image/20171123/b91fc978-4ce9-4558-a68c-b12669519b9a.jpg!m_fill,w_500,h_280,l_frame,f_jpg|https://image1.ljcdn.com/shfdfs-image/20171108/0bc8cdf8-1e17-40a8-bb50-fc404adc59ae.jpg!m_fill,w_500,h_280,lg_north_west,lx_0,ly_0,l_rorate_logo,f_jpg,ls_50');

insert into data_detail (city, area, sec_area, title, community_name, house_type, square, toward, decoration, lift, flood, total_price, unit_price, created_at, updated_at, deleted_at, page_id, image, star, visit, publish_time,
                         #楼型
                         building_type,
                         #权属
                         ownership,
                         #首付预算,string
                         down_payment_budget,
                         #用途
                         house_use,
                         #年代
                         completion_date,
                         #楼层
                         floor,
                         visit7,
                         visit30,
                         #轮播图链接，以|分隔
                         carousel_images)
VALUES
  ('上海', '宝山', '大场镇', '乾溪新村 2室1厅 260万', '乾溪新村', '2室1厅', 55.53, '南', '简装', '无电梯', '高楼层(共5层)1993年建板楼', 260, 46822,
                                                                                                     now(), now(), null,
                                                                                                     '107100301883',
                                                                                                     'https://image1.ljcdn.com/310000-inspection/8a332f77-e949-4a68-9331-b084011f5aa2.jpg.296x216.jpg.232x174.jpg',
                                                                                                     22,
                                                                                                     26,
                                                                                                     '2018-01-15 21:15:16',
   '板楼', '商品房', '参考首付95万', '普通住宅', 1994, '中楼层/6', 1, 3,
   'https://image1.ljcdn.com/shfdfs-image/20171108/b3aae556-fc31-4cf0-8ad3-44f54b259389.jpg!m_fill,w_500,h_280,lg_north_west,lx_0,ly_0,l_rorate_logo,f_jpg,ls_50|https://image1.ljcdn.com/shfdfs-image/20171123/b91fc978-4ce9-4558-a68c-b12669519b9a.jpg!m_fill,w_500,h_280,l_frame,f_jpg|https://image1.ljcdn.com/shfdfs-image/20171108/0bc8cdf8-1e17-40a8-bb50-fc404adc59ae.jpg!m_fill,w_500,h_280,lg_north_west,lx_0,ly_0,l_rorate_logo,f_jpg,ls_50');
