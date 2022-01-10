import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode plug |
        plug = jquery().getAPropertyRead("fn").getAPropertySource() and
        source = plug.getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node