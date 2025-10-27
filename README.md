Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt build


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


### Study notes
To run dbt commands with your .env file, use:
`set -a && source .env && set +a && dbt debug --profiles-dir .`