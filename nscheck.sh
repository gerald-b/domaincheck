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
       echo -n "${domain}.de "
}

main
