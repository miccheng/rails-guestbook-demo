# Rails Guestbook Demo

## Register for a PWS account

- Visit [http://run.pivotal.io](http://run.pivotal.io) and register for a free PWS account.
- Use a mobile number (they will send you an SMS) you have not used before to claim the free trial.
- Install the `cf` CLI ([download here](https://github.com/cloudfoundry/cli#downloads)).

## Deploy to PWS

1. Login to PWS:

	```
cf login -a api.run.pivotal.io
```

2. Create the ElephanSQL Postgresql service instance:

	```
cf create-service elephantsql turtle postgres-db
```

3. Push to PWS:

	```
cf push guestbook --hostname demo-guestbook
```

	* The `cf` CLI will use the settings in `manifest.yml` to deploy the app.
	* The ElephantSQL service instance will be automatically bound to this app.

4. Migrate DB

	```
cf push guestbook -c "rake db:migrate" -i 1
cf push guestbook -c "null"
```

## References

- [PCF Developer Guide](http://docs.pivotal.io/pivotalcf/1-7/devguide/index.html)
- [Deploying with Application Manifests](http://docs.pivotal.io/pivotalcf/1-7/devguide/deploy-apps/manifest.html)
- [Managing Service Instances with the CLI
](http://docs.pivotal.io/pivotalcf/1-7/devguide/services/managing-services.html)