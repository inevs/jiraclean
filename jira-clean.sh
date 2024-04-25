jq 'walk(if type == "object" then del(.author, .updateAuthor, .description,.summary,.reporter,.assignee,.creator,.comment,.project,.projectCategory,.closedSprints,.self,.issuelinks,.attachment) else . end)' $1 > temp1.json

jq 'delpaths([paths | select(.[-1] | strings | test("^customfield_"))])' temp1.json > temp2.json

jq '.issues[].fields.labels |= map(ascii_upcase)' temp2.json > temp3.json

jq '.issues[].fields.labels |= map(select(. == "GE" or . == "URGENT" or . == "RO" or . == "DEVOPS" or . == "NEXT_AZUBI"))' temp3.json > cleaned.json

rm -rf temp1.json temp2.json temp3.json