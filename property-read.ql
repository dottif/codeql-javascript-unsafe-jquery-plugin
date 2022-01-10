import javascript

from DataFlow::Node dollarArg
where dollarArg = jquery().getAPropertyRead("fn")
select dollarArg
