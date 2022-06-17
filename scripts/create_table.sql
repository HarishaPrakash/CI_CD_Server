SET GLOBAL query_cache_size =67108864;


CREATE TABLE  IF NOT EXISTS metrics(commit_id varchar(100),
                            commiter_name varchar(100),
                            committed_date datetime,
                            nloc integer(100),
                            nloc_added integer(100),
                            nloc_deleted integer(100),
                            change_rate double,
                            cyclomatic_complexity integer(100),
                            effective_cylomatic_complexity DOUBLE,
                            test_case integer(100),
                            failed_test_case integer(100)
                            );

CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'sonar' IDENTIFIED BY 'sonar';
GRANT ALL ON sonar.* TO 'sonar'@'%' IDENTIFIED BY 'sonar';
GRANT ALL ON sonar.* TO 'sonar'@'localhost' IDENTIFIED BY 'sonar';

FLUSH PRIVILEGES;