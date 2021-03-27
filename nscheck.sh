#!/bin/bash

function main()
{
for x1 in {a..z}
do
        for x2 in {a..z}
        do
                #echo -n "${x1}${x2} "
                domain=${x1}${x2}
                check
                for x3 in {a..z}
                do
                        #echo -n "${x1}${x2}${x3} "
                        domain=${x1}${x2}${x3}
                        check
                done
                for x3 in {0..9}
                do
                        #echo -n "${x1}${x2}${x3} "
                        domain=${x1}${x2}${x3}
                        check
                done
        done
        for x2 in {0..9}
        do
                #echo -n "${x1}${x2} "
                domain=${x1}${x2}
                check
                for x3 in {0..9}
                do
                        #echo -n "${x1}${x2}${x3} "
                        domain=${x1}${x2}${x3}
                        check
                done
        done
done
echo .
echo END
}

function check()
{
#       echo -n "${domain}.de "
        tgt=${domain}.de
        thostq=$(host ${tgt} | grep NXDOMAIN | wc -l)
        # echo ${thostq}
        if [ "${thostq}" -eq "1" ]; then
                echo .
                echo ${tgt}
                # echo $(whois ${tgt}| grep -i "status:" -A1)
                echo $(whois ${tgt}| grep -i "status: ")
        else
                echo -n .
        fi

}

main
