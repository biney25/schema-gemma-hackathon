-- Qualify the outer object name: an unqualified name resolves to a.name
-- inside the asset subquery, preventing every legitimate owner download.
alter policy schema_media_read on storage.objects
to authenticated
using (
  bucket_id = 'schema-media'
  and (select schema_private.active_owner())
  and exists (
    select 1 from public.schema_assets a
    where a.key = storage.objects.name
      and a.owner_id = (select auth.uid())
      and a.state = 'ready'
  )
);
