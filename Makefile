.PHONY: compile xref eunit clean doc check make

all: compile xref eunit clients

clients:
	mpidl erlang ../jubatus/src/server/classifier.idl -o src/
	mpidl erlang ../jubatus/src/server/recommender.idl -o src/
	mpidl erlang ../jubatus/src/server/regression.idl -o src/
	mpidl erlang ../jubatus/src/server/stat.idl -o src/
	mpidl erlang ../jubatus/src/server/graph.idl -o src/

# for busy typos
m: all
ma: all
mak: all
make: all

compile:
	@./rebar compile

xref:
	@./rebar xref

eunit:
	@./rebar eunit

clean:
	@./rebar clean

doc:
	@./rebar doc

check: compile
#	@echo "you need ./rebar build-plt before make check"
#	@./rebar build-plt
	@./rebar check-plt
	@./rebar dialyze

crosslang:
	@echo "do ERL_LIBS=../ before you make crosslang or fail"
	cd test && make crosslang
