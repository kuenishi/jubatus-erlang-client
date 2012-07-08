
% This file is auto-generated from ../jubatus/src/server/graph.idl
% *** DO NOT EDIT ***


-ifndef(GRAPH).
-define(GRAPH, 1).

-type mp_string() :: binary().


-type centrality_type() :: non_neg_integer().

-type node_id() :: mp_string().

-type edge_id_t() :: integer().

-type property() :: list({mp_string(), mp_string()}).

-type node_info() :: [
      property() %  p
    | list(edge_id_t()) %  in_edges
    | list(edge_id_t()) %  out_edges
    ]. % 

-type preset_query() :: [
      list({mp_string(), mp_string()}) %  edge_query
    | list({mp_string(), mp_string()}) %  node_query
    ]. % 

-type edge_info() :: [
      property() %  p
    | node_id() %  src
    | node_id() %  tgt
    ]. % 

-type shortest_path_req() :: [
      node_id() %  src
    | node_id() %  tgt
    | integer() %  max_hop
    | preset_query() %  q
    ]. % 


-endif.


