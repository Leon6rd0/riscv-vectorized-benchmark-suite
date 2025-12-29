#!/bin/sh
echo "starting axpy tiny"
./_axpy/bin/axpy_vector.exe 256
echo "starting canneal tiny"
./_canneal/bin/canneal_vector.exe 1 100 300 ./_canneal/input/100.nets 8
echo "starting blackscholes tiny"
./_blackscholes/bin/blackscholes_vector.exe 1 ./_blackscholes/input/in_4K.input ./_blackscholes/output/output_prices_vector_small.txt
echo "starting jacobi-2d tiny"
./_jacobi-2d/bin/jacobi-2d_vector.exe 32 2 ./_jacobi-2d/output/output_vector_tiny.txt
echo "starting lavaMD tiny"
./_lavaMD/bin/lavaMD_vector.exe -cores 1 -boxes1d 1 -outputFile ./_lavaMD/output/output_vector_tiny.txt
echo "starting matmul tiny"
./_matmul/bin/matmul_vector.exe ./_matmul/input/data_64.in
echo "starting particlefilter tiny"
./_particlefilter/bin/particlefilter_vector.exe -x 128 -y 128 -z 2 -np 256
echo "starting pathfinder tiny"
./_pathfinder/bin/pathfinder_vector.exe ./_pathfinder/input/data_tiny.in
echo "starting somier tiny"
./_somier/bin/somier_vector.exe 2 64
echo "starting spmv tiny"
./_spmv/bin/spmv_vector.exe ./_spmv/input/football.mtx ./_spmv/input/football.verif
echo "starting streamcluster tiny"
./_streamcluster/bin/streamcluster_vector.exe 3 10 128 128 128 10 none ./_streamcluster/output/output_vector_tiny.txt 1
echo "starting swaption tiny"
./_swaptions/bin/swaptions_vector.exe -ns 8 -sm 512 -nt 1
