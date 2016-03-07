# Google Drive as Datastore
This project aims to use a user's personal Google Drive space as a dbstore for
web and/or mobile frontend apps.

As an app developer, if you have an use case where you want to sync/store data
of each user that he/she can access across multiple apps (web, desktop, mobile),
then you can make use of the user's Google Drive space.

### Example Use case
You are making an app that keeps track of user's expenses. You have made mobile apps,
and now you also want to make a webapp dashboard.
To keep the data synced, you have to host a database server yourself - and as an indie
developer that is costly.  
It also makes sense to let each user save their data on their own storage solution
instead of on the developer's server (privacy)

## How to use
_NOTE: This is just an example project showing how to use on a webapp and on Android_

#### 1. Make a Google Drive App on Google Dev Console
Go to https://console.developers.google.com   
Make a new project (let's call it drive-sync-test)   
Enable Google Drive API on it (https://console.developers.google.com/apis/library?project=drive-sync-test)

#### 2. Enable the appropriate API keys
Go to https://console.developers.google.com/apis/credentials?project=drive-sync-test
Create a Oauth credential for **Web app**
Create an API key for **Android App**

#### 3. Put API key in Android app
In the android project edit file `app/src/main/AndroidManifest.xml`
Replace `XXXXXXXXXXXX` with your API Key.

#### 4. Put Oauth Client ID in webapp
In webapp, edit `index.html`
Replace `XXXXXXXXXXXXX` with Oauth Client ID (The secret is not needed)

## Test it out
 1. First run the webapp, and open http://localhost:8888
 2. After sigining in you'll find blank page
 3. Now run Android app, and sign in with Google Drive. This will create a file appconfig.txt in Drive
 4. Refresh the webapp, you can see the file there now.
