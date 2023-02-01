# protectedplanet-db
The shareable db folder for the ProtectedPlanet project. It includes:
- Migration files
- Postgres views (complex sql functions that are used to generate non-permanent tables with data required for specific pages)
- CMS seeds that are generated from the CMS database tables.


## Setup
ProtectedPlanet and protectedplanet-api are two separate applications using the same data. When cloning either for the first time you should add the
```--recurse-submodules``` flag to also clone this repo into the db directory of each project, e.g.
```
git clone git@github.com:unepwcmc/ProtectedPlanet.git --recurse-submodules
```

If you have already cloned ProtectedPlanet or protectedplanet-api without the ```--recurse-submodules``` flag, you can add the submodule by running the following in your project directory:
```
git submodule update --init --recursive
```

## Working with the submodule

- By cding into the db directory, you are essentially moving into that repo, so git commands will then act on your db branch
- If you make changes in the db/ directory (add migrations or update the CMS seeds), you can commit them in the normal way from inside the db/ directory.
- if you checkout a different db branch, this will be picked up in the project repo. Committing the db/ directory from the .e.g. ProtectedPlanet repo will commit that branch change, so your ProtectedPlanet branch will continue to point at that db branch until you change it back and commit it. 

**NOTE: Only the change of which db branch will be committed from a project branch, changes to files in the db directory will not. To commit changes to the migrations or CMS seeds you must commit and push file changes from inside the db directory**

## Updating the database schema
You can generate migrations in the normal way from the ProtectedPlanet project, e.g. ```bundle exec rails g migration my_new_migration```

## CMS seeds

The CMS seeds are used to export data from staging or production databases so they can be imported elsewhere, i.e. from staging to development environments, or from production to staging.

Changes to the CMS seed files do not automatically affect the apps, only if they are imported using the ```rake 'comfy:cms_seeds:import``` and associated rake tasks in ProtectedPlanet. This should not be done on production, but can be done on staging if the staging CMS needs to mirror the production CMS.