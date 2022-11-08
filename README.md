# OpenClimate Schema 1.0

This is the Schema for the OpenClimate 1.0 database. It's used by [OpenClimate](https://openclimate.network/) to store information about climate-related actors in both the public and private sector, their
actions and targets, and their relationships to one another.

The schema supports importing data sets from existing sources. It also
supports self-reported data in the OpenClimate interface.

# License

- Copyright 2022 Open Earth Foundation <https://openearth.org>
- Copyright 2022 Data Driven Envirolab <https://datadrivenlab.org/>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Source code

The [data-definition language](https://en.wikipedia.org/wiki/Data_definition_language) SQL source code is available in the `SQL` directory. There is one .sql file per table.

Open Earth Foundation (OEF) uses [PostgreSQL](https://postgresql.org/) for
hosting the database directly. Consequently, these SQL files use a
PostgreSQL-inflected dialect of SQL. They should probably work with
other relational database management systems, but might require some tuning.

The .sql files are functional, but their primary use is for documenting
the database structure.

The scripts are not [idempotent](https://en.wikipedia.org/wiki/Idempotence).
If you run `Actor.sql` a second time without dropping the table or
database, you will probably get an error.

Changes to the tables are made directly to each file; this makes them
useful for creating a new database, but bad for updating or altering
an existing database. OEF uses [db-migrate](https://db-migrate.readthedocs.io/) to manage changes to the OpenClimate database directly.

Note that some tables have dependencies on each other because of
foreign key definitions. The `tables.txt` file lists the tables in
dependency order, so this command should work for setting up a new
database:

```bash
for t in `<tables.txt`; do psql -f SQL/$t.sql; done
```

You may need to provide hostname, username, password, and database
parameters to `psql` to get this work correctly!

# Entity-relationship diagram

The following entity-relationship diagram (ERD) shows how the tables are structured and how they interact from a high level. See [Table details](#table-details) for more information about each table.

![Entity-relationship diagram for OpenClimate](OpenClimateSchema.svg "Entity-relationship diagram for OpenClimate")

# Design principles

The schema follows a few design principles.

- `Singular table names`. "Actor" not "Actors", "Publisher" not "Publishers".
- `Externally-determined IDs`. Identities for rows are not randomly-generated,
incremental, or otherwise opaque. For most tables, it's possible to update
information from a datasource without querying the database directly, just
by using the same ID.
- `Data sources noted`. Most rows in tables include a `datasource_id` that
provides information about the provenance of the data.
- `Timestamped`. Most rows in table include a `created` and `last_updated`
timestamp column. These mark when the data was imported or updated in the
database, which helps with synchronisation and delivery over the Web. Publication date can be found in the `published` column of the related `DataSource` row.
- `Units translated at import time`. Upstream data sets may have varying units
for currency, emissions, land area, population. This database schema expects
those units to be converted at import time, not when extracting or comparing
data rows. This makes it easier to use the same database for multiple uses,
but it does require more work on the part of importers.
- `Generality`. We've erred on the side of generality in the design of the schema. Tables have columns that are relevant for all types of
actors. When we need to include information that's specific for particular
kinds of actors, we use the [Tag](#tag) subsystem to tag rows in tables with
extra information.

# Table details

These categories of table are marked in the ERD with different colours. They're not functionally important; all the tables are part of the same schema and database.

Undocumented tables in the `SQL` subdirectory that aren't listed here are actively used and haven't been fully tested. Don't use them.

Undocumented columns in tables named below that aren't called out aren't actively used and shouldn't be used by you.

The column descriptions below are descriptive; refer to the [ERD](#entity-relationship-diagram) for data types and keys.

## Actors

One of the big advantages of the OpenClimate schema is that actors in the climate change world are treated uniformly, regardless of their size or whether they are public or private.

### Actor

An Actor is an entity that is responsible for CO2 emissions in some way. Actors include countries; sub-national regions like states and provinces; cities; private entities like corporations; and sites owned by public or private actors, like mines, farms, factories, and office buildings.

OpenClimate does not track individual human beings as Actors.

- `actor_id`: a unique identifier for an Actor. We use different vocabularies
for different types of Actor, but they are all distinct and shouldn't conflict. See [ActorIdentifier](#actoridentifier) for mapping other
identifier namespaces onto this domain.
    - For countries, we use the [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code. For example, Canada is `CA`.
    - For sub-national regions like states and provinces, we use the [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) code, including a
    dash ("-") between the country part and the region part. For example,
    `US-NC` is North Carolina, USA.
    - For cities, we use the [UN/LOCODE](https://en.wikipedia.org/wiki/UN/LOCODE), with a space (" ") between the country part and the LOCODE. For example, `ZM LUN` is Lusaka, Zambia.
    - For private entities, we use [LEI](https://en.wikipedia.org/wiki/Legal_Entity_Identifier). For example, the `actor_id` for Ford Motor
    Company is `20S05OYHG0MQM4VUIC57`.
    - For sites owned by other Actors, we use a namespaced version of the
    most relevant national identifier for that site, typically by an environmental regulator or tax agency. For example, a factory in
    Canada tracked by the Environment and Climate Change Canada (ECCC) has
    actor_id `CA:ECCC:10001`.
- "type"
- "name"
- "icon"
- "is_part_of"
- "is_owned_by"
- "datasource_id"
- "created"
- "last_updated"

### ActorIdentifier

"actor_id" varchar(255),
  "identifier" varchar(255),
  "namespace" varchar(255),
  "datasource_id" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,

### ActorName

  "actor_id" varchar(255),
  "name" varchar(255),
  "language" varchar(255),
  "preferred" boolean,
  "datasource_id" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,

## Public-sector actor

(TBD)

### Territory

"actor_id" varchar(255), /* Actor this territory represents */
  "area" bigint, /* Area in km^2 */
  "lat" int, /* Latitude of centroid or major landmark times 10000; 407494 => latitude 40.7494 */
  "lng" int, /* Longitude of centroid or major landmark times 10000; -739674 => longitude -73.9674 */
  "admin_bound" text, /* Geojson of boundary */
  "created" timestamp,
  "last_updated" timestamp,
  "datasource_id" varchar(255),

### Population

"actor_id" varchar(255), /* Actor ID of territory */
  "population" bigint, /* Population in units; 1000 => 1000 people */
  "year" int, /* Year of measurement, YYYY */
  "created" timestamp,
  "last_updated" timestamp,
  "datasource_id" varchar(255),

### GDP

(TBD)

## Metadata

(TBD)

### DataSource

(TBD)

### Publisher

(TBD)

### Tag

(TBD)

### DataSourceTag

(TBD)

## Emissions

(TBD)

## Targets

(TBD)

# Contributions

(TBD)

# Contact

(TBD)