# Liferay Devcon 2024 Headless Talk

The demo consisted on a integration between a Github Webhook and a Liferay API Builder REST API created using [Liferay API Builder](https://learn.liferay.com/w/dxp/headless-delivery/api-builder) and [Liferay Objects](https://learn.liferay.com/w/dxp/building-applications/objects).

Here you can find the resources used:

- [Presentation slides](https://docs.google.com/presentation/d/1vn2wCP2lyxaS-LD3S8QvHRjguFyyRRzYRvrk9lV49Gg/edit?usp=sharing).
- Liferay Object files:
    - [Object Folder](data/1-object-folder.json).
    - [Github Notification data](data/2-object-definition-github-notification.json).
- API Application:
    - [API Application (using API Builder Liferay Objects)](data/3-api-application.json).
    - [API Schema - new field](data/5-api-property-sender-html-url.json).
- Data Set Manager
    - [Data Set](data/4-data-set.json)
    - [Data Set with new field in the actions](data/6-data-set.json)
- Liferay Object
    - [Results page - LAR file to import](data/DEVCON-Page.lar).

- [Script to test the integration](test.sh)

_NOTE: To allow unauthenticated requests during the talk, the Guest role needs to be updated to grant access to the GithubNotification object. Additionally, a temporary Service Access Policy is created to enable guest access to the API Builder POST method. This is a temporary solution, as security features are currently under development and it is just used for testing purposes._
_NOTE: It is necessary to set the development feature flag LPD-10964 and the beta feature flag LPS-17864_