!
! Copyright (C) Quantum ESPRESSO group
!
! This file is distributed under the terms of the
! GNU General Public License. See the file `License'
! in the root directory of the present distribution,
! or http://www.gnu.org/copyleft/gpl.txt .
!
! by Ariel J Biller
! simple module to enable setting up the ITAC interface. Based on the interface from PARSEC
#ifdef __ITAC
module itac_interface 

!=============================Intel TraceAnalyzer API ======================================
contains
subroutine setup_vt_interace()
      implicit none
    include 'VT.inc'
    include 'vtcommon.inc'
!define the classes of state handles
      call VTCLASSDEF( 'MAIN',    setup_class ,vt_ierr )
      call VTCLASSDEF( 'TEST',     test_class ,vt_ierr )
      call VTCLASSDEF( 'POST',     post_class ,vt_ierr )

!define basic states handles
  call VTFUNCDEF('TIMING', setup_class,vt_test,vt_ierr)
  call VTFUNCDEF('WARMUP', setup_class,vt_warmup,vt_ierr)
  call VTFUNCDEF('BW_TG_SCATTER',test_class,vt_bw_tg_cft3_scatter,vt_ierr)
  call VTFUNCDEF('BW_TG_XY',test_class,vt_bw_tg_cft3_xy,vt_ierr)
  call VTFUNCDEF('BW_TG_Z',test_class,vt_bw_tg_cft3_z,vt_ierr)
  call VTFUNCDEF('FW_TG_SCATTER',test_class,vt_fw_tg_cft3_scatter,vt_ierr)
  call VTFUNCDEF('FW_TG_XY',test_class,vt_fw_tg_cft3_xy,vt_ierr)
  call VTFUNCDEF('FW_TG_Z',test_class,vt_fw_tg_cft3_z,vt_ierr)
  call VTFUNCDEF('PACK_STICKS(i)',test_class,vt_pack_sticks_i,vt_ierr)
  call VTFUNCDEF('PACK_STICKS',test_class,vt_pack_sticks,vt_ierr)
  call VTFUNCDEF('UNPACK_STICKS(i)',test_class,vt_unpack_sticks_i,vt_ierr)
  call VTFUNCDEF('UNPACK_STICKS',test_class,vt_unpack_sticks,vt_ierr)
  call VTFUNCDEF('DAXPY',test_class,vt_daxpy,vt_ierr)
  call VTFUNCDEF('POST',post_class,vt_post,vt_ierr)
  call VTFUNCDEF('SETUP',setup_class,vt_setup,vt_ierr)

 end subroutine setup_vt_interace
 end module itac_interface
#endif
