# jiraclean

Reduce a jira export for better handling.

# prerequisites

## jq
```brew install jq```

# usage
Download issues from a board
https://SERVER/rest/agile/1.0/board/BOARD_ID/issue?expand=changelog&startAt=0&maxResults=1000&jql=JQL_QUERY

SERVER = your instance
BOARD_ID = your board-id
JQL_QUERY = here you can filter the data

see this docs:
https://docs.atlassian.com/jira-software/REST/7.0.4/#agile/1.0/board-getIssuesForBoard

```jiraclean issues.json```

The result is in the same folder named ```cleaned.json```.