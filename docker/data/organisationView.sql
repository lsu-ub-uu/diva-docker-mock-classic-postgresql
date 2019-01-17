-- CREATE VIEW public.divaOrganisation as select CAST(o.organisation_id as varchar) as id, o.organisation_name as defaultname, o.organisation_code, o.not_eligible, ot.organisation_type_code as type_code, alt.organisation_name as alternative_name 
-- from public.organisation o left join organisation_type ot on o.organisation_type_id = ot.organisation_type_id left join organisation_name alt 
-- on o.organisation_id = alt.organisation_id; 
drop view public.divaOrganisation ;

CREATE VIEW public.divaOrganisation as select CAST(o.organisation_id as varchar) as id, o.organisation_name as defaultname, o.closed_date, o.organisation_code, o.orgnumber, o.organisation_homepage, o.not_eligible, ot.organisation_type_code as type_code, alt.organisation_name as alternative_name,
a.city, a.street, a.postbox, a.postnumber, a.country_code, op.organisation_parentid 
from public.organisation o left join organisation_type ot on o.organisation_type_id = ot.organisation_type_id left join organisation_name alt 
on o.organisation_id = alt.organisation_id left join organisation_address a on o.address_id = a.address_id left join organisation_parent op on o.organisation_id = op.organisation_id; 

drop view public.divaOrganisationPredecessor;
CREATE VIEW public.divaOrganisationPredecessor as select op.organisation_id as id, op.organisation_predecessor_id as predecessorid, opd.organisation_predecessor_id as predecessorDescriptionId, opd.description from organisation_predecessor op 
left join organisation_predecessor_description opd on op.organisation_id = opd.organisation_id AND op.organisation_predecessor_id = opd.predecessor_id;