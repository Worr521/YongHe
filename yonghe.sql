-- --------------------------------------------
-- 创建yonghedb库、tb_door、tb_order表并插入记录
-- --------------------------------------------
-- 删除yonghedb库(如果存在)
-- drop database if exists yonghedb;
-- 重新创建yonghedb库
create database if not exists yonghedb charset utf8;
-- 选择yonghedb库
use yonghedb;
-- 删除门店表(需要先删除订单表)
drop table if exists tb_order;
drop table if exists tb_door;
-- 创建门店表
create table tb_door(
	id int primary key auto_increment,	-- 门店id
	name varchar(100),					-- 门店名称
	tel varchar(100),					-- 联系电话
	addr varchar(255)					-- 门店地址
);
-- 往门店表中插入记录
insert into tb_door values ('1', '永和大王(北三环西路店)', '010-62112313', '北三环西路甲18号院-1号大钟寺中坤广场d座');
insert into tb_door values ('2', '永和大王(知春路店)', '010-82356537', '知春路29号大运金都');
insert into tb_door values ('3', '永和大王(东直门)', '010-84477746', '东直门外大街48号东方银座b2-08');
insert into tb_door values ('4', '永和大王(北京站)', '010-65286602', '毛家湾胡同甲13号北京站候车大厅2层');
insert into tb_door values ('5', '永和大王(学院路店)', '010-62152539', '学院南路37号超市发四道口店四道口西北角');

-- 删除订单表(如果存在)
drop table if exists tb_order;
-- 创建订单表
create table tb_order(
	id int(11) primary key AUTO_INCREMENT,		-- 订单id
	door_id int(11),							-- 门店id
	order_no varchar(50),						-- 订单编号
	order_type varchar(50),						-- 订单类型(堂食/打包/外卖..)
	pnum tinyint(4),							-- 用餐人数
	cashier varchar(50),						-- 收银员
	order_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00', -- 下单时间
	pay_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',	 -- 支付时间
	pay_type varchar(50),						-- 支付类型(微信支付/支付宝支付)
	price double(8,2),							-- 支付金额
	foreign key(door_id) REFERENCES tb_door(id)	-- 关联外键
);
-- 往订单表中插入记录
INSERT INTO tb_order VALUES ('1', '1', 'P001', '堂食', '1', '张三', '2018-04-26 14:49:07', '2018-04-26 14:50:38', '微支付', '16.00');
INSERT INTO tb_order VALUES ('2', '1', 'P003', '外卖', '3', '张三', '2018-04-27 13:34:07', '2018-04-27 13:34:38', '微支付', '20.00');
INSERT INTO tb_order VALUES ('3', '1', 'P005', '打包', '1', '张三', '2019-01-22 11:59:22', '2019-01-22 11:59:22', '微支付', '28.00');
INSERT INTO tb_order VALUES ('4', '1', 'P007', '堂食', '1', '李四', '2019-01-23 13:01:26', '2019-01-23 13:01:26', '微支付', '49.00');


