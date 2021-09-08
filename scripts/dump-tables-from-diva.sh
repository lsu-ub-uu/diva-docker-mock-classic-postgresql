docker exec dev-diva-postgresql pg_dump -U diva \
 --table public.organisation\
 --table public.organisation_name\
 --table public.organisation_address\
 --table public.organisation_contact\
 --table public.organisation_parent\
 --table public.organisation_predecessor\
 --table public.organisation_predecessor_description\
 --table public.organisation_type\
 --table public.organisation_type_name\
 diva > /tmp/organisation.sql 


#pg_dump -U diva --file /tmp/organisation.sql --table public.organisation diva
