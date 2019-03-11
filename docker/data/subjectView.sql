create view subject_name_sv as select subject_id, subject_name from subject_name where locale = 'sv';

create view subject_name_en as select subject_id, subject_name from subject_name where locale = 'en';

create view subject_name_complete as select sv.subject_id as id, sv.subject_name as name, en.subject_name as alternative_name from subject_name_sv sv left join subject_name_en en on sv.subject_id = en.subject_id;

create view nationalsubject as select s.subject_id as subject_id, s.subject_code, sn.name as default_name, sn.alternative_name from subject s left join  subject_name_complete sn on s.subject_id = sn.id where s.subject_type_id = 57;
