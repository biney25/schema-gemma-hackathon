-- Keep the asset-table alias distinct from the PL/pgSQL record variable a.
do $migration$
declare source text;
begin
 select pg_get_functiondef('schema_private.api(text,jsonb)'::regprocedure) into source;
 if position($old$return jsonb_build_object('assets',(select coalesce(jsonb_agg(to_jsonb(x)-'key' order by x.id),'[]')from(select a.*,(select count(*)from public.schema_entry_assets where asset_id=a.id) as page_count from public.schema_assets a where owner_id=actor and(coalesce(payload->>'after','')='' or id>(payload->>'after')::uuid) and(not coalesce((payload->>'unused')::boolean,false)or not exists(select 1 from public.schema_entry_assets where asset_id=a.id))order by id limit 101)x));$old$ in source) = 0 then
   raise exception 'Expected media.list branch is missing; inspect before updating.';
 end if;
 execute replace(source, $old$return jsonb_build_object('assets',(select coalesce(jsonb_agg(to_jsonb(x)-'key' order by x.id),'[]')from(select a.*,(select count(*)from public.schema_entry_assets where asset_id=a.id) as page_count from public.schema_assets a where owner_id=actor and(coalesce(payload->>'after','')='' or id>(payload->>'after')::uuid) and(not coalesce((payload->>'unused')::boolean,false)or not exists(select 1 from public.schema_entry_assets where asset_id=a.id))order by id limit 101)x));$old$, $new$return jsonb_build_object('assets',(select coalesce(jsonb_agg(to_jsonb(x)-'key' order by x.id),'[]')from(select media_row.*,(select count(*)from public.schema_entry_assets where asset_id=media_row.id) as page_count from public.schema_assets media_row where media_row.owner_id=actor and(coalesce(payload->>'after','')='' or media_row.id>(payload->>'after')::uuid) and(not coalesce((payload->>'unused')::boolean,false)or not exists(select 1 from public.schema_entry_assets where asset_id=media_row.id))order by media_row.id limit 101)x));$new$);
end;
$migration$;
