#!/usr/bin/lua5.3
yfl=require "yfl" 
optble={pname='part calc', pversion='0.0.1',comments='program for finding the amount of part a and b ya mneed for a epoxy pour',authors='Earl Thibeault' }
yfl.about(optble)
scltbl={minvalue= '1',  maxvalue='10' ,mark={'1:1%','5:5%','10:10%'}}
yfl.slide(scltbl)
