echo off

prompt
prompt ==========RAZ==========
@f_raz.sql

prompt
prompt ==========EXCEPTIONS==========
@f_exceptions.sql

prompt
prompt ==========BDE==========
@extraction/f_bde.sql

prompt
prompt ==========BDT==========
@transformation/f_bdt.sql

prompt
prompt ==========DW==========
@loading/f_dw.sql

prompt
prompt ==========BDE to BDT==========
@f_bde_to_bdt.sql

prompt
prompt ==========BDT to DW==========
@f_bdt_to_dw.sql
