CREATE VIEW public.divaOrganisation as select CAST(o.organisation_id as varchar) as id, o.domain, o.organisation_name as defaultname, o.closed_date, o.organisation_code, o.orgnumber, o.organisation_homepage, o.not_eligible, ot.organisation_type_code as type_code, coalesce(alt.organisation_name,'') as alternative_name,
a.city, a.street, a.postbox, a.postnumber, a.country_code from public.organisation o left join organisation_type ot on o.organisation_type_id = ot.organisation_type_id left join organisation_name alt 
on o.organisation_id = alt.organisation_id left join organisation_address a on o.address_id = a.address_id; 

CREATE VIEW public.divaOrganisationPredecessor as select CAST(op.organisation_id as varchar) as organisation_id, CAST(op.organisation_predecessor_id as varchar) as predecessor_id, opd.organisation_predecessor_id as predecessorDescriptionId, opd.description from organisation_predecessor op 
left join organisation_predecessor_description opd on op.organisation_id = opd.organisation_id AND op.organisation_predecessor_id = opd.predecessor_id;

CREATE VIEW public.divaOrganisationParent as select CAST(organisation_id as varchar), organisation_parent_id from organisation_parent;