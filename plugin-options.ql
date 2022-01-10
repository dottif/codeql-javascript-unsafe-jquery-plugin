import javascript

from DataFlow::ParameterNode lastPar, DataFlow::FunctionNode plug 
where plug = jquery().getAPropertyRead("fn").getAPropertySource() and
    lastPar = plug.getLastParameter()
select plug, lastPar
