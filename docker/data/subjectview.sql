CREATE VIEW public.swedishsubjectname
AS SELECT s.subject_id,
    s.subject_type_id,
    s.domain,
    s.eligible,
    sn.subject_name AS defaultname
   FROM subject s
     LEFT JOIN subject_name sn ON s.subject_id = sn.subject_id
  WHERE sn.locale = 'sv';
  
  
CREATE VIEW public.englishsubjectname
AS SELECT s.subject_id,
    s.subject_type_id,
    s.domain,
    s.not_eligible,
    sn.subject_name AS alternativename
   FROM subject s
     LEFT JOIN subject_name sn ON s.subject_id = sn.subject_id
  WHERE sn.locale = 'en';
  
CREATE VIEW public.subjectview
AS SELECT ssn.subject_id,
    ssn.subject_type_id,
    ssn.domain,
    ssn.not_eligible,
    ssn.defaultname,
    esn.alternativename
   FROM swedishsubjectname ssn
     LEFT JOIN englishsubjectname esn ON ssn.subject_id = esn.subject_id;