-module(tc).

% -compile(export_all).

-include_lib("eunit/include/eunit.hrl").

trivial_test()->
    {ok, _Pid} = classifier_client:connect(localhost, 9199, []),
    
    Name = test,

    ok = classifier_client:set_config(Name, {<<"PA">>, [[], [], [], [], [], [], [], []]}),
    
    ok = classifier_client:close().
