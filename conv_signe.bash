#!/bin/bash

if (("$jourt">"109"))&&(("$jourt"<"135"));
then	signe="Bélier"
elif (("$jourt">"134"))&&(("$jourt"<"173"));
then	signe="Taureau"
elif (("$jourt">"172"))&&(("$jourt"<"202"));
then	signe="Gémeaux"
elif (("$jourt">"201"))&&(("$jourt"<"222"));
then	signe="Cancer"
elif (("$jourt">"221"))&&(("$jourt"<"259"));
then	signe="Lion"
elif (("$jourt">"258"))&&(("$jourt"<"304"));
then	signe="Vierge"
elif (("$jourt">"303"))&&(("$jourt"<"327"));
then	signe="Banlance"
elif (("$jourt">"326"))&&(("$jourt"<"332"));
then	signe="Scorpion"
elif (("$jourt">"331"))&&(("$jourt"<"353"));
then	signe="Serpentaire"
elif (("$jourt">"352"))&&(("$jourt"<"365"));
then	signe="Sagitaire"
elif (("$jourt">"0")) && (("$jourt"<"21"));
then	signe="Sagitaire"
elif (("$jourt">"20")) && (("$jourt"<"48"));
then	signe="Capricorne"
elif (("$jourt">"47")) && (("$jourt"<"77"));
then 	signe="Bélier"
elif (("$jourt">"76")) && (("$jourt"<"109"));
then signe="Poisson"
fi


