#!/bin/bash

for x1 in {a..z}
do
	for x2 in {a..z}
	do
		for x3 in {a..z}
		do
			tgt=${x1}${x2}${x3}.de
			#echo ${tgt}
			thostq=$(host ${tgt} | grep NXDOMAIN | wc -l)
			# echo ${thostq}
			if [ "${thostq}" -eq "1" ]; then
				echo ${tgt}
			fi
		done
	done
done
echo END
