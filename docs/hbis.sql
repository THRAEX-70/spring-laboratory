DROP DATABASE IF EXISTS hbis;

CREATE DATABASE IF NOT EXISTS hbis DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS hbis.tbl_user;
CREATE TABLE hbis.tbl_user (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    nickname VARCHAR(100),
    username VARCHAR(100),
    password VARCHAR(200),
    enabled BOOLEAN,
    create_by VARCHAR(36),
    create_time DATETIME,
    update_by VARCHAR(36),
    update_time DATETIME
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_menu;
CREATE TABLE hbis.tbl_menu (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    code VARCHAR(100),
    url VARCHAR(200),
    pid VARCHAR(36),
    level_code VARCHAR(200),
    remark VARCHAR(200),
    disabled BOOLEAN,
    create_by VARCHAR(36),
    create_time DATETIME,
    update_by VARCHAR(36),
    update_time DATETIME
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_role;
CREATE TABLE hbis.tbl_role (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    code VARCHAR(100),
    remark VARCHAR(200),
    create_by VARCHAR(36),
    create_time DATETIME,
    update_by VARCHAR(36),
    update_time DATETIME
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_user_role;
CREATE TABLE hbis.tbl_user_role (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    uid VARCHAR(36),
    rid VARCHAR(36)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_role_menu;
CREATE TABLE hbis.tbl_role_menu (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    rid VARCHAR(36),
    mid VARCHAR(36)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_file_descriptor;
CREATE TABLE hbis.tbl_file_descriptor (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    name VARCHAR(200),
    path VARCHAR(500),
    content_type VARCHAR(50),
    size BIGINT,
    create_by VARCHAR(36),
    create_time DATETIME,
    update_by VARCHAR(36),
    update_time DATETIME
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_advert;
CREATE TABLE hbis.tbl_advert (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    fid VARCHAR(36)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_case;
CREATE TABLE hbis.tbl_case (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    fid VARCHAR(36),
    name VARCHAR(200),
    cover VARCHAR(500),
    create_by VARCHAR(36),
    create_time DATETIME,
    update_by VARCHAR(36),
    update_time DATETIME
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_company;
CREATE TABLE hbis.tbl_company (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    name VARCHAR(200),
    address VARCHAR(200),
    zip_code VARCHAR(100),
    phone VARCHAR(100),
    fax VARCHAR(100),
    contact VARCHAR(100),
    mobile VARCHAR(100),
    cover_id VARCHAR(36),
    cover_path VARCHAR(500),
    map_id VARCHAR(36),
    map_path VARCHAR(500),
    introduction MEDIUMTEXT,
    situation MEDIUMTEXT,
    organization MEDIUMTEXT,
    scope MEDIUMTEXT,
    personnel MEDIUMTEXT,
    history MEDIUMTEXT,
    create_by VARCHAR(36),
    create_time DATETIME,
    update_by VARCHAR(36),
    update_time DATETIME
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS hbis.tbl_news;
CREATE TABLE hbis.tbl_news (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(100),
    hits BIGINT,
    content MEDIUMTEXT,
    type INT COMMENT '0: company; 10: industry',
    create_by VARCHAR(36),
    create_time DATETIME,
    update_by VARCHAR(36),
    update_time DATETIME
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('009587e63dd80b020897b5858e6ddb87', '应用案例', 'MENU_HBIS_NAV_CASE', '/hbis/case', '2d1bc9d4319aac6e41ab7d5c2b111f66', '0000000300000003', '', 0, 'admin', '2020-09-06 05:20:35', 'admin', '2020-09-06 11:40:56');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('017819471ea0d272eec5bd7db7a4531f', '信息维护', 'MENU_HBIS_MAINT', '', null, '00000002', '', 0, 'admin', '2020-09-02 12:03:29', 'admin', '2020-09-07 02:07:40');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('047545cde436989021039eabe6225ddc', '发展历程', 'MENU_HBIS_NAV_COMPANY_DC', '/hbis/company/dc', '874f35a9bf3cb5486d8a23ef46998e71', '000000030000000100000005', '', 0, 'admin', '2020-09-06 11:48:44', 'admin', '2020-09-06 12:02:52');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('0aaab910cde409ca44073704672ab041', '角色管理', 'MENU_ROLE', '/role', 'a10a60d2a8e7fd120970efa28bc6883b', '0000000100000003', null, 0, 'admin', '2020-08-28 13:09:11', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('0f8161b2f2ae53275b381cff7fcf08e3', '信息化技术', 'MENU_HBIS_NAV_PROFESSIONAL_IT', '/hbis/professional/it', '7acb2f6df001bd7fd88bc1cf6c480812', '000000030000000200000001', '', 0, 'admin', '2020-09-06 12:03:09', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('1058aa7afaf6c91274a00d7139b18e9a', '经营范围', 'MENU_HBIS_NAV_COMPANY_SCOPE', '/hbis/company/scope', '874f35a9bf3cb5486d8a23ef46998e71', '000000030000000100000003', '', 0, 'admin', '2020-09-06 11:48:14', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('167f0c6e6522c2617442b7024a2c6471', '新闻资讯', 'MENU_HBIS_MAINT_NEWS', '/maint/news', '017819471ea0d272eec5bd7db7a4531f', '0000000200000002', '', 0, 'admin', '2020-09-07 02:10:24', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('1b54507585eeca8f746aa1ec26c29d5c', '菜单管理', 'MENU_MENU', '/menu', 'a10a60d2a8e7fd120970efa28bc6883b', '0000000100000001', null, 0, 'admin', '2020-08-28 13:08:09', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('2d1bc9d4319aac6e41ab7d5c2b111f66', 'HBIS导航', 'MENU_HBIS_NAV', '', null, '00000003', '', 0, 'admin', '2020-09-02 12:13:02', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('349800c2584a6b4ec55a24e0e4a8e42d', '组织机构', 'MENU_HBIS_NAV_COMPANY_ORG', '/hbis/company/org', '874f35a9bf3cb5486d8a23ef46998e71', '000000030000000100000002', '', 0, 'admin', '2020-09-06 11:42:00', 'admin', '2020-09-06 12:02:28');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('36e55b665d353563696591742b05b4a4', '企业愿景', 'MENU_HBIS_NAV_CULTURE_EV', '/hbis/culture/ev', '3f0711388b67c2266749a16a84260ddc', '000000030000000500000001', '', 0, 'admin', '2020-09-06 12:07:49', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('3c3eddce6ffad4ad07c56c181eefd3de', '公司概况', 'MENU_HBIS_NAV_COMPANY_CP', '/hbis/company/cp', '874f35a9bf3cb5486d8a23ef46998e71', '000000030000000100000001', '', 0, 'admin', '2020-09-06 10:58:26', 'admin', '2020-09-06 12:01:42');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('3cdce7fa7f85ea17667f4497729945b8', '通信技术', 'MENU_HBIS_NAV_PROFESSIONAL_CT', '/hbis/professional/ct', '7acb2f6df001bd7fd88bc1cf6c480812', '000000030000000200000003', '', 0, 'admin', '2020-09-06 12:03:51', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('3f0711388b67c2266749a16a84260ddc', '企业文化', 'MENU_HBIS_NAV_CULTURE', '/hbis/culture', '2d1bc9d4319aac6e41ab7d5c2b111f66', '0000000300000005', '', 0, 'admin', '2020-09-06 05:22:07', 'admin', '2020-09-06 11:41:04');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('3f905891fd7d5ac9b2705677e7d7f354', '通讯系统', 'MENU_HBIS_NAV_CASE_CS', '/hbis/case/cs', '009587e63dd80b020897b5858e6ddb87', '000000030000000300000003', '', 0, 'admin', '2020-09-06 12:06:18', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('49ba28e1e278b7fd71c52c3431121833', '团队建设', 'MENU_HBIS_NAV_CULTURE_TB', '/hbis/culture/tb', '3f0711388b67c2266749a16a84260ddc', '000000030000000500000003', '', 0, 'admin', '2020-09-06 12:08:19', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('4faa559d5bcb5cb6f6783104daddba55', '公司信息', 'MENU_HBIS_MAINT_COMPANY', '/maint/company', '017819471ea0d272eec5bd7db7a4531f', '0000000200000001', '', 0, 'admin', '2020-09-07 02:09:33', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('75e5222c65af4f88ef01408d22101063', '广告图片', 'MENU_HBIS_MAINT_ADVERT', '/maint/advert', '017819471ea0d272eec5bd7db7a4531f', '0000000200000003', '', 0, 'admin', '2020-09-02 12:55:06', 'admin', '2020-09-07 02:08:24');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('7acb2f6df001bd7fd88bc1cf6c480812', '专业领域', 'MENU_HBIS_NAV_PROFESSIONAL', '/hbis/professional', '2d1bc9d4319aac6e41ab7d5c2b111f66', '0000000300000002', '', 0, 'admin', '2020-09-06 05:19:57', 'admin', '2020-09-06 11:40:41');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('874f35a9bf3cb5486d8a23ef46998e71', '公司简介', 'MENU_HBIS_NAV_COMPANY', '/hbis/company', '2d1bc9d4319aac6e41ab7d5c2b111f66', '0000000300000001', '', 0, 'admin', '2020-09-06 05:19:16', 'admin', '2020-09-06 11:40:29');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('891f70b1b6e550f5852bdd553673bede', '自动化技术', 'MENU_HBIS_NAV_PROFESSIONAL_AT', '/hbis/professional/at', '7acb2f6df001bd7fd88bc1cf6c480812', '000000030000000200000002', '', 0, 'admin', '2020-09-06 12:03:35', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('8ea43cfc20e3de5b4bcd157efb0a5f55', '授权管理', 'MENU_GRANT', '/grant', 'a10a60d2a8e7fd120970efa28bc6883b', '0000000100000004', null, 0, 'admin', '2020-08-28 13:09:48', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('a10a60d2a8e7fd120970efa28bc6883b', '系统设置', 'MENU_SETTING', '', null, '00000001', null, 0, 'admin', '2020-08-28 13:07:51', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('a2ebef150e63efc88b6bf2f45af0d4aa', '用户管理', 'MENU_USER', '/user', 'a10a60d2a8e7fd120970efa28bc6883b', '0000000100000002', null, 0, 'admin', '2020-08-28 13:08:54', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('ad570d4fbb7167edcce96e0267895e09', '门禁监控', 'MENU_HBIS_NAV_PROFESSIONAL_EG', '/hbis/professional/eg', '7acb2f6df001bd7fd88bc1cf6c480812', '000000030000000200000005', '', 0, 'admin', '2020-09-06 12:04:59', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('af08f15c8c2661c060d3c99b1d35ce3c', '人员概况', 'MENU_HBIS_NAV_COMPANY_PERSONNEL', '/hbis/company/personnel', '874f35a9bf3cb5486d8a23ef46998e71', '000000030000000100000004', '', 0, 'admin', '2020-09-06 11:48:31', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('b1d6a7088cceceaf13f15d3811053bb3', '监控系统', 'MENU_HBIS_NAV_CASE_MS', '/hbis/case/ms', '009587e63dd80b020897b5858e6ddb87', '000000030000000300000004', '', 0, 'admin', '2020-09-06 12:06:33', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('bb69a8b624687ef8a5f2023a4c44c8b8', '新闻动态', 'MENU_HBIS_NAV_NEWS', '/hbis/news', '2d1bc9d4319aac6e41ab7d5c2b111f66', '0000000300000004', '', 0, 'admin', '2020-09-06 05:20:55', 'admin', '2020-09-06 11:41:00');
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('c0dcd94ec77141dd93bffd300c6322b5', '自动化系统', 'MENU_HBIS_NAV_CASE_AS', '/hbis/case/as', '009587e63dd80b020897b5858e6ddb87', '000000030000000300000002', '', 0, 'admin', '2020-09-06 12:06:04', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('c659988649e793bcada6faec85a2e104', '公司动态', 'MENU_HBIS_NAV_NEWS_CD', '/hbis/news/cd', 'bb69a8b624687ef8a5f2023a4c44c8b8', '000000030000000400000001', '', 0, 'admin', '2020-09-06 12:07:19', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('c6bd1de90f894d7a5ee5863eb6530504', '门禁系统', 'MENU_HBIS_NAV_CASE_EG', '/hbis/case/eg', '009587e63dd80b020897b5858e6ddb87', '000000030000000300000005', '', 0, 'admin', '2020-09-06 12:06:51', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('c6be3ce395b7a816c1483894bfdf665f', '信息化系统', 'MENU_HBIS_NAV_CASE_IS', '/hbis/case/is', '009587e63dd80b020897b5858e6ddb87', '000000030000000300000001', '', 0, 'admin', '2020-09-06 12:05:49', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('e4f1eb9273d9ff660360b0d120f8d8a5', '文体活动', 'MENU_HBIS_NAV_CULTURE_RA', '/hbis/culture/ra', '3f0711388b67c2266749a16a84260ddc', '000000030000000500000002', '', 0, 'admin', '2020-09-06 12:08:06', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('ef3d02cbc3e0ab7d632f8464c3b35ae1', '行业动态', 'MENU_HBIS_NAV_NEWS_ID', '/hbis/news/id', 'bb69a8b624687ef8a5f2023a4c44c8b8', '000000030000000400000002', '', 0, 'admin', '2020-09-06 12:07:32', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('ef85be80fbac2760079d89f9988c0713', '网络技术', 'MENU_HBIS_NAV_PROFESSIONAL_NT', '/hbis/professional/nt', '7acb2f6df001bd7fd88bc1cf6c480812', '000000030000000200000004', '', 0, 'admin', '2020-09-06 12:04:13', null, null);
INSERT INTO hbis.tbl_menu (id, name, code, url, pid, level_code, remark, disabled, create_by, create_time, update_by, update_time) VALUES ('f84d81c46eb8f0cd210c2fc21f13e810', '应用案例', 'MENU_HBIS_MAINT_CASE', '/maint/case', '017819471ea0d272eec5bd7db7a4531f', '0000000200000004', '', 0, 'admin', '2020-09-04 08:10:27', 'admin', '2020-09-07 02:08:31');

INSERT INTO hbis.tbl_user (id, nickname, username, password, enabled, create_by, create_time, update_by, update_time) VALUES ('49803ceafc6124c50d908c08dba2d799', 'Editor', 'editor', '$2a$10$oO6CEpQ7ewnTbyh6y3FE5uyO.WgfE/BBftZplci4MWg/FQI3d9ScW', 1, 'admin', '2020-08-31 01:36:08', null, null);
INSERT INTO hbis.tbl_user (id, nickname, username, password, enabled, create_by, create_time, update_by, update_time) VALUES ('c071c91457d1e40dc1ad0c3f664d57c7', 'Administrator', 'administrator', '$2a$10$3GFBMXKzDLKqUpWJVh4qL.ATHJI0uNLmzo.Wi2VktHOSrJfkn3B3G', 1, 'admin', '2020-09-02 12:02:10', null, null);

INSERT INTO hbis.tbl_role (id, name, code, remark, create_by, create_time, update_by, update_time) VALUES ('58ddea5881aa61470c3eef3b67922541', '维护人员', 'MAINTAINERS', '', 'admin', '2020-08-28 15:06:04', null, null);
INSERT INTO hbis.tbl_role (id, name, code, remark, create_by, create_time, update_by, update_time) VALUES ('f99c160529467ebcbbdf9853ed000515', '管理员', 'ADMIN', '', 'admin', '2020-08-28 14:43:33', null, null);

INSERT INTO hbis.tbl_user_role (id, uid, rid) VALUES ('1162ee612b4392ee14ded9bf055a06bc', '49803ceafc6124c50d908c08dba2d799', '58ddea5881aa61470c3eef3b67922541');
INSERT INTO hbis.tbl_user_role (id, uid, rid) VALUES ('eac1bd1bd0bcc463acdc03110d6afb12', 'c071c91457d1e40dc1ad0c3f664d57c7', 'f99c160529467ebcbbdf9853ed000515');

INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('207c9337100436e817c870b6c7387171', 'f99c160529467ebcbbdf9853ed000515', '1b54507585eeca8f746aa1ec26c29d5c');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('4e515dd380fd51ced89f50725afa73b7', 'f99c160529467ebcbbdf9853ed000515', '75e5222c65af4f88ef01408d22101063');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('54c4dcaa31d54b82bf3d7a4e24e26404', 'f99c160529467ebcbbdf9853ed000515', 'a2ebef150e63efc88b6bf2f45af0d4aa');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('7cd3609fee37373e2f3a8d67170fa0f5', '58ddea5881aa61470c3eef3b67922541', 'f84d81c46eb8f0cd210c2fc21f13e810');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('99fba7bf5aeb7d599be4319f3f8e4977', 'f99c160529467ebcbbdf9853ed000515', '0aaab910cde409ca44073704672ab041');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('c0274bf0979573f45ab670c218801657', 'f99c160529467ebcbbdf9853ed000515', 'f84d81c46eb8f0cd210c2fc21f13e810');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('d6b84e830702f0912d6fed4c4f3d165b', 'f99c160529467ebcbbdf9853ed000515', '017819471ea0d272eec5bd7db7a4531f');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('db56401320c3c2baa0d927b14a94e154', 'f99c160529467ebcbbdf9853ed000515', 'a10a60d2a8e7fd120970efa28bc6883b');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('e2ff98722788e2659f5f8b55699cf223', '58ddea5881aa61470c3eef3b67922541', '017819471ea0d272eec5bd7db7a4531f');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('e6853219a1c197fd66ce72d38de70cc4', 'f99c160529467ebcbbdf9853ed000515', '8ea43cfc20e3de5b4bcd157efb0a5f55');
INSERT INTO hbis.tbl_role_menu (id, rid, mid) VALUES ('fd29397a17ec89308ea19910e761e71f', '58ddea5881aa61470c3eef3b67922541', '75e5222c65af4f88ef01408d22101063');

INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('11cca140e3ad4e77aa7506dd1ea122d1', 'hggkzx.jpg', '2020-09-06/11cca140e3ad4e77aa7506dd1ea122d1.jpg', 'image/jpeg', 117687, 'admin', '2020-09-06 05:00:52', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('15c19437a1bf4312b8ce5c6e88e3d21a', 'b1.jpg', '2020-09-06/15c19437a1bf4312b8ce5c6e88e3d21a.jpg', 'image/jpeg', 193297, 'admin', '2020-09-06 04:59:15', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('23e1edaf123546d58676378a8c7a9f46', 'lzlt.jpg', '2020-09-06/23e1edaf123546d58676378a8c7a9f46.jpg', 'image/jpeg', 135200, 'admin', '2020-09-06 05:03:35', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('4ccbd9a52ead47e8b58a74f18de3090e', 'mjxt.jpg', '2020-09-06/4ccbd9a52ead47e8b58a74f18de3090e.jpg', 'image/jpeg', 72001, 'admin', '2020-09-06 05:02:09', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('52304753f737408da3de5a3412788328', 'map.jpg', '2020-09-07/52304753f737408da3de5a3412788328.jpg', 'image/jpeg', 93756, 'admin', '2020-09-07 10:35:40', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('98c4d5e8be9d45cd906f6a988faad58b', 'cover.png', '2020-09-07/98c4d5e8be9d45cd906f6a988faad58b.png', 'image/png', 38707, 'admin', '2020-09-07 10:34:55', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('9b5bfe7656fa481bb808a9fe89b07127', 'ycjl.jpg', '2020-09-06/9b5bfe7656fa481bb808a9fe89b07127.jpg', 'image/jpeg', 98794, 'admin', '2020-09-06 05:04:18', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('9f49f0fee07749d4a61cd1c489d3ee4a', 'ykt.jpg', '2020-09-06/9f49f0fee07749d4a61cd1c489d3ee4a.jpg', 'image/jpeg', 95958, 'admin', '2020-09-06 05:03:00', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('c0640d6c11ce4d86b3ccc829afdd8976', 'b4.jpg', '2020-09-06/c0640d6c11ce4d86b3ccc829afdd8976.jpg', 'image/jpeg', 369943, 'admin', '2020-09-06 04:59:15', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('d1c840575a7040a4be12583648c80f60', 'b2.jpg', '2020-09-06/d1c840575a7040a4be12583648c80f60.jpg', 'image/jpeg', 194018, 'admin', '2020-09-06 04:59:15', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('f18f5aee34074d1aa9bd06a6d3ab81f7', 'rlz.jpg', '2020-09-06/f18f5aee34074d1aa9bd06a6d3ab81f7.jpg', 'image/jpeg', 169288, 'admin', '2020-09-06 05:03:46', null, null);
INSERT INTO hbis.tbl_file_descriptor (id, name, path, content_type, size, create_by, create_time, update_by, update_time) VALUES ('f7150a77dd3d4c26a58e327a8d2829bb', 'b3.jpg', '2020-09-06/f7150a77dd3d4c26a58e327a8d2829bb.jpg', 'image/jpeg', 264759, 'admin', '2020-09-06 04:59:15', null, null);

INSERT INTO hbis.tbl_advert (id, fid) VALUES ('33ff214a4619d76a0e2f59fd58e1d512', '15c19437a1bf4312b8ce5c6e88e3d21a');
INSERT INTO hbis.tbl_advert (id, fid) VALUES ('42588f350b3c3ae198ef9d475d0908a0', 'c0640d6c11ce4d86b3ccc829afdd8976');
INSERT INTO hbis.tbl_advert (id, fid) VALUES ('7f1c5cbc9a6352d1769c9b8e211a789d', 'f7150a77dd3d4c26a58e327a8d2829bb');
INSERT INTO hbis.tbl_advert (id, fid) VALUES ('bf03d6fcaed09c58b78920db0fcf863b', 'd1c840575a7040a4be12583648c80f60');

INSERT INTO hbis.tbl_case (id, fid, name, cover, create_by, create_time, update_by, update_time) VALUES ('5a0d4561770f7da7d32f7041b1c70a83', 'f18f5aee34074d1aa9bd06a6d3ab81f7', '热连轧生产线', '2020-09-06/f18f5aee34074d1aa9bd06a6d3ab81f7.jpg', 'admin', '2020-09-06 05:03:46', null, null);
INSERT INTO hbis.tbl_case (id, fid, name, cover, create_by, create_time, update_by, update_time) VALUES ('6aff55a130081837a858cf4330b9e508', '9f49f0fee07749d4a61cd1c489d3ee4a', '车辆物流“一卡通”系统', '2020-09-06/9f49f0fee07749d4a61cd1c489d3ee4a.jpg', 'admin', '2020-09-06 05:03:00', null, null);
INSERT INTO hbis.tbl_case (id, fid, name, cover, create_by, create_time, update_by, update_time) VALUES ('93f1813337355d37b162333d40758f56', '23e1edaf123546d58676378a8c7a9f46', '冷轧连退线', '2020-09-06/23e1edaf123546d58676378a8c7a9f46.jpg', 'admin', '2020-09-06 05:03:35', null, null);
INSERT INTO hbis.tbl_case (id, fid, name, cover, create_by, create_time, update_by, update_time) VALUES ('9d74067410bbc97ad9b08c1ef316de8a', '4ccbd9a52ead47e8b58a74f18de3090e', '门禁系统', '2020-09-06/4ccbd9a52ead47e8b58a74f18de3090e.jpg', 'admin', '2020-09-06 05:02:09', null, null);
INSERT INTO hbis.tbl_case (id, fid, name, cover, create_by, create_time, update_by, update_time) VALUES ('daab32281b45f330936741abdf93d3ad', '11cca140e3ad4e77aa7506dd1ea122d1', '邯钢管控中心', '2020-09-06/11cca140e3ad4e77aa7506dd1ea122d1.jpg', 'admin', '2020-09-06 05:00:52', null, null);
INSERT INTO hbis.tbl_case (id, fid, name, cover, create_by, create_time, update_by, update_time) VALUES ('fef442a8df6ceecc33949cbefd6d32d3', '9b5bfe7656fa481bb808a9fe89b07127', '远程计量系统', '2020-09-06/9b5bfe7656fa481bb808a9fe89b07127.jpg', 'admin', '2020-09-06 05:04:18', null, null);

INSERT INTO hbis.tbl_company (id, name, address, zip_code, phone, fax, contact, mobile, cover_id, cover_path, map_id, map_path, introduction, situation, organization, scope, personnel, history, create_by, create_time, update_by, update_time) VALUES ('fb8d9c48dbd3bcd8a0f16ef488905c7e', '邯郸市邯钢集团信达科技有限公司', '河北省邯郸市复兴路232号', '056015', '（0310） 2096666   6074881', '（0310）6075586', '冯先生', '15032000988', '98c4d5e8be9d45cd906f6a988faad58b', '2020-09-07/98c4d5e8be9d45cd906f6a988faad58b.png', '52304753f737408da3de5a3412788328', '2020-09-07/52304753f737408da3de5a3412788328.jpg', '邯郸市邯钢集团信达科技有限公司（简称信达科技），系河钢集团邯钢公司全资子公司，注册资本500万元，1997年成立。历经邯钢20年基础自动化的高速发展和信息化改造的曲折进程，通过引进消化吸收、联合、自主等途径，实施了涵盖钢铁冶金行业全工艺流程的自动化、信息化系统。凭借服务邯钢的经验和技术积累，信达科技面向社会持续发展，已经成长为能够提供自动化、信息化、通讯、监控等系统解决方案的高新技术企业。目前，正致力于大数据、云计算、智能制造、智慧物流、电子商务等研发应用。', '邯郸市邯钢集团信达科技有限公司（简称信达科技），系河钢集团邯钢公司全资子公司，高新技术企业，中国仪器仪表行业协会现场设备集成技术（FDT）专业委员会会员，注册资本500万元，1997年成立。历经邯钢20年基础自动化的高速发展和信息化改造的曲折进程，通过引进消化吸收、联合、自主等途径，实施了涵盖钢铁冶金行业全工艺流程的自动化、信息化系统。凭借服务邯钢的经验和技术积累，信达科技经过多年来的深耕细作，能够为客户提供大数据、智能制造、智慧物流、自动控制及通讯安防等系统解决方案和技术服务。产品覆盖钢铁冶金全产业链，在汽车制造、医药、发电、贸易、物流、公共服务等行业均有良好业绩。

   信达科技拥有信息化、自动化、大数据、安全等领域专项十余项、软件著作权数十项。与多家国际、国内一流企业建立协作、合作关系，与国内知名高校、研究机构组件研发团队，正致力于物联网、人工智能、工控网络安全等领域的研发推广。

', '<div id="pagecontent"><p class="MsoListParagraph" style="line-height: 32px; margin: 0cm 0cm 0pt; mso-char-indent-count: 0"><span style="line-height: 32px; font-family: 仿宋; color: #505050; font-size: 14pt; mso-bidi-font-family: Arial; mso-font-kerning: 0pt"><font face="宋体">&nbsp;&nbsp;&nbsp; 信达科技公司设执行董事、监事，由邯钢集团委派；设经理一名，由邯钢集团推荐，执行董事聘任；设副经理、技术总监；设置综合部、财务部、采购部、项目部、技术部等部门。</font><span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoListParagraph" style="line-height: 150%; margin: 0cm 0cm 0pt; mso-char-indent-count: 0">&nbsp;</p>
<p style="text-justify: inter-ideograph; text-align: center"><img src="/assets/images/hbis/company/org.jpg" width="550" height="400"></p>
', '<img src="/assets/images/hbis/company/scope.jpg" width="100%" height="100%">', '人才优势

信达科技公司现有员工590名。其中，本科以上技术人员195人，硕士研究生20人；工程师96人、高级工程师50人；技师、高级技师30人。

公司专业技术人员涵盖自动化、信息化、通讯等领域。其中，自控、网络、系统集成及信息系统项目管理等工程师100多名，计算机、测控、通讯等专业研究生20多名，拥有大数据、智能制造等领域专家技术团队。
', '1997年4月，成立兴企高新技术开发公司。2007年12月，更名为兴企科技开发有限公司，并变更营业范围，增加了注册资本。2016年5月26日，变更企业名称为邯郸市邯钢集团信达科技有限公司。同时，营业范围增加了软件开发、数据处理和存储服务等。2018年9月27日，营业范围增加了电气及仪器仪表维修，货物和技术的进出口。

伴随着邯钢的持续发展和科学技术的日新月异，公司逐步成长壮大。经过多年的知识积累和沉淀，拥有30余项专利和软件权，目前已经取得的资质和证书有：承装（修、试）电力设施许可证、信息系统集成及服务资质证书、质量管理体系认证证书、高新技术企业资质认证。现在公司有着多元化的资质类别，齐全的人员证书配备、具有电气自动化系统安装集成、信息化系统解决方案设计及实施、通讯监控系统集成等能力，并取得了较好业绩。

目前，信达科技致力于智能制造、智慧物流、云计算、大数据应用等领域的应用推广及持续研发，在创新、创造的实践中续写新的华章。
', 'admin', '2020-09-07 08:14:38', 'admin', '2020-09-07 13:05:27');

INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('1670495d39f67008d0065eb8fe04abd6', '全员“岗位素质提升行动”在进行', '超级管理员', 0, '自2019年全员“岗位素质提升行动”开展以来，信达科技各部门科室针对不同职别、不同岗位,找准亟需解决的突出问题,以行为改善和绩效提升为目标，科学分析各岗位人员技能和知识结构，找到影响生产和质量的能力差距，精准定位培训内容，遵循“用什么、学什么”，“缺什么、补什么”的方案，积极开展培训活动。

   各技术室利用生产工作间隙以不同形式开展培训活动，授课教师准备充分、学员听课认真，培训中老师和学员根据授课内容结合现场实际应用进行探讨，大大提高了培训效果。', 0, 'admin', '2020-09-07 12:38:54', null, null);
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('19c65d6dcd7b8611d61a6666cf8da9fe', '北京国金衡信到信达公司开展质量体系认证审核', '超级管理员', 0, '近日，北京国金衡信审核专家一行三人来我公司进行为期两天的质量管理体系审核。审核组老师按照计划对2019年5月至今的项目、合同、文件进行了审核。根据质量管理体系的要求，从公司管理、采购与验收、方针与指标、设备管理、风险防范等方面进行审查，并按照ISO标准对公司所有部门及每一个环节进行了非常细致和全面的审核，信达各部门也派出代表积极配合，认真对待。

    审核末次会议上，审核组长对此次审核进行了总结，对公司的经营理念和创效能力给予充分肯定，同时也指出需要改进的地方，开具不合格项两项。会上，信达公司管理者代表表示，要认真落实整改存在的问题，强化和完善体系运行，为公司长远发展保驾护航。此次再认证也标志着我公司从之前的规范化、标准化的企业管理轨道中更进一步。公司将在今后工作中严格执行管理体系及规章制度，持续提升信达品牌，更好的为客户服务。', 0, 'admin', '2020-09-07 12:36:09', null, null);
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('65eea9aec77912224bab58381828dee3', '移动化和云计算：阿里巴巴的中兴与二次创业', '超级管理员', 0, '阿里巴巴公布了上市以来最好的财报。2017财年第一季度（即2016自然年第二季度）的财报，收入321.54亿元人民币，同比增长59%；盈利121.87亿元（非美国通用会计准则），同比增长28%。

    在中国互联网公司里，阿里巴巴是最能赚钱的巨头之一了比起腾讯刚刚公布的财报来，阿里不遑多让，虽然收入比腾讯的356.91亿略低，但亮点却比腾讯要多。从IPO之后最好的财报出发，阿里巴巴把“移动弱”的帽子彻底甩进太平洋，并在股价上得到证实，股价大涨至97美元每股，接近100美元。

    不过超先声认为，核心电商移动化能够支撑阿里两年的高增长，而两年后，阿里股价主要依赖的则是阿里云的增长速度。一个是阿里巴巴的移动增长，移动用户从4.1亿人增长到4.27亿，移动端GMV占总GMV的75%，同比增长69%。从IPO以来投资者一直担心的一个问题已经一去不返了，阿里巴巴已经是一个真正的移动公司。自从2014年春节马云称微信通过红包“偷袭珍珠港”开始，阿里巴巴进入了移动化的焦虑期，走过相当多弯路。以公司全部的资源注入来往并未能奏效，但手淘的意外崛起，逐渐让阿里找回自信。 根据QuestMobile的报告，2016年3月手淘的MAU3.5亿，同比增长47.3%，是中国APP MAU前五名中增长率最高的。', 10, 'admin', '2020-09-07 12:30:52', 'admin', '2020-09-07 12:34:11');
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('7d3816fd8c7b30c96b49e6ccc8f64901', '58同城大跌逾15%创历史跌幅', '超级管理员', 0, '新浪美股讯 北京时间18日晚 58同城(46.03, -7.67, -14.28%)今日开盘大跌，截至北京时间22：20分，跌6.68美元至47.02美元，跌幅达12.44%。盘中一度下挫跌幅最高逾15%。

    58同城今日早间公布了截止2016年6月30日第二季度未经审计的财务报告。财报显示，58同城第二季度实现营收2.978亿美元，同比增长86.7%。这也是58同城连续5个季度亏损后再次实现盈利。第二季度运营利润为3550万美元，非美国会计师准则的运营利润为5530万美元。净利润为1390万美元，非美国会计师准则的净利润为2170万美元。包含58到家亏损后仍然实现盈利。

    基于目前公司业务的发展，58同城对2016年Q3业绩做出如下预期：预计总营收区间为20.3亿-20.8亿人民币。以2016年7月的平均汇率6.68人民币=1美元计算，则总营收区间为3.04亿-3.11亿美元。以人民币为基准，同比增长区间为52%-56%。', 10, 'admin', '2020-09-07 12:30:36', 'admin', '2020-09-07 12:33:26');
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('83763bae3728001a784c0938cfe19c2a', '河钢邯钢信达科技成为河北省数字经济联合会会员单位', '超级管理员', 0, '近日，河钢邯钢信达科技顺利通过河北省数字经济联合会审核，正式成为其会员单位，这标志着河钢邯钢信达科技的知名度、品牌影响力得到进一步认可。

    河北省数字经济联合会作为政府主管部门与数字经济领域行业组织、高等院校、科研单位、企业之间的枢纽和桥梁，为政府决策和引导行业发展服务，提升省数字经济国际影响力，促进省数字经济快速发展提供了有力支撑。

   目前，河钢邯钢信达科技已为客户提供大数据、智能制造、智慧物流、自动控制及通讯安防等系统解决方案和技术服务。产品覆盖钢铁冶金全产业链，在汽车制造、医药、发电、贸易、物流、公共服务等行业均有良好业绩。', 0, 'admin', '2020-09-07 12:36:55', null, null);
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('c04efeeb4656fd10385dcda5827b5387', '信达科技有限公司亮相中国国际数字经济博览会', '超级管理员', 0, ' 10月11日，由工业和信息化部、河北省人民政府共同主办的2019中国国际数字经济博览会在石家庄（正定）国际会展中心隆重开幕，邯郸市邯钢信达科技有限公司（以下简称信达科技）亮相博览会，其数字化技术成果产品受到广泛关注。

    信达科技作为邯郸市14家高新技术企业之一受邀参加本届数字经济博览会。信达科技经过多年的知识技术积累与沉淀，拥有30余项专利和软件权，致力于智能化、大数据、物联网等先进技术研发应用，能够为客户提供大数据、智能制造、智慧物流、自动控制及通讯安防等系统解决方案和技术服务。

    在一号展馆邯郸展位，信达科技的“助力智能制造、服务智慧生活”宣传片连续播放，展示了智能天车无人化系统、环保“管控治”一体化平台、大数据智能分析等具有自主知识产权的成功案例，吸引了不少人员驻足观看并表示希望能够进一步了解产品，表达了合作意向。邯郸市市长张维亮带领邯郸代表团巡视了邯郸展馆，在经过信达科技展台并听完业务人员讲解后对信达科技在数字智能技术取得的成果表示了充分肯定，并提出加快技术创新，助力高质量发展的新要求。

    据悉，本届数博会为期三天，展会以“数字经济引领高质量发展”为主题，突出“国际化、专业化、高端化、产品化”， 努力打造引领数字经济发展的国际性盛会，全国数字经济最新成果展示的国家级平台和全球数字经济交流合作的世界级平台。', 0, 'admin', '2020-09-07 12:38:24', null, null);
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('dfcfba4357775beed5564b8109dc107d', '信达科技维护人员远程解决客户难题', '超级管理员', 0, '2020年，一场新冠肺炎疫情影响了全国人工作、生活的脚步。在此期间，信达科技相关人员却步履不停，主动投身“抗病毒、保生产”重要工作。

    某钢厂员工打来求助电话“我们机房服务器不断显示红灯报警，但是外地员工无法回岗工作，不熟悉系统的其他岗位员工也没法立即承担运维工作，请求支援！”信达科技维护人员收到问题后，迅速根据用户提供的信息，进入后台找到问题根源并提出解决方案。疫情期间为保证客户系统安全，必须时刻对系统进行监控，机房设施也需要定期远程巡查以确保基础设施健康运行。 “这是我们应该做的。”朴实的话语，伴随着忙碌的键盘敲击声，这是信达每一位维护员工的缩影。

   作为信达员工，我们会坚守岗位，做好各项服务工作，共克时艰，为抗击疫情做出自己最大的努力！', 0, 'admin', '2020-09-07 12:37:14', null, null);
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('f05563648aa634c580a23ae91d8cc94b', '信达科技有限公司加入FDT协会', '超级管理员', 0, '近日，信达科技有限公司（以下简称“信达科技”）顺利通过中国仪器仪表行业协会现场设备集成技术（FDT）专业委员会审核，并正式成为其会员，这标志着信达科技得到了更为广泛的认可，在自动化、信息化、智能化技术领域有了更高端的“朋友圈”。

    10月31日，在浙江乌镇举办的FDT Group一届六次常务委员会上，信达科技经过前期技术交流以及会上展示其在工业自动化、信息化大数据、通讯安防及智能制造方面的专业技术和成果案例，顺利通过了委员会的审核，并正式成为其会员。

    据悉，FDT协会是由活跃在工业自动化制造领域的领先全球成员公司组成，包括西门子、施耐德、横河、重庆川仪等近百家国内外知名自动化公司，致力于FDT技术的开发和推广，为现场设备与工程、自动化和资产管理系统的集成提供真正开放的解决方案，使用户通过该平台实现对任一厂商的自动化智能设备进行管理，实现用户利益的最大化。

    加入该协会组织后，信达科技可以与全球知名公司进行同一平台交流合作，成为自动化领域技术标准开发的参与者、制定者及使用者，这将对信达科技的技术提升和业务拓展都有着重要的意义。', 0, 'admin', '2020-09-07 12:38:01', null, null);
INSERT INTO hbis.tbl_news (id, title, author, hits, content, type, create_by, create_time, update_by, update_time) VALUES ('fe742b9a24a4fe0c823bd3cf1ff628f9', '2016中国两化融合大会在北京国家会议中', '超级管理员', 0, '2016年8月26日-27日中国两化融合大会在北京国家会议中心召开。此次大会以“制造业与互联网融合，创新·发展·转型”为主题，突出以制造业与互联网融合作为“两化”融化主攻方向。', 10, 'admin', '2020-09-07 12:31:00', 'admin', '2020-09-07 12:34:16');
