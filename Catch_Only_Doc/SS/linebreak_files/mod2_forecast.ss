#V3.24V
#C_generic_forecast_file
#_for_all_year_entries_except_rebuilder;_enter_either:_actual_year,_-999_fo
# r_styr,_0_for_endyr,_neg_number_for_rel._endyr
1 #_Benchmarks:_0=skip;_1=calc_F_spr,F_btgt,F_msy
2 #_MSY:_1=_set_to_F(SPR);_2=calc_F(MSY);_3=set_to_F(Btgt);_4=set_to_F(endy
# r)
0.5 #_SPR_target_(e.g._0.40)
0.4 #_Biomass_target_(e.g._0.40)
#_Bmark_years:_beg_bio,_end_bio,_beg_selex,_end_selex,_beg_relF,_end_relF_(
# enter_actual_year,_or_values_of_0_or_-integer_to_be_rel._endyr)
 0 0 0 0 0 0
# 2014 2014 2014 2014 2014 2014 #_after_processing
1 #Bmark_relF_Basis:_1_=_use_year_range;_2_=_set_relF_same_as_forecast_belo
# w
#
1 #_Forecast:_0=none;_1=F(SPR);_2=F(MSY)_3=F(Btgt);_4=Ave_F_(uses_first-las
# t_relF_yrs);_5=input_annual_F_scalar
16 #_N_forecast_years
1 #_F_scalar_(only_used_for_Do_Forecast==5)
#_Fcast_years:__beg_selex,_end_selex,_beg_relF,_end_relF__(enter_actual_yea
# r,_or_values_of_0_or_-integer_to_be_rel._endyr)
 0 0 0 0
# 2014 2014 2004 2014 #_after_processing
1 #_Control_rule_method_(1=catch=f(SSB)_west_coast;_2=F=f(SSB)_)
0.4 #_Control_rule_Biomass_level_for_constant_F_(as_frac_of_Bzero,_e.g._0.4
# 0);_(Must_be_>_the_no_F_level_below)
0.1 #_Control_rule_Biomass_level_for_no_F_(as_frac_of_Bzero,_e.g._0.10)
0.67 #_Control_rule_target_as_fraction_of_Flimit_(e.g._0.75)
3 #_N_forecast_loops_(1=OFL_only;_2=ABC;_3=get_F_from_forecast_ABC_catch_wi
# th_allocations_applied)
3 #_First_forecast_loop_with_stochastic_recruitment
0 #_Forecast_loop_control_#3_(reserved_for_future_bells&whistles)
0 #_Forecast_loop_control_#4_(reserved_for_future_bells&whistles)
0 #_Forecast_loop_control_#5_(reserved_for_future_bells&whistles)
2057 #FirstYear_for_caps_and_allocations_(should_be_after_years_with_fixed_
# inputs)_
0 #_stddev_of_log(realized_catch/target_catch)_in_forecast_(set_value>0.0_t
# o_cause_active_impl_error)
0 #_Do_West_Coast_gfish_rebuilder_output_(0/1)_
0 #_Rebuilder:__first_year_catch_could_have_been_set_to_zero_(Ydecl)(-1_to_
# set_to_1999)
0 #_Rebuilder:__year_for_current_age_structure_(Yinit)_(-1_to_set_to_endyea
# r+1)
1 #_fleet_relative_F:__1=use_first-last_alloc_year;_2=read_seas(row)_x_flee
# t(col)_below
#_Note_that_fleet_allocation_is_used_directly_as_average_F_if_Do_Forecast=4
# _
2 #_basis_for_fcast_catch_tuning_and_for_fcast_catch_caps_and_allocation__(
# 2=deadbio;_3=retainbio;_5=deadnum;_6=retainnum)
#_Conditional_input_if_relative_F_choice_=_2
#_Fleet_relative_F:__rows_are_seasons,_columns_are_fleets
#_Fleet: Trawl nonTrawldead nonTrawllive Rec
# 0.000799584 0.219969 0.374644 0.404588
#_max_totalcatch_by_fleet_(-1_to_have_no_max)_must_enter_value_for_each_fle
# et
-1 -1 -1 -1 -1
#_max_totalcatch_by_area_(-1_to_have_no_max);_must_enter_value_for_each_fle
# et
 -1
#_fleet_assignment_to_allocation_group_(enter_group_ID#_for_each_fleet,_0_f
# or_not_included_in_an_alloc_group)
0 0 0 0 0
#_Conditional_on_>1_allocation_group
#_allocation_fraction_for_each_of:_0_allocation_groups
#_no_allocation_groups
75 #_Number_of_forecast_catch_levels_to_input_(else_calc_catch_from_forecas
# t_F)_
2 #_code_means_to_read_fleet/time_specific_basis_(2=dead_catch;_3=retained_
# catch;_99=F)__as_below_(units_are_from_fleetunits;_note_new_codes_in_SSV3
# .20)
#_Input_fixed_catch_values
#_Year Seas Fleet Catch(or_F)_Basis
#
2015 1 1 0.010040061  
2015 1 3 50.71829  
2015 1 2 71.7856  
2015 1 4 463.0954603  
2015 1 5 13.7  
2016 1 1 0.127338542  
2016 1 3 48.1606  
2016 1 2 57.57236  
2016 1 4 417.3530767  
2016 1 5 13.7  
2017 1 1 0.004524942  
2017 1 3 59.13758  
2017 1 2 65.80688  
2017 1 4 408.569817  
2017 1 5 13.7  
2018 1 1 0.031752286  
2018 1 3 54.17205  
2018 1 2 68.60571  
2018 1 4 281.5347639  
2018 1 5 13.7  
2019 1 1 0.031801536  
2019 1 3 54.25607533  
2019 1 2 68.71212313  
2019 1 4 378.5  
2019 1 5 13.7  
2020 1 1 0.031620552  
2020 1 3 53.94730092  
2020 1 2 68.215271  
2020 1 4 375.4  
2020 1 5 13.7  
2021 1 1 0.027591428
2021 1 3 47.07327912
2021 1 2 59.52320945
2021 1 4 323.94292
2021 1 5 13.7
2022 1 1 0.02771241
2022 1 3 47.27968371
2022 1 2 59.78420388
2022 1 4 325.4234
2022 1 5 13.7
2023 1 1 0.027096447
2023 1 3 46.22880038
2023 1 2 58.45538317
2023 1 4 317.88572
2023 1 5 13.7
2024 1 1 0.026852435
2024 1 3 45.81249462
2024 1 2 57.92897295
2024 1 4 314.89968
2024 1 5 13.7
2025 1 1 0.026237714
2025 1 3 44.76373044
2025 1 2 56.60283185
2025 1 4 307.3772
2025 1 5 13.7
2026 1 1 0.025990721
2026 1 3 44.34233873
2026 1 2 56.06999055
2026 1 4 304.35468
2026 1 5 13.7
2027 1 1 0.025733418
2027 1 3 43.90335812
2027 1 2 55.51490846
2027 1 4 301.206
2027 1 5 13.7
2028 1 1 0.025105034
2028 1 3 42.83128336
2028 1 2 54.1592916
2028 1 4 293.51632
2028 1 5 13.7
2029 1 1 0.024856426
2029 1 3 42.40713676
2029 1 2 53.62296681
2029 1 4 290.47404
2029 1 5 13.7
#
999 #_verify_end_of_input
