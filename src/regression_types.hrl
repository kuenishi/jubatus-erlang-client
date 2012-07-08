
% This file is auto-generated from ../jubatus/src/server/regression.idl
% *** DO NOT EDIT ***


-ifndef(REGRESSION).
-define(REGRESSION, 1).

-type mp_string() :: binary().


-type param_t() :: list({mp_string(), mp_string()}).

-type string_rule() :: [
      mp_string() %  key
    | mp_string() %  t
    | mp_string() %  sample_weight
    | mp_string() %  global_weight
    ]. % 

-type filter_rule() :: [
      mp_string() %  key
    | mp_string() %  t
    | mp_string() %  suffix
    ]. % 

-type num_rule() :: [
      mp_string() %  key
    | mp_string() %  t
    ]. % 

-type converter_config() :: [
      list({mp_string(), param_t()}) %  string_filter_types
    | list(filter_rule()) %  string_filter_rules
    | list({mp_string(), param_t()}) %  num_filter_types
    | list(filter_rule()) %  num_filter_rules
    | list({mp_string(), param_t()}) %  string_types
    | list(string_rule()) %  string_rules
    | list({mp_string(), param_t()}) %  num_types
    | list(num_rule()) %  num_rules
    ]. % 

-type config_data() :: [
      mp_string() %  method
    | converter_config() %  config
    ]. % 

-type datum() :: [
      list({mp_string(), mp_string()}) %  string_values
    | list({mp_string(), float()}) %  num_values
    ]. % 


-endif.


