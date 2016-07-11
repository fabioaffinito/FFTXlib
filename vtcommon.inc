! ==============================================================
!                  Intel Trace Analyzer setup 
! ==============================================================
     integer :: vt_ierr

     common /vtclasses/ setup_class,test_class,post_class        
     integer ::         setup_class,test_class,post_class        

     common /vtstates/ &
  vt_bw_tg_cft3_scatter, vt_bw_tg_cft3_xy, vt_bw_tg_cft3_z, vt_daxpy, &
  vt_fw_tg_cft3_scatter, vt_fw_tg_cft3_xy, vt_fw_tg_cft3_z, &
  vt_pack_sticks, vt_pack_sticks_i, vt_post, vt_setup, vt_test, &
  vt_unpack_sticks, vt_unpack_sticks_i, vt_warmup
        integer :: &
  vt_bw_tg_cft3_scatter, vt_bw_tg_cft3_xy, vt_bw_tg_cft3_z, vt_daxpy, &
  vt_fw_tg_cft3_scatter, vt_fw_tg_cft3_xy, vt_fw_tg_cft3_z, &
  vt_pack_sticks, vt_pack_sticks_i, vt_post, vt_setup, vt_test, &
  vt_unpack_sticks, vt_unpack_sticks_i, vt_warmup
