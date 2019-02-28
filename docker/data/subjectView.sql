create view subject_name_sv as select subject_id, subject_name from subject_name where locale = 'sv';

create view subject_name_en as select subject_id, subject_name from subject_name where locale = 'en';

create view subject_name_complete as select sv.subject_id as id, sv.subject_name as name, en.subject_name as alternative_name from subject_name_sv sv left join subject_name_en en on sv.subject_id = en.subject_id;

create view nationalsubject as select s.subject_id as id, s.subject_code, sn.name as default_name, sn.alternative_name,   p.parent_subject_id as parentid from subject s left join  subject_name_complete sn on s.subject_id = sn.id left join subject_parent p on s.subject_id = p.subject_id where s.subject_type_id = 57;
