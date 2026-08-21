# air TWRP touch fix

This tree carries the seven kernel modules missing from the factory
vendor_ramdisk but required by the stock air touchscreen drivers:

- nt36528_spi.ko
- ft8057p_spi.ko
- xiaomi_tp.ko
- lct_tp.ko
- mt6377-accdet.ko
- mtk-afe-external.ko
- scp.ko

The drivers are loaded from `recovery/root/init.recovery.mt6835.rc` in
explicit dependency order. The modules already present in
`modules.load.recovery` (`mtk_rpmsg_mbox.ko`, `mtk-mbox.ko`, and
`mtk_tinysys_ipi.ko`) are intentionally not duplicated.

The stock device tree's proprietary-files.txt already maps these touch
firmware blobs into `vendor_ramdisk/lib/firmware/`:

- novatek_ts_hkc_fw.bin
- novatek_ts_hkc_mp.bin
- novatek_ts_truly_fw.bin
- novatek_ts_truly_mp.bin
- focaltech_ts_fw_BOE.bin

This patch does not duplicate those firmware blobs.
