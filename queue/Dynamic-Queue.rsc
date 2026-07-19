:local username $"user"

:if ([:len [/queue simple find name=$username]]=0) do={

/queue simple

add name=$username \
target=$address \
max-limit=5M/5M

}