-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS categories_id_seq;

-- Table Definition
CREATE TABLE "public"."categories" (
    "id" int8 NOT NULL DEFAULT nextval('categories_id_seq'::regclass),
    "name" varchar(255),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."categories" ("id", "name", "created_at", "updated_at") VALUES
(1, 'Pauline Kohler II', '2024-07-15 11:11:35', '2024-07-15 11:11:35');
INSERT INTO "public"."categories" ("id", "name", "created_at", "updated_at") VALUES
(2, 'Vena Gottlieb', '2024-07-15 11:11:35', '2024-07-15 11:11:35');
INSERT INTO "public"."categories" ("id", "name", "created_at", "updated_at") VALUES
(3, 'Linnea Renner', '2024-07-15 11:11:35', '2024-07-15 11:11:35');
INSERT INTO "public"."categories" ("id", "name", "created_at", "updated_at") VALUES
(4, 'Boris Stoltenberg Jr.', '2024-07-15 11:11:35', '2024-07-15 11:11:35'),
(5, 'Linnea Hettinger', '2024-07-15 11:11:36', '2024-07-15 11:11:36');

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS students_id_seq;

-- Table Definition
CREATE TABLE "public"."students" (
    "id" int8 NOT NULL DEFAULT nextval('students_id_seq'::regclass),
    "name" varchar(255),
    "marks" int4,
    "gender" varchar(255),
    "subject_id" int8,
    "user_id" int8,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(1, 'Coralie Price', 35, 'male', 2, 7, '2024-07-16 09:52:54', '2024-07-16 09:52:54');
INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(2, 'Miss Clarabelle Bahringer', 95, 'male', 5, 10, '2024-07-16 09:52:54', '2024-07-16 09:52:54');
INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(3, 'Darryl Thiel', 91, 'female', 3, 7, '2024-07-16 09:52:54', '2024-07-16 09:52:54');
INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(4, 'Rebeka Robel', 45, 'female', 1, 5, '2024-07-16 09:52:54', '2024-07-16 09:52:54'),
(5, 'Prof. Velva Schamberger', 68, 'female', 1, 9, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(6, 'Dr. Davon Rutherford', 75, 'male', 3, 1, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(7, 'Cornell Larson', 38, 'male', 2, 1, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(8, 'Mrs. Zita Skiles', 10, 'male', 4, 6, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(9, 'Lorenzo Champlin', 98, 'male', 10, 3, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(10, 'Hudson Ward Jr.', 18, 'female', 6, 9, '2024-07-16 09:52:56', '2024-07-16 09:52:56');

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS departments_id_seq;

-- Table Definition
CREATE TABLE "public"."departments" (
    "id" int8 NOT NULL DEFAULT nextval('departments_id_seq'::regclass),
    "name" varchar(255),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."departments" ("id", "name", "created_at", "updated_at") VALUES
(1, 'Miss Vincenza Murray Sr.', '2024-07-15 11:11:36', '2024-07-15 11:11:36');
INSERT INTO "public"."departments" ("id", "name", "created_at", "updated_at") VALUES
(2, 'Chase Mitchell', '2024-07-15 11:11:36', '2024-07-15 11:11:36');
INSERT INTO "public"."departments" ("id", "name", "created_at", "updated_at") VALUES
(3, 'Dewayne Hyatt', '2024-07-15 11:11:36', '2024-07-15 11:11:36');
INSERT INTO "public"."departments" ("id", "name", "created_at", "updated_at") VALUES
(4, 'Rachael Steuber', '2024-07-15 11:11:36', '2024-07-15 11:11:36'),
(5, 'Clemens Marks', '2024-07-15 11:11:37', '2024-07-15 11:11:37');

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS employees_id_seq;

-- Table Definition
CREATE TABLE "public"."employees" (
    "id" int8 NOT NULL DEFAULT nextval('employees_id_seq'::regclass),
    "name" varchar(255),
    "salary" int4,
    "gender" varchar(255),
    "department_id" int8,
    "user_id" int8,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."employees" ("id", "name", "salary", "gender", "department_id", "user_id", "created_at", "updated_at") VALUES
(1, 'Prof. Enola Leuschke V', 10000, 'female', 5, 4, '2024-07-15 11:11:42', '2024-07-15 11:11:42');
INSERT INTO "public"."employees" ("id", "name", "salary", "gender", "department_id", "user_id", "created_at", "updated_at") VALUES
(2, 'Jaylan Lehner IV', 3000, 'male', 4, 9, '2024-07-15 11:11:42', '2024-07-15 11:11:42');
INSERT INTO "public"."employees" ("id", "name", "salary", "gender", "department_id", "user_id", "created_at", "updated_at") VALUES
(3, 'Kristin Littel', 10000, 'male', 4, 4, '2024-07-15 11:11:43', '2024-07-15 11:11:43');
INSERT INTO "public"."employees" ("id", "name", "salary", "gender", "department_id", "user_id", "created_at", "updated_at") VALUES
(4, 'Ursula Hill', 3000, 'male', 1, 5, '2024-07-15 11:11:43', '2024-07-15 11:11:43'),
(5, 'Mr. Clifford Howe V', 1000, 'female', 2, 3, '2024-07-15 11:11:43', '2024-07-15 11:11:43'),
(6, 'Gail Lueilwitz', 9000, 'male', 3, 9, '2024-07-15 11:11:43', '2024-07-15 11:11:43'),
(7, 'Mr. Julien Mosciski Jr.', 9000, 'female', 5, 5, '2024-07-15 11:11:43', '2024-07-15 11:11:43'),
(8, 'Prof. Newton Pouros III', 9000, 'male', 1, 4, '2024-07-15 11:11:44', '2024-07-15 11:11:44'),
(9, 'Julie Harvey', 7000, 'male', 2, 10, '2024-07-15 11:11:44', '2024-07-15 11:11:44'),
(10, 'Alize Koss', 8000, 'male', 4, 4, '2024-07-15 11:11:44', '2024-07-15 11:11:44');

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS failed_jobs_id_seq;

-- Table Definition
CREATE TABLE "public"."failed_jobs" (
    "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
    "uuid" varchar(255) NOT NULL,
    "connection" text NOT NULL,
    "queue" text NOT NULL,
    "payload" text NOT NULL,
    "exception" text NOT NULL,
    "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id")
);


-- Indices
CREATE UNIQUE INDEX failed_jobs_uuid_unique ON public.failed_jobs USING btree (uuid);



-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS migrations_id_seq;

-- Table Definition
CREATE TABLE "public"."migrations" (
    "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
    "migration" varchar(255) NOT NULL,
    "batch" int4 NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES
(1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES
(3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_08_105744_create_employees_table', 1),
(6, '2024_06_08_105752_create_students_table', 1),
(7, '2024_06_08_105800_create_teachers_table', 1),
(8, '2024_06_08_105808_create_subjects_table', 1),
(9, '2024_06_08_105815_create_departments_table', 1),
(10, '2024_06_08_105830_create_products_table', 1),
(11, '2024_06_08_105841_create_orders_table', 1),
(12, '2024_06_08_113332_create_student_subjects_table', 1),
(13, '2024_06_25_132948_create_categories_table', 1);

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS orders_id_seq;

-- Table Definition
CREATE TABLE "public"."orders" (
    "id" int8 NOT NULL DEFAULT nextval('orders_id_seq'::regclass),
    "name" varchar(255),
    "order_no" int4,
    "price" int4,
    "qty" int4,
    "date" date,
    "user_id" int8,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."orders" ("id", "name", "order_no", "price", "qty", "date", "user_id", "created_at", "updated_at") VALUES
(1, 'Viva Nikolaus', 8987, 3000, 5, '2024-06-22', 6, '2024-07-15 11:12:41', '2024-07-15 11:12:41');
INSERT INTO "public"."orders" ("id", "name", "order_no", "price", "qty", "date", "user_id", "created_at", "updated_at") VALUES
(2, 'Emerald Reilly', 7717, 7000, 8, '2024-06-10', 2, '2024-07-15 11:12:41', '2024-07-15 11:12:41');
INSERT INTO "public"."orders" ("id", "name", "order_no", "price", "qty", "date", "user_id", "created_at", "updated_at") VALUES
(3, 'Diana Tillman', 7633, 3000, 1, '2024-06-09', 6, '2024-07-15 11:12:41', '2024-07-15 11:12:41');
INSERT INTO "public"."orders" ("id", "name", "order_no", "price", "qty", "date", "user_id", "created_at", "updated_at") VALUES
(4, 'Marilyne Bergstrom', 8950, 9000, 4, '2024-06-18', 10, '2024-07-15 11:12:41', '2024-07-15 11:12:41'),
(5, 'Viva Nikolaus', 7381, 4000, 2, '2024-06-23', 2, '2024-07-15 11:12:42', '2024-07-15 11:12:42'),
(6, 'Emerald Reilly', 4581, 6000, 4, '2024-06-11', 8, '2024-07-15 11:12:42', '2024-07-15 11:12:42'),
(7, 'Walter Jacobi', 3795, 5000, 9, '2024-06-02', 6, '2024-07-15 11:12:42', '2024-07-15 11:12:42'),
(8, 'Viva Nikolaus', 7646, 7000, 8, '2024-06-24', 6, '2024-07-15 11:12:42', '2024-07-15 11:12:42'),
(9, 'Prof. Esta Lesch I', 6872, 8000, 7, '2024-06-14', 9, '2024-07-15 11:12:42', '2024-07-15 11:12:42'),
(10, 'Gennaro Leuschke', 3507, 4000, 1, '2024-06-18', 9, '2024-07-15 11:12:42', '2024-07-15 11:12:42'),
(11, 'Prof. Esta Lesch I', 3536, 3000, 6, '2024-06-08', 7, '2024-07-15 11:12:43', '2024-07-15 11:12:43'),
(12, 'Terrell King Sr.', 4994, 7000, 2, '2024-06-28', 2, '2024-07-15 11:12:43', '2024-07-15 11:12:43'),
(13, 'Viva Nikolaus', 7947, 7000, 8, '2024-06-05', 10, '2024-07-15 11:12:43', '2024-07-15 11:12:43'),
(14, 'Diana Tillman', 8900, 4000, 1, '2024-06-25', 1, '2024-07-15 11:12:43', '2024-07-15 11:12:43'),
(15, 'Gennaro Leuschke', 4252, 2000, 1, '2024-06-06', 7, '2024-07-15 11:12:43', '2024-07-15 11:12:43'),
(16, 'Earlene Boehm', 6814, 8000, 9, '2024-06-04', 1, '2024-07-15 11:12:43', '2024-07-15 11:12:43'),
(17, 'Terrell King Sr.', 3275, 4000, 6, '2024-06-13', 1, '2024-07-15 11:12:44', '2024-07-15 11:12:44'),
(18, 'Diana Tillman', 6466, 7000, 8, '2024-06-09', 7, '2024-07-15 11:12:44', '2024-07-15 11:12:44'),
(19, 'Terrell King Sr.', 3077, 3000, 2, '2024-06-23', 7, '2024-07-15 11:12:44', '2024-07-15 11:12:44'),
(20, 'Gennaro Leuschke', 3615, 9000, 2, '2024-06-21', 4, '2024-07-15 11:12:44', '2024-07-15 11:12:44'),
(21, 'Terrell King Sr.', 8696, 10000, 8, '2024-06-25', 2, '2024-07-15 11:12:44', '2024-07-15 11:12:44'),
(22, 'Prof. Esta Lesch I', 3308, 2000, 5, '2024-06-04', 8, '2024-07-15 11:12:45', '2024-07-15 11:12:45'),
(23, 'Terrell King Sr.', 5115, 4000, 3, '2024-06-29', 4, '2024-07-15 11:12:45', '2024-07-15 11:12:45'),
(24, 'Prof. Esta Lesch I', 6538, 1000, 7, '2024-06-04', 7, '2024-07-15 11:12:45', '2024-07-15 11:12:45'),
(25, 'Earlene Boehm', 3874, 6000, 2, '2024-06-10', 6, '2024-07-15 11:12:45', '2024-07-15 11:12:45'),
(26, 'Emerald Reilly', 7776, 10000, 7, '2024-06-08', 3, '2024-07-15 11:12:45', '2024-07-15 11:12:45'),
(27, 'Viva Nikolaus', 7032, 3000, 2, '2024-06-26', 3, '2024-07-15 11:12:45', '2024-07-15 11:12:45'),
(28, 'Terrell King Sr.', 6735, 3000, 1, '2024-06-23', 6, '2024-07-15 11:12:46', '2024-07-15 11:12:46'),
(29, 'Diana Tillman', 7244, 5000, 10, '2024-06-24', 1, '2024-07-15 11:12:46', '2024-07-15 11:12:46'),
(30, 'Diana Tillman', 9217, 2000, 8, '2024-06-16', 7, '2024-07-15 11:12:46', '2024-07-15 11:12:46'),
(31, 'Dr. Gust Williamson I', 4956, 1000, 1, '2024-06-10', 9, '2024-07-15 11:12:46', '2024-07-15 11:12:46'),
(32, 'Walter Jacobi', 8036, 7000, 10, '2024-06-24', 7, '2024-07-15 11:12:46', '2024-07-15 11:12:46'),
(33, 'Gennaro Leuschke', 8856, 2000, 4, '2024-06-04', 8, '2024-07-15 11:12:47', '2024-07-15 11:12:47'),
(34, 'Diana Tillman', 4882, 5000, 2, '2024-06-08', 1, '2024-07-15 11:12:47', '2024-07-15 11:12:47'),
(35, 'Marilyne Bergstrom', 7334, 1000, 1, '2024-06-17', 5, '2024-07-15 11:12:47', '2024-07-15 11:12:47'),
(36, 'Terrell King Sr.', 4709, 6000, 9, '2024-06-06', 7, '2024-07-15 11:12:47', '2024-07-15 11:12:47'),
(37, 'Emerald Reilly', 4490, 7000, 7, '2024-06-01', 8, '2024-07-15 11:12:47', '2024-07-15 11:12:47'),
(38, 'Terrell King Sr.', 3443, 1000, 2, '2024-06-18', 1, '2024-07-15 11:12:47', '2024-07-15 11:12:47'),
(39, 'Marilyne Bergstrom', 3452, 1000, 9, '2024-06-02', 6, '2024-07-15 11:12:48', '2024-07-15 11:12:48'),
(40, 'Dr. Gust Williamson I', 8936, 5000, 7, '2024-06-24', 8, '2024-07-15 11:12:48', '2024-07-15 11:12:48'),
(41, 'Earlene Boehm', 7635, 1000, 6, '2024-06-25', 5, '2024-07-15 11:12:48', '2024-07-15 11:12:48'),
(42, 'Diana Tillman', 6955, 3000, 4, '2024-06-22', 4, '2024-07-15 11:12:48', '2024-07-15 11:12:48'),
(43, 'Dr. Gust Williamson I', 5424, 2000, 7, '2024-06-22', 3, '2024-07-15 11:12:48', '2024-07-15 11:12:48'),
(44, 'Prof. Esta Lesch I', 5365, 8000, 2, '2024-06-19', 6, '2024-07-15 11:12:48', '2024-07-15 11:12:48'),
(45, 'Emerald Reilly', 8200, 1000, 10, '2024-06-25', 6, '2024-07-15 11:12:49', '2024-07-15 11:12:49'),
(46, 'Viva Nikolaus', 6163, 8000, 9, '2024-06-27', 7, '2024-07-15 11:12:49', '2024-07-15 11:12:49'),
(47, 'Walter Jacobi', 7206, 2000, 2, '2024-06-25', 5, '2024-07-15 11:12:49', '2024-07-15 11:12:49'),
(48, 'Viva Nikolaus', 5157, 8000, 6, '2024-06-21', 3, '2024-07-15 11:12:49', '2024-07-15 11:12:49'),
(49, 'Prof. Esta Lesch I', 7527, 10000, 7, '2024-06-11', 5, '2024-07-15 11:12:49', '2024-07-15 11:12:49'),
(50, 'Marilyne Bergstrom', 5305, 7000, 6, '2024-06-26', 2, '2024-07-15 11:12:49', '2024-07-15 11:12:49'),
(51, 'Walter Jacobi', 6905, 3000, 1, '2024-06-06', 2, '2024-07-15 11:12:50', '2024-07-15 11:12:50'),
(52, 'Dr. Gust Williamson I', 7020, 3000, 7, '2024-06-23', 3, '2024-07-15 11:12:50', '2024-07-15 11:12:50'),
(53, 'Marilyne Bergstrom', 8752, 3000, 3, '2024-06-20', 1, '2024-07-15 11:12:50', '2024-07-15 11:12:50'),
(54, 'Terrell King Sr.', 6458, 6000, 7, '2024-06-26', 5, '2024-07-15 11:12:50', '2024-07-15 11:12:50'),
(55, 'Dr. Gust Williamson I', 8641, 2000, 5, '2024-06-29', 1, '2024-07-15 11:12:50', '2024-07-15 11:12:50'),
(56, 'Gennaro Leuschke', 4886, 8000, 2, '2024-06-10', 10, '2024-07-15 11:12:51', '2024-07-15 11:12:51'),
(57, 'Terrell King Sr.', 3148, 2000, 9, '2024-06-03', 10, '2024-07-15 11:12:51', '2024-07-15 11:12:51'),
(58, 'Prof. Esta Lesch I', 5674, 2000, 1, '2024-06-10', 7, '2024-07-15 11:12:51', '2024-07-15 11:12:51'),
(59, 'Diana Tillman', 8054, 7000, 6, '2024-06-20', 2, '2024-07-15 11:12:51', '2024-07-15 11:12:51'),
(60, 'Dr. Gust Williamson I', 9569, 3000, 4, '2024-06-22', 4, '2024-07-15 11:12:51', '2024-07-15 11:12:51'),
(61, 'Emerald Reilly', 7118, 5000, 6, '2024-06-03', 7, '2024-07-15 11:12:51', '2024-07-15 11:12:51'),
(62, 'Prof. Esta Lesch I', 6618, 2000, 8, '2024-06-13', 8, '2024-07-15 11:12:52', '2024-07-15 11:12:52'),
(63, 'Earlene Boehm', 7986, 6000, 2, '2024-06-11', 7, '2024-07-15 11:12:52', '2024-07-15 11:12:52'),
(64, 'Gennaro Leuschke', 4631, 2000, 9, '2024-06-27', 3, '2024-07-15 11:12:52', '2024-07-15 11:12:52'),
(65, 'Terrell King Sr.', 9770, 3000, 3, '2024-06-06', 3, '2024-07-15 11:12:52', '2024-07-15 11:12:52'),
(66, 'Viva Nikolaus', 7971, 2000, 1, '2024-06-02', 7, '2024-07-15 11:12:52', '2024-07-15 11:12:52'),
(67, 'Viva Nikolaus', 4414, 5000, 1, '2024-06-23', 1, '2024-07-15 11:12:52', '2024-07-15 11:12:52'),
(68, 'Dr. Gust Williamson I', 6707, 7000, 7, '2024-06-04', 6, '2024-07-15 11:12:53', '2024-07-15 11:12:53');
INSERT INTO "public"."orders" ("id", "name", "order_no", "price", "qty", "date", "user_id", "created_at", "updated_at") VALUES
(69, 'Marilyne Bergstrom', 4113, 3000, 8, '2024-06-15', 9, '2024-07-15 11:12:53', '2024-07-15 11:12:53');
INSERT INTO "public"."orders" ("id", "name", "order_no", "price", "qty", "date", "user_id", "created_at", "updated_at") VALUES
(70, 'Marilyne Bergstrom', 7190, 1000, 9, '2024-06-18', 3, '2024-07-15 11:12:53', '2024-07-15 11:12:53');
INSERT INTO "public"."orders" ("id", "name", "order_no", "price", "qty", "date", "user_id", "created_at", "updated_at") VALUES
(71, 'Terrell King Sr.', 7182, 3000, 2, '2024-06-23', 8, '2024-07-15 11:12:53', '2024-07-15 11:12:53'),
(72, 'Prof. Esta Lesch I', 9010, 9000, 1, '2024-06-19', 4, '2024-07-15 11:12:53', '2024-07-15 11:12:53'),
(73, 'Gennaro Leuschke', 3134, 8000, 5, '2024-06-15', 3, '2024-07-15 11:12:54', '2024-07-15 11:12:54'),
(74, 'Prof. Esta Lesch I', 5224, 4000, 9, '2024-06-26', 10, '2024-07-15 11:12:54', '2024-07-15 11:12:54'),
(75, 'Gennaro Leuschke', 5750, 6000, 9, '2024-06-12', 4, '2024-07-15 11:12:54', '2024-07-15 11:12:54'),
(76, 'Earlene Boehm', 4932, 6000, 5, '2024-06-12', 7, '2024-07-15 11:12:54', '2024-07-15 11:12:54'),
(77, 'Prof. Esta Lesch I', 9554, 2000, 1, '2024-06-20', 9, '2024-07-15 11:12:54', '2024-07-15 11:12:54'),
(78, 'Diana Tillman', 8781, 7000, 6, '2024-06-06', 7, '2024-07-15 11:12:55', '2024-07-15 11:12:55'),
(79, 'Prof. Esta Lesch I', 8061, 7000, 1, '2024-06-22', 3, '2024-07-15 11:12:55', '2024-07-15 11:12:55'),
(80, 'Dr. Gust Williamson I', 9205, 5000, 1, '2024-06-17', 6, '2024-07-15 11:12:55', '2024-07-15 11:12:55'),
(81, 'Walter Jacobi', 3064, 4000, 10, '2024-06-29', 2, '2024-07-15 11:12:56', '2024-07-15 11:12:56'),
(82, 'Emerald Reilly', 9815, 2000, 8, '2024-06-21', 4, '2024-07-15 11:12:56', '2024-07-15 11:12:56'),
(83, 'Emerald Reilly', 5031, 4000, 7, '2024-06-14', 2, '2024-07-15 11:12:56', '2024-07-15 11:12:56'),
(84, 'Prof. Esta Lesch I', 7544, 9000, 5, '2024-06-13', 9, '2024-07-15 11:12:56', '2024-07-15 11:12:56'),
(85, 'Dr. Gust Williamson I', 6785, 8000, 2, '2024-06-27', 6, '2024-07-15 11:12:56', '2024-07-15 11:12:56'),
(86, 'Terrell King Sr.', 8099, 8000, 6, '2024-06-03', 9, '2024-07-15 11:12:56', '2024-07-15 11:12:56'),
(87, 'Emerald Reilly', 5709, 7000, 5, '2024-06-12', 8, '2024-07-15 11:12:57', '2024-07-15 11:12:57'),
(88, 'Dr. Gust Williamson I', 8260, 5000, 9, '2024-06-14', 4, '2024-07-15 11:12:57', '2024-07-15 11:12:57'),
(89, 'Terrell King Sr.', 7686, 10000, 7, '2024-06-02', 8, '2024-07-15 11:12:57', '2024-07-15 11:12:57'),
(90, 'Diana Tillman', 5314, 4000, 7, '2024-06-12', 9, '2024-07-15 11:12:57', '2024-07-15 11:12:57'),
(91, 'Marilyne Bergstrom', 7439, 6000, 3, '2024-06-25', 9, '2024-07-15 11:12:57', '2024-07-15 11:12:57'),
(92, 'Terrell King Sr.', 9563, 4000, 9, '2024-06-27', 4, '2024-07-15 11:12:57', '2024-07-15 11:12:57'),
(93, 'Marilyne Bergstrom', 8493, 5000, 4, '2024-06-08', 10, '2024-07-15 11:12:58', '2024-07-15 11:12:58'),
(94, 'Viva Nikolaus', 4260, 6000, 7, '2024-06-02', 5, '2024-07-15 11:12:58', '2024-07-15 11:12:58'),
(95, 'Diana Tillman', 8252, 2000, 9, '2024-06-27', 10, '2024-07-15 11:12:58', '2024-07-15 11:12:58'),
(96, 'Diana Tillman', 9537, 10000, 7, '2024-06-16', 4, '2024-07-15 11:12:58', '2024-07-15 11:12:58'),
(97, 'Walter Jacobi', 5210, 6000, 9, '2024-06-25', 7, '2024-07-15 11:12:58', '2024-07-15 11:12:58'),
(98, 'Earlene Boehm', 4074, 10000, 5, '2024-06-14', 5, '2024-07-15 11:12:59', '2024-07-15 11:12:59'),
(99, 'Diana Tillman', 8947, 5000, 2, '2024-06-18', 9, '2024-07-15 11:12:59', '2024-07-15 11:12:59'),
(100, 'Emerald Reilly', 8966, 5000, 3, '2024-06-17', 7, '2024-07-15 11:12:59', '2024-07-15 11:12:59');

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."password_reset_tokens" (
    "email" varchar(255) NOT NULL,
    "token" varchar(255) NOT NULL,
    "created_at" timestamp(0),
    PRIMARY KEY ("email")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS products_id_seq;

-- Table Definition
CREATE TABLE "public"."products" (
    "id" int8 NOT NULL DEFAULT nextval('products_id_seq'::regclass),
    "name" varchar(255),
    "category_id" int4,
    "price" int4,
    "user_id" int8,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."products" ("id", "name", "category_id", "price", "user_id", "created_at", "updated_at") VALUES
(1, 'Mustafa Dooley', 3, 3000, 5, '2024-07-16 09:53:05', '2024-07-16 09:53:05');
INSERT INTO "public"."products" ("id", "name", "category_id", "price", "user_id", "created_at", "updated_at") VALUES
(2, 'Kristy Purdy', 4, 8000, 10, '2024-07-16 09:53:05', '2024-07-16 09:53:05');
INSERT INTO "public"."products" ("id", "name", "category_id", "price", "user_id", "created_at", "updated_at") VALUES
(3, 'Turner Davis', 2, 1000, 8, '2024-07-16 09:53:05', '2024-07-16 09:53:05');
INSERT INTO "public"."products" ("id", "name", "category_id", "price", "user_id", "created_at", "updated_at") VALUES
(4, 'Elise Walker', 2, 1000, 10, '2024-07-16 09:53:06', '2024-07-16 09:53:06'),
(5, 'Prof. Andres Berge', 4, 1000, 1, '2024-07-16 09:53:06', '2024-07-16 09:53:06'),
(6, 'Holden Kirlin', 5, 10000, 10, '2024-07-16 09:53:06', '2024-07-16 09:53:06'),
(7, 'Einar Kuphal', 4, 7000, 8, '2024-07-16 09:53:06', '2024-07-16 09:53:06'),
(8, 'Ozella Keebler', 4, 3000, 1, '2024-07-16 09:53:06', '2024-07-16 09:53:06'),
(9, 'Stacy Weissnat V', 1, 2000, 4, '2024-07-16 09:53:06', '2024-07-16 09:53:06'),
(10, 'Electa Volkman Sr.', 3, 2000, 5, '2024-07-16 09:53:07', '2024-07-16 09:53:07');


-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS student_subjects_id_seq;

-- Table Definition
CREATE TABLE "public"."student_subjects" (
    "id" int8 NOT NULL DEFAULT nextval('student_subjects_id_seq'::regclass),
    "student_id" int8,
    "subject_id" int8,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."student_subjects" ("id", "student_id", "subject_id", "created_at", "updated_at") VALUES
(1, 10, 8, '2024-07-16 09:54:39', '2024-07-16 09:54:39');
INSERT INTO "public"."student_subjects" ("id", "student_id", "subject_id", "created_at", "updated_at") VALUES
(2, 10, 5, '2024-07-16 09:54:39', '2024-07-16 09:54:39');
INSERT INTO "public"."student_subjects" ("id", "student_id", "subject_id", "created_at", "updated_at") VALUES
(3, 1, 9, '2024-07-16 09:54:39', '2024-07-16 09:54:39');
INSERT INTO "public"."student_subjects" ("id", "student_id", "subject_id", "created_at", "updated_at") VALUES
(4, 6, 2, '2024-07-16 09:54:39', '2024-07-16 09:54:39'),
(5, 9, 4, '2024-07-16 09:54:39', '2024-07-16 09:54:39'),
(6, 10, 8, '2024-07-16 09:54:40', '2024-07-16 09:54:40'),
(7, 8, 6, '2024-07-16 09:54:40', '2024-07-16 09:54:40'),
(8, 4, 1, '2024-07-16 09:54:40', '2024-07-16 09:54:40'),
(9, 6, 1, '2024-07-16 09:54:40', '2024-07-16 09:54:40'),
(10, 9, 2, '2024-07-16 09:54:40', '2024-07-16 09:54:40'),
(11, 7, 6, '2024-07-16 09:54:40', '2024-07-16 09:54:40'),
(12, 1, 8, '2024-07-16 09:54:41', '2024-07-16 09:54:41'),
(13, 5, 4, '2024-07-16 09:54:41', '2024-07-16 09:54:41'),
(14, 3, 8, '2024-07-16 09:54:41', '2024-07-16 09:54:41'),
(15, 8, 3, '2024-07-16 09:54:41', '2024-07-16 09:54:41'),
(16, 2, 4, '2024-07-16 09:54:41', '2024-07-16 09:54:41'),
(17, 3, 5, '2024-07-16 09:54:42', '2024-07-16 09:54:42'),
(18, 10, 7, '2024-07-16 09:54:42', '2024-07-16 09:54:42'),
(19, 9, 8, '2024-07-16 09:54:42', '2024-07-16 09:54:42'),
(20, 5, 9, '2024-07-16 09:54:42', '2024-07-16 09:54:42'),
(21, 8, 8, '2024-07-16 09:54:42', '2024-07-16 09:54:42'),
(22, 3, 3, '2024-07-16 09:54:42', '2024-07-16 09:54:42'),
(23, 7, 6, '2024-07-16 09:54:43', '2024-07-16 09:54:43'),
(24, 7, 3, '2024-07-16 09:54:43', '2024-07-16 09:54:43'),
(25, 3, 6, '2024-07-16 09:54:43', '2024-07-16 09:54:43'),
(26, 5, 7, '2024-07-16 09:54:43', '2024-07-16 09:54:43'),
(27, 3, 3, '2024-07-16 09:54:43', '2024-07-16 09:54:43'),
(28, 1, 3, '2024-07-16 09:54:44', '2024-07-16 09:54:44'),
(29, 9, 4, '2024-07-16 09:54:44', '2024-07-16 09:54:44'),
(30, 9, 5, '2024-07-16 09:54:44', '2024-07-16 09:54:44'),
(31, 8, 7, '2024-07-16 09:54:44', '2024-07-16 09:54:44'),
(32, 7, 8, '2024-07-16 09:54:44', '2024-07-16 09:54:44'),
(33, 3, 1, '2024-07-16 09:54:44', '2024-07-16 09:54:44'),
(34, 9, 9, '2024-07-16 09:54:45', '2024-07-16 09:54:45'),
(35, 7, 3, '2024-07-16 09:54:45', '2024-07-16 09:54:45'),
(36, 1, 4, '2024-07-16 09:54:45', '2024-07-16 09:54:45'),
(37, 1, 3, '2024-07-16 09:54:45', '2024-07-16 09:54:45'),
(38, 2, 10, '2024-07-16 09:54:45', '2024-07-16 09:54:45'),
(39, 10, 1, '2024-07-16 09:54:45', '2024-07-16 09:54:45'),
(40, 9, 7, '2024-07-16 09:54:46', '2024-07-16 09:54:46'),
(41, 2, 4, '2024-07-16 09:54:46', '2024-07-16 09:54:46'),
(42, 7, 9, '2024-07-16 09:54:46', '2024-07-16 09:54:46'),
(43, 4, 4, '2024-07-16 09:54:46', '2024-07-16 09:54:46'),
(44, 6, 8, '2024-07-16 09:54:47', '2024-07-16 09:54:47'),
(45, 8, 5, '2024-07-16 09:54:47', '2024-07-16 09:54:47'),
(46, 10, 4, '2024-07-16 09:54:47', '2024-07-16 09:54:47'),
(47, 4, 7, '2024-07-16 09:54:47', '2024-07-16 09:54:47'),
(48, 6, 4, '2024-07-16 09:54:47', '2024-07-16 09:54:47'),
(49, 5, 10, '2024-07-16 09:54:47', '2024-07-16 09:54:47'),
(50, 2, 8, '2024-07-16 09:54:48', '2024-07-16 09:54:48'),
(51, 1, 6, '2024-07-16 09:54:48', '2024-07-16 09:54:48'),
(52, 7, 9, '2024-07-16 09:54:48', '2024-07-16 09:54:48'),
(53, 10, 1, '2024-07-16 09:54:48', '2024-07-16 09:54:48'),
(54, 8, 5, '2024-07-16 09:54:48', '2024-07-16 09:54:48'),
(55, 6, 2, '2024-07-16 09:54:49', '2024-07-16 09:54:49'),
(56, 4, 9, '2024-07-16 09:54:49', '2024-07-16 09:54:49'),
(57, 5, 3, '2024-07-16 09:54:49', '2024-07-16 09:54:49'),
(58, 9, 7, '2024-07-16 09:54:49', '2024-07-16 09:54:49'),
(59, 9, 4, '2024-07-16 09:54:49', '2024-07-16 09:54:49'),
(60, 1, 4, '2024-07-16 09:54:49', '2024-07-16 09:54:49'),
(61, 3, 5, '2024-07-16 09:54:50', '2024-07-16 09:54:50'),
(62, 9, 9, '2024-07-16 09:54:50', '2024-07-16 09:54:50'),
(63, 3, 1, '2024-07-16 09:54:50', '2024-07-16 09:54:50'),
(64, 3, 5, '2024-07-16 09:54:50', '2024-07-16 09:54:50'),
(65, 5, 3, '2024-07-16 09:54:50', '2024-07-16 09:54:50'),
(66, 1, 4, '2024-07-16 09:54:50', '2024-07-16 09:54:50'),
(67, 6, 10, '2024-07-16 09:54:51', '2024-07-16 09:54:51'),
(68, 10, 8, '2024-07-16 09:54:51', '2024-07-16 09:54:51'),
(69, 4, 9, '2024-07-16 09:54:51', '2024-07-16 09:54:51'),
(70, 8, 6, '2024-07-16 09:54:51', '2024-07-16 09:54:51'),
(71, 2, 9, '2024-07-16 09:54:51', '2024-07-16 09:54:51'),
(72, 5, 4, '2024-07-16 09:54:52', '2024-07-16 09:54:52'),
(73, 4, 10, '2024-07-16 09:54:52', '2024-07-16 09:54:52'),
(74, 5, 3, '2024-07-16 09:54:52', '2024-07-16 09:54:52'),
(75, 9, 4, '2024-07-16 09:54:52', '2024-07-16 09:54:52'),
(76, 2, 4, '2024-07-16 09:54:52', '2024-07-16 09:54:52'),
(77, 10, 1, '2024-07-16 09:54:52', '2024-07-16 09:54:52'),
(78, 8, 1, '2024-07-16 09:54:53', '2024-07-16 09:54:53'),
(79, 7, 5, '2024-07-16 09:54:53', '2024-07-16 09:54:53'),
(80, 8, 9, '2024-07-16 09:54:53', '2024-07-16 09:54:53'),
(81, 5, 8, '2024-07-16 09:54:53', '2024-07-16 09:54:53'),
(82, 3, 7, '2024-07-16 09:54:53', '2024-07-16 09:54:53'),
(83, 10, 5, '2024-07-16 09:54:53', '2024-07-16 09:54:53'),
(84, 6, 7, '2024-07-16 09:54:54', '2024-07-16 09:54:54'),
(85, 1, 2, '2024-07-16 09:54:54', '2024-07-16 09:54:54'),
(86, 6, 3, '2024-07-16 09:54:54', '2024-07-16 09:54:54'),
(87, 2, 4, '2024-07-16 09:54:54', '2024-07-16 09:54:54'),
(88, 7, 3, '2024-07-16 09:54:54', '2024-07-16 09:54:54'),
(89, 1, 3, '2024-07-16 09:54:55', '2024-07-16 09:54:55'),
(90, 5, 5, '2024-07-16 09:54:55', '2024-07-16 09:54:55'),
(91, 9, 3, '2024-07-16 09:54:55', '2024-07-16 09:54:55'),
(92, 7, 7, '2024-07-16 09:54:55', '2024-07-16 09:54:55'),
(93, 10, 9, '2024-07-16 09:54:55', '2024-07-16 09:54:55'),
(94, 5, 6, '2024-07-16 09:54:55', '2024-07-16 09:54:55'),
(95, 9, 7, '2024-07-16 09:54:56', '2024-07-16 09:54:56'),
(96, 10, 4, '2024-07-16 09:54:56', '2024-07-16 09:54:56'),
(97, 7, 4, '2024-07-16 09:54:56', '2024-07-16 09:54:56'),
(98, 3, 2, '2024-07-16 09:54:56', '2024-07-16 09:54:56'),
(99, 1, 8, '2024-07-16 09:54:56', '2024-07-16 09:54:56'),
(100, 3, 9, '2024-07-16 09:54:56', '2024-07-16 09:54:56');


-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS students_id_seq;

-- Table Definition
CREATE TABLE "public"."students" (
    "id" int8 NOT NULL DEFAULT nextval('students_id_seq'::regclass),
    "name" varchar(255),
    "marks" int4,
    "gender" varchar(255),
    "subject_id" int8,
    "user_id" int8,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(1, 'Coralie Price', 35, 'male', 2, 7, '2024-07-16 09:52:54', '2024-07-16 09:52:54');
INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(2, 'Miss Clarabelle Bahringer', 95, 'male', 5, 10, '2024-07-16 09:52:54', '2024-07-16 09:52:54');
INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(3, 'Darryl Thiel', 91, 'female', 3, 7, '2024-07-16 09:52:54', '2024-07-16 09:52:54');
INSERT INTO "public"."students" ("id", "name", "marks", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(4, 'Rebeka Robel', 45, 'female', 1, 5, '2024-07-16 09:52:54', '2024-07-16 09:52:54'),
(5, 'Prof. Velva Schamberger', 68, 'female', 1, 9, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(6, 'Dr. Davon Rutherford', 75, 'male', 3, 1, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(7, 'Cornell Larson', 38, 'male', 2, 1, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(8, 'Mrs. Zita Skiles', 10, 'male', 4, 6, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(9, 'Lorenzo Champlin', 98, 'male', 10, 3, '2024-07-16 09:52:55', '2024-07-16 09:52:55'),
(10, 'Hudson Ward Jr.', 18, 'female', 6, 9, '2024-07-16 09:52:56', '2024-07-16 09:52:56');

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS subjects_id_seq;

-- Table Definition
CREATE TABLE "public"."subjects" (
    "id" int8 NOT NULL DEFAULT nextval('subjects_id_seq'::regclass),
    "name" varchar(255),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."subjects" ("id", "name", "created_at", "updated_at") VALUES
(1, 'Mr. Houston Ritchie', '2024-07-16 09:52:43', '2024-07-16 09:52:43');
INSERT INTO "public"."subjects" ("id", "name", "created_at", "updated_at") VALUES
(2, 'Miss Lucile Marvin', '2024-07-16 09:52:43', '2024-07-16 09:52:43');
INSERT INTO "public"."subjects" ("id", "name", "created_at", "updated_at") VALUES
(3, 'Ms. Tessie Bauch III', '2024-07-16 09:52:43', '2024-07-16 09:52:43');
INSERT INTO "public"."subjects" ("id", "name", "created_at", "updated_at") VALUES
(4, 'Johnathon Emmerich', '2024-07-16 09:52:44', '2024-07-16 09:52:44'),
(5, 'Mr. Sid Boyle DDS', '2024-07-16 09:52:44', '2024-07-16 09:52:44'),
(6, 'Brook Walsh', '2024-07-16 09:52:44', '2024-07-16 09:52:44'),
(7, 'Mr. Monserrate Smitham PhD', '2024-07-16 09:52:44', '2024-07-16 09:52:44'),
(8, 'Myra Schulist MD', '2024-07-16 09:52:44', '2024-07-16 09:52:44'),
(9, 'Paul Anderson', '2024-07-16 09:52:45', '2024-07-16 09:52:45'),
(10, 'Elwyn Stiedemann', '2024-07-16 09:52:45', '2024-07-16 09:52:45');

-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS teachers_id_seq;

-- Table Definition
CREATE TABLE "public"."teachers" (
    "id" int8 NOT NULL DEFAULT nextval('teachers_id_seq'::regclass),
    "name" varchar(255),
    "gender" varchar(255),
    "subject_id" int8,
    "user_id" int8,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."teachers" ("id", "name", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(1, 'Asha Jast Jr.', 'male', 9, 9, '2024-07-16 09:53:00', '2024-07-16 09:53:00');
INSERT INTO "public"."teachers" ("id", "name", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(2, 'Dr. Jordi Torp', 'female', 10, 3, '2024-07-16 09:53:00', '2024-07-16 09:53:00');
INSERT INTO "public"."teachers" ("id", "name", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(3, 'Toby Lubowitz', 'male', 10, 5, '2024-07-16 09:53:00', '2024-07-16 09:53:00');
INSERT INTO "public"."teachers" ("id", "name", "gender", "subject_id", "user_id", "created_at", "updated_at") VALUES
(4, 'Laverna Sporer', 'male', 5, 6, '2024-07-16 09:53:00', '2024-07-16 09:53:00'),
(5, 'Ocie Schuppe', 'female', 7, 3, '2024-07-16 09:53:00', '2024-07-16 09:53:00'),
(6, 'Alaina Runolfsdottir DDS', 'female', 9, 4, '2024-07-16 09:53:00', '2024-07-16 09:53:00'),
(7, 'Glen Lebsack', 'male', 5, 3, '2024-07-16 09:53:01', '2024-07-16 09:53:01'),
(8, 'Dr. Isaias Sauer III', 'female', 8, 1, '2024-07-16 09:53:01', '2024-07-16 09:53:01'),
(9, 'Laury White', 'female', 2, 10, '2024-07-16 09:53:01', '2024-07-16 09:53:01'),
(10, 'Tanya Schuppe Jr.', 'male', 4, 1, '2024-07-16 09:53:01', '2024-07-16 09:53:01');


-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS users_id_seq;

-- Table Definition
CREATE TABLE "public"."users" (
    "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
    "name" varchar(255) NOT NULL,
    "email" varchar(255) NOT NULL,
    "email_verified_at" timestamp(0),
    "password" varchar(255) NOT NULL,
    "remember_token" varchar(100),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    PRIMARY KEY ("id")
);


-- Indices
CREATE UNIQUE INDEX users_email_unique ON public.users USING btree (email);

INSERT INTO "public"."users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES
(1, 'Prof. Montana Deckow', 'renee29@example.net', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'EGBYFzoL1M', '2024-07-16 09:52:39', '2024-07-16 09:52:39');
INSERT INTO "public"."users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES
(2, 'Brigitte Hintz', 'evangeline71@example.net', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'fw24oOABZ3', '2024-07-16 09:52:40', '2024-07-16 09:52:40');
INSERT INTO "public"."users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES
(3, 'Albert Tremblay', 'pinkie66@example.org', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'DfFCTMGDFh', '2024-07-16 09:52:40', '2024-07-16 09:52:40');
INSERT INTO "public"."users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES
(4, 'German Romaguera', 'runolfsson.karli@example.com', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'RmkLAGRI9r', '2024-07-16 09:52:40', '2024-07-16 09:52:40'),
(5, 'Horace Hackett', 'alison.dare@example.net', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'UV3fRi36SI', '2024-07-16 09:52:40', '2024-07-16 09:52:40'),
(6, 'Rebeca O''Kon', 'gstoltenberg@example.net', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'QJ4yAihozF', '2024-07-16 09:52:40', '2024-07-16 09:52:40'),
(7, 'Dr. George Kunde', 'ollie76@example.com', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'RZjy7w4fs6', '2024-07-16 09:52:40', '2024-07-16 09:52:40'),
(8, 'Dr. Hattie Reynolds V', 'garnett59@example.org', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'jLpFe7W2q4', '2024-07-16 09:52:41', '2024-07-16 09:52:41'),
(9, 'Dexter Stracke', 'bonita50@example.com', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'ThLD5eb89p', '2024-07-16 09:52:41', '2024-07-16 09:52:41'),
(10, 'Keagan Bins', 'adele.legros@example.com', '2024-07-16 09:52:39', '$2y$12$LXNjbEb2XzOdAkkD.VutqOT5P04OTr1oAFpjiwk4kuNoSg6KdB.RS', 'mxodA7xrv4', '2024-07-16 09:52:41', '2024-07-16 09:52:41');