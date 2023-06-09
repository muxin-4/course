drop table if exists `test`;
create table `test`
(
    `id`   char(8) not null default '' comment 'id',
    `name` varchar(50) comment '名称',
    primary key (`id`)
) engine = innodb
  default charset = utf8mb4 comment ='测试';

insert into `test` (`id`, `name`)
values (1, '测试');


drop table if exists `chapter`;
create table `chapter`
(
    `id`        char(8) not null comment 'id',
    `course_id` char(8) comment '课程id',
    `name`      varchar(50) comment '名称',
    primary key (`id`)
) engine = innodb
  default charset = utf8mb4 comment ='大章';

insert into `chapter` (id, course_id, name)
values ('00000000', '00000000', '测试大章一');
insert into `chapter` (id, course_id, name)
values ('00000001', '00000000', '测试大章二');
insert into `chapter` (id, course_id, name)
values ('00000002', '00000000', '测试大章三');
insert into `chapter` (id, course_id, name)
values ('00000003', '00000000', '测试大章四');
insert into `chapter` (id, course_id, name)
values ('00000004', '00000000', '测试大章五');
insert into `chapter` (id, course_id, name)
values ('00000005', '00000000', '测试大章六');
insert into `chapter` (id, course_id, name)
values ('00000006', '00000000', '测试大章七');
insert into `chapter` (id, course_id, name)
values ('00000007', '00000000', '测试大章八');
insert into `chapter` (id, course_id, name)
values ('00000008', '00000000', '测试大章九');
insert into `chapter` (id, course_id, name)
values ('00000009', '00000000', '测试大章十');
insert into `chapter` (id, course_id, name)
values ('00000010', '00000000', '测试大章十一');
insert into `chapter` (id, course_id, name)
values ('00000011', '00000000', '测试大章十二');
insert into `chapter` (id, course_id, name)
values ('00000012', '00000000', '测试大章十三');
insert into `chapter` (id, course_id, name)
values ('00000013', '00000000', '测试大章十四');


# 小节
drop table if exists `section`;
create table `section`
(
    `id`         char(8)     not null default '' comment 'id',
    `title`      varchar(50) not null comment '标题',
    `course_id`  char(8) comment '课程|course.id',
    `chapter_id` char(8) comment '大章|chapter.id',
    `video`      varchar(200) comment '视频',
    `time`       int comment '时长|单位秒',
    `charge`     char(1) comment '收费|c 收费; f 免费',
    `sort`       int comment '顺序',
    `created_at` datetime(3) comment '创建时间',
    `updated_at` datetime(3) comment '修改时间',
    primary key (`id`)

) engine = innodb
  default charset = utf8mb4 comment ='小节';

insert into `section` (id, title, course_id, chapter_id, video, time, charge, sort, created_at, updated_at)
values ('00000001', '测试小节1', '00000001', '00000000', '', 500, 'f', 1, now(), now());

# 课程
drop table if exists course;
create table course
(
    id         char(8)     not null default '' comment 'id',
    name       varchar(50) not null comment '名称',
    summary    varchar(2000) comment '概述',
    time       int                  default 0 comment '时长|单位秒',
    price      decimal(8, 2)        default 0.00 comment '价格（元）',
    image      varchar(100) comment '封面',
    level      char(1) comment '级别|枚举[courselevelenum]:one("1", "初级"),two("2", "中级"),three("3", "高级")',
    charge     char(1) comment '收费|枚举[coursechargeenum]:charge("c", "收费"),free("f", "免费")',
    status     char(1) comment '状态|枚举[coursestatusenum]:publish("p", "发布"),draft("d","草稿")',
    enroll     integer              default 0 comment '报名数',
    sort       int comment '顺序',
    created_at datetime(3) comment '创建时间',
    updated_at datetime(3) comment '修改时间',
    primary key (id)
) engine = innodb
  default charset = utf8mb4 comment ='课程表';

insert into course(id, name, summary, time, price, image, level, charge, status, enroll, sort, created_at, updated_at)
values ('00000001', '测试课程01', '这是一门测试课程', 7200, 19.9, '', 0, 'c', 'd', 100, 0, now(), now());

alter table `course`
    add column (`teacher_id` char(8) comment '讲师|teacher.id');

# 分类
drop table if exists `category`;
create table `category`
(
    `id`     char(8)     not null default '' comment 'id',
    `parent` char(8)     not null default '' comment '父id',
    `name`   varchar(50) not null comment '名称',
    `sort`   int comment '顺序',
    primary key (`id`)
) engine = innodb
  default charset = utf8mb4 comment ='分类';

