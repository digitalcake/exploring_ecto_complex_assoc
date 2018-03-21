# Exploring Ecto's Complex Associations

The point of this project is to explore the best way to extract a common set of fields
from a complex set of schemas.

Ideally I will be able to create a record for any of the Complex schemas and have created a Abstract
record that abstracts our "common fields" for that given Complex schema and have created a relation between the two records that allow for me to be able to query across all the complex schemas without building large and difficult to manage a `UNION` query to get all the common fields for our different complex schemas (IE just look up the Abstract table).

Issues I'd like to avoid:
* Having to create large manifests of belongs to per N number of columns for N number of Complex schemas my system may end up with.
* Having to create and manage a large complex `UION` query to look over all of the Complex schemas to get an aggregation of all the complex schemas. (ie looking up counts for all complex schemas ect.)
* Coupling logic of the abstract layer to the complex layer. Say one complex schema has a wildly different need then that of another complex schema. I don't want that concern to bleed into the abstract layer
