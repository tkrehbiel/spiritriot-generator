This small Node.js program enumerates all of the static json pages created by a Hugo build of the site, and builds a DynamoDB table for easy searching and indexing of page metadata.

It expects the following environment variables as inputs:

- CONTENT_DIRECTORY
    - The directory where the content files are located.
- EGV_RESOURCE_STATE_TABLE
    - The name of a Dynamo table in which to store rows. Don't ask why it's named that.

AWS credentials are expected in the usual places.