insert into `category` (id, parent, name, sort)
values ('00000100', '00000000', '前端技术', 100);
insert into `category` (id, parent, name, sort)
values ('00000101', '00000100', 'html/css', 101);
insert into `category` (id, parent, name, sort)
values ('00000102', '00000100', 'javascript', 102);
insert into `category` (id, parent, name, sort)
values ('00000103', '00000100', 'vue.js', 103);
insert into `category` (id, parent, name, sort)
values ('00000104', '00000100', 'react.js', 104);
insert into `category` (id, parent, name, sort)
values ('00000105', '00000100', 'angular', 105);
insert into `category` (id, parent, name, sort)
values ('00000106', '00000100', 'node.js', 106);
insert into `category` (id, parent, name, sort)
values ('00000107', '00000100', 'jquery', 107);
insert into `category` (id, parent, name, sort)
values ('00000108', '00000100', '小程序', 108);
insert into `category` (id, parent, name, sort)
values ('00000200', '00000000', '后端技术', 200);
insert into `category` (id, parent, name, sort)
values ('00000201', '00000200', 'java', 201);
insert into `category` (id, parent, name, sort)
values ('00000202', '00000200', 'springboot', 202);
insert into `category` (id, parent, name, sort)
values ('00000203', '00000200', 'spring cloud', 203);
insert into `category` (id, parent, name, sort)
values ('00000204', '00000200', 'ssm', 204);
insert into `category` (id, parent, name, sort)
values ('00000205', '00000200', 'python', 205);
insert into `category` (id, parent, name, sort)
values ('00000206', '00000200', '爬虫', 206);
insert into `category` (id, parent, name, sort)
values ('00000300', '00000000', '移动开发', 300);
insert into `category` (id, parent, name, sort)
values ('00000301', '00000300', 'android', 301);
insert into `category` (id, parent, name, sort)
values ('00000302', '00000300', 'ios', 302);
insert into `category` (id, parent, name, sort)
values ('00000303', '00000300', 'react native', 303);
insert into `category` (id, parent, name, sort)
values ('00000304', '00000300', 'ionic', 304);
insert into `category` (id, parent, name, sort)
values ('00000400', '00000000', '前沿技术', 400);
insert into `category` (id, parent, name, sort)
values ('00000401', '00000400', '微服务', 401);
insert into `category` (id, parent, name, sort)
values ('00000402', '00000400', '区块链', 402);
insert into `category` (id, parent, name, sort)
values ('00000403', '00000400', '机器学习', 403);
insert into `category` (id, parent, name, sort)
values ('00000404', '00000400', '深度学习', 404);
insert into `category` (id, parent, name, sort)
values ('00000405', '00000400', '数据分析&挖掘', 405);
insert into `category` (id, parent, name, sort)
values ('00000500', '00000000', '云计算&大数据', 500);
insert into `category` (id, parent, name, sort)
values ('00000501', '00000500', '大数据', 501);
insert into `category` (id, parent, name, sort)
values ('00000502', '00000500', 'hadoop', 502);


# 课程分类
drop table if exists `course_category`;
create table `course_category`
(
    `id`          char(8) not null default '' comment 'id',
    `course_id`   char(8) comment '课程|course.id',
    `category_id` char(8) comment '分类|course.id',
    primary key (`id`)
) engine = innodb
  default charset = utf8mb4 comment ='课程分类';

# 课程内容
drop table if exists `course_content`;
create table `course_content`
(
    `id`      char(8)    not null default '' comment '课程id',
    `content` mediumtext not null comment '课程内容',
    primary key (`id`)
) engine = innodb
  default charset = utf8mb4 comment ='课程内容';

# 课程内容文件
drop table if exists `course_content_file`;
create table `course_content_file`
(
    `id`        char(8) not null default '' comment 'id',
    `course_id` char(8) not null default '' comment '课程id',
    `url`       varchar(100) comment '地址',
    `name`      varchar(100) comment '文件名',
    `size`      int comment '大小|字节b',
    primary key (`id`)
) engine = innodb
  default charset = utf8mb4 comment ='课程内容文件';


# 讲师
drop table if exists `teacher`;
create table `teacher`
(
    `id`       char(8)     not null default '' comment 'id',
    `name`     varchar(50) not null comment '姓名',
    `nickname` varchar(50) comment '昵称',
    `image`    varchar(100) comment '头像',
    `position` varchar(50) comment '职位',
    `motto`    varchar(50) comment '座右铭',
    `intro`    varchar(500) comment '简介',
    primary key (`id`)
) engine = innodb
  default charset = utf8mb4 comment ='课程内容';

# 文件
drop table if exists `file`;
create table `file`
(
    `id`        char(8)      not null default '' comment 'id',
    `path`      varchar(100) not null comment '相对路径',
    `name`      varchar(100) comment '文件名',
    `suffix`    varchar(10) comment '后缀',
    `size`      int comment '大小|字节B',
    `use`       char(1) comment '用途|枚举[FileUseEnum]: COURSE("C", "讲师"), TEACHER("T", "课程")',
    `create_at` datetime(3) comment '创建时间',
    `update_at` datetime(3) comment '修改时间',
    primary key (`id`),
    unique key `path_unique` (`path`)
)
    engine = innodb
    default charset = utf8mb4 comment ='课程内容';

alter table `file`
    add column (`share_index` int comment '已上传分片');
alter table `file`
    add column (`share_size` int comment '分片大小|B');
alter table `file`
    add column (`share_total` int comment '分片总数');
alter table `file`
    add column (`key` varchar(32) comment '文件标识');
alter table `file`
    add unique key key_unique (`key`);











