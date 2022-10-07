/*
This table decomposes the emissions in EmissionsAgg into different sectors and scopes

emissions_id: 
    description: unique identifier for record 
    format: <datasource>:<actor_id>:<year>
actor_id:
    description: party responsible for emissions
    format:  ISO-3166-1 alpha-2 code, i.e. the two letter code
year:
    description: year of emissions
    format: integer
emissions_scope: 
    description: The GHG Protocol Corporate Standard category for greenhouse gas emissions
    format: 1, 2, or 3
emissions_source:
    description: ??? is this different from sector ???
    format:
sector:
    description: which  sector emissions belong to
    format:
ghgs_included:
    description: which greenhouse gases included 
    format: using chemical formula (CO2, CH4, ...)
activity_description:
    description: ???
    format:
activity_value:
    description: ???
    format:
activity_unit:
    description: ???
    format:
emissions_factor:
    description: ???
    format:
emissions_value:
    description: metric tonnes of CO2 equivalent
    format: integer
reporting_boundary:
    description: ???
    format:
gwp_used: 
    description: global warming potential to compare different gases
    format: 
methodology_id:
    description: methodology used to estimate emissions
    format: <datasource>:methodology
datasource_id:
    description: Where the record came from
    format: <publisher>:<dataset_doi>:<version>
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE `EmissionsBreakdown` (
  `emissions_id` varchar(255),
  `actor_id` varchar(255),
  `year` int,
  `emissions_scope` varchar(255),
  `emissions_source` varchar(255),
  `sector` varchar(255),
  `ghgs_included` varchar(255),
  `activity_description` varchar(255),
  `activity_value` int,
  `activity_unit` varchar(255),
  `emissions_factor` int,
  `emissions_value` int,
  `reporting_boundary` varchar(255),
  `gwp_used` varchar(255),
  `methodology_id` varchar(255),
  `datasource_id` varchar(255),
  `created` timestamp,
  `last_updated` timestamp,
  PRIMARY KEY (`emissions_id`)
);
