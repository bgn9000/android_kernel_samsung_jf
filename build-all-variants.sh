echo "Build all ChronicKernel variants"
echo "Make Mrproper"
time_start_full=$(date +%s.%N)
make mrproper
./build-tmo.sh
echo "Make Mrproper"
make mrproper
./build-eur.sh
echo "Make Mrproper"
make mrproper
./build-att.sh
echo "Make Mrproper"
make mrproper
./build-vzw.sh
echo "Make Mrproper"
make mrproper
./build-spr.sh
echo "build All Branches Complete"
time_end_full=$(date +%s.%N)
echo -e "${BLDYLW}Total time elapsed: ${TCTCLR}${TXTGRN}$(echo "($time_end_full - $time_start_full) / 60"|bc ) ${TXTYLW}minutes${TXTGRN} ($(echo "$time_end_full - $time_start_full"|bc ) ${TXTYLW}seconds) ${TXTCLR}"

