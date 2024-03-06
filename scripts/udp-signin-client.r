REBOL [
    Title: "UDP Signin Client Alarm"
    date: 3-Aug-2010
    file: %udp-signin-client.r
    author:  Nick Antonaccio
    purpose: {
        Together with %udp-signin-server.r this program alerts users on a network
        that a new user has arrived and logged in.  Client users are only notified
        when the new user has signed in specificly to see them.  Because this script
        uses UDP, the client alarm application does not need to connect to any
        specific IP.  Anyone who runs the client on the local network will automatically
        receive notifications broadcast over the network.
        These scripts are simplified parts of a larger sign-in application that is used
        at my music lesson business.  When students arrive, they sign in at a front
        desk kiosk machine.  Student attendance information is logged, and the
        teachers get a voice announcement, in their studio, that their "next student
        has arrived" (they are only notified when one of their own students has arrived).
    }
]
if error? try [net-in: open udp://:9905] [
    alert {
        This program is already running.  If you want to start a new
        instance, please close the currently open program.  If you have
        any problems, close "rebol" in the task manager or just restart
        your computer.
    }
    quit
]
svv/vid-face/color: white
name: request-list "Your name:" [
    "Alex" "Brian" "Chad" "Chris" "David" "Dorian" "Doug" "Emerald"
    "Jarrod" "Josh" "Kevin" "Kyle" "Lindsey" "Mark" "Nick" "Peter"
    "Ryan" "Stef" "Steve"
]
previous-signin: []
attempt [
    insert s: open sound:// load %/c/windows/media/ding.wav
    wait s close s
]
gui: view/new center-face layout [
    a1: area 600x400 wrap rejoin [name ", you are logged in (waiting...)"]
    across
    btn "Save History" [
        write request-file/only/save/file (to-file now/date) a1/text
    ]
    btn "Quit" [quit]
    ; at 0x0 key #"^M" [if a1/text = "" [return]]
]
arrive-sound: load to-binary decompress 64#{
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
cIvIbAjFunthw0FaJXoGQLaNDCRj0Vh3/8j4xOhgMhoGsxrsvXjAZWlvhxuGY7Gw
197ZCq4x+CsOW2cbbFITkMKKRilHcGzs3dqAOn5w/nr6BofHJmD9CweXDx05fvrc
hUuXL1+6eOH8ubNwnTl1/PDBmeHuoMuKy2+oqy4vKcjN3r939/atW7Zs275z9549
e3bv2rV7b1ZuYUl5ZU1DS5fTF0n0AgsDn/YOjM4snzh38fyJpfHeaCiaHJqYmhhK
+J02m9Pr97u6GioK8wtKKmrqwRmrAK3DLn5rp83pwu3qtDgD8X5YN7Dj+OTM/ML8
LPiiUzMLBw8uTI/0JWLxZP/QyHB/d8hjxyXBV1rqqysqqhvbbW6v19nVXFdVVdPY
ZgHD2gI820bcF8WQCUc90MeCe4xMzh1cXl45dPjosZOnz547f+HC+fP4n7OnThw9
tDA9PoqPcHc1VRVm7929e09Gxu6d2za99eqLL722cXvG/qz9GTvffXdXZkFFPaqD
DpsvPji1sLK6emhlaXFhbm5h6cipC5cvnTk8MxD1+5AFEiFHa21FWXlVTW1VWUHO
voyMfVkH8otK0CEA1VtZ22zxRnv6+3vikXCsZ3gK1gtu+OzBI6fOnT91eH5scHBk
amFpcao/aGttbrN6I7GI19JYWVpaWdfS3tZUXZybk1tc2+6Cw+BzgMDqcngCwYAX
jq/TEwBPDG23ZO/AMBB2eAAka9/QxNwSrP74iVNnL167fffenZvXLp09eXR1+eDi
/OwkHISws72+ErY+KzNj59a3X3/5heeefebZ519+c8vOfVngCYIfmF1QVt0AfOfw
RvrG51eOnbl49erlcycOLc4vHjp16fr1C6ujYVt7pzOU7O8NW2sLMjP2ZecX5Gft
3rZp09ZdmblFuPjK6tqGZjy6vtjAxCzFHmYXVo6eOHni6OFDK6tHjx07vATnsr9/
CM5CT9DaWFFcXF4DQqeptrwwN+dAfnF5VTW69aXlNc0WdyiWiKNE8YfjPShQQIpE
8EShOwC6Z3RianpqAnlram7pyIkzwPDnL127eefe/Qfv37567vihxZnJsZGh3oi7
raYYlp65f39mxvaNrz339I+ffPLv//HFN7fszoTFZ2blFlXUwTGD4+XwJ4ZnV46e
vnT91i24w8rBxZXj569cObs86G2tqWns8oQjfktd4f49uzP2Ze7duWXD66+9uWlX
VmF5DUa2YOkWuzsQ7xudnof9OHLs+KkzZ8+dPXP69BlgyvOnjy5O9HcngOeHB7r9
XXUl+XkFxWDFlhZk79uzB49gMToBxaUVdS0WdxA0XYxUC0j6PlQbZMOynu8fGp3E
EBlYAbPzS4dPnDl/6eqNmzdu3Lx99+7tG1cunD5ycGZsqC8RcnXUlwOH7tmTsW8f
nPpNbzz/9E9/9swrG7fvzcral7E3q7C6ze5yg3Xi9MWGZlaOnTxz4fK1a1cunDq6
evj42ctXLhybillqS0sqGtq6OpqrinKQV/bt3bX1rZefe+aZ5195+93Mgsr6JtQm
LcAcvaPTc2CszR88fOriVbjN2dNnLly7c//B3cvH54Z7unsHR0b6o87mioK8gtLq
hsba8ry927ds2Z6RnV9UmJ+zf39OYU27OwLeA1oKaIV1J+CHWJIEPVh/JEYWQcYv
HVxaOXwcl3391p07t+/Asq9fOnfq6PLc5Ehf1N1RV5afk5mxa8c2kHNbtm7bsvG1
F5559sU3Nu/afyAnc8/uzMLaTm8UA+A9A2PzR85eufXeBx99cPfauRPHTl649eHn
n9w5OR5oq4GT3NnVWlu0f9eOXXv3Z2Xu3vL6cz/7yU/+4R+ffenNrXtBYDSBPd7Q
3OVNjMwsHlyYm104dPLSjds3r5w7dfLMxZvvPbh39eTCaB+c1aGhnqClBk5NZl5Z
bX1t2YHdm996a9OunOLy8qLsjF17cirafd0DAz0R1DjBeLInEfF7vcHE4OT80jIY
wUursBvXrl+7cvH8+Us33vvosy8+//SDu7DkMyePH1meG+sJWOrgNbdt2bxp06Z3
Nm548/VXX3rh+Rdeeu2td7Zu37l927Yde/MqGjsdHtBJvaPzRy/ceO/Dz3759a8+
f3Dj/KnTl+59/pvf/vL901MxZxcoWI+9pSJn17at2/fsz87eu+2N53761A/gwLy0
4d19OfkFhUUg8Zu73KHuAYyYTc0tHz117uKlSxcvXbl+5/0H9+9cOXVoHo1TUBXe
rsbqqpqG1raWurIDe7a+885mELg52SBxt2/fk1Pa0On0eF3W9lY4OA4Pe+UhWPPi
4eOnz56/cPEynub3H3z06edf/vLr3/zm668+fXDn6vkTq4vTo70ha13h3q1wAF9/
c8OGN1998Zmn/+GnP/v586+8+fbGt9968613tu8vrm3ptNpAmfeML5++eufBx59/
9auvf/XlJx8++OCTr37zz//89YdXj0z1g4wO+eGYlOVnZ2UfyM/Pzdy+4fmf/vBv
//aHP3nm1Y3v7tqTsTczO7+kqgHUmsMF8hcEOp3u46fOXb5x9/3779+5fvk8qNoT
hxcn+sJum9XuCYRDXmtTZSFw9P4sWO2OLe+8s2Xn/sKK2vq6msoyEJVocmAI3OoO
9wxPHzxy+uL1O/c/+vSzz7/44stf/urX//Tb3/3T1199/vGDuzcunT48NxR1NJXn
Ze7atmnjhrdwa5/7x5/++Mc/efrZF1959ZUXn0PO3pJxoLiytqnDGR6YPXrx1v2P
Pv7w/ds3rt18//Pf/fv//J///rvP7l1Fo+Dk6uxA2GVFG8Xt6Kgt2vfuxrfeeOON
N998c8Pbm7Zse5euHXv255VU1tY3tXTY3AGQQ3HwoQcmFo+dvXTl8gUQaGdOnzyy
ODmYBFk2Nru4tDA5EPM5MGzWWFOau2/Xzoyc4pqm1pb68vz9GRn7c4srMI5R19Tl
75lcPnH24uUrV2/cefDJF19++dlH99+7e/fee+/dvX7uyPxYf3c0HPDY2+pKc/cC
zTZufGfz5s2bNr71+muvvo77+uYrLz7/wqvv7Cmo7XSBIgYNCKbf/MHV42cuXrl2
7TKo/UvXbgML3rtx6cyJY0ePHl1dGO/xW5pq4eGt4E60N9dVFOVm7d29c/u723fs
RLsnr6QKTnFDdVlhXn5xVVMnGDbBSPfgxPzy8uLUYCIcivaOzi2tLC/OTk/PLq6s
rsyPdnu7Wlu73OFkb3fY3dXcAEaT3eW0tjXU1jVb/cmRyenJ8dGxydmlw8dPnjy2
CiYpnOD5qVFcHRjE0UjAbW2rrygGxx281NzszIw9e/fnFpWVleRnZezalZFdVNXY
2tGF3AaWfhTMz/HJqYmRgZ5k79A4WFFzYNGMzywfP3vh3PHFkbjPSXYzuMMBjNN2
J8LuDrg7uLto3FZU17d0dHW1g4YF1VJWVddICtoTiMTi0aDP40Hl2k+BkaGR8cnJ
8eH+ZDze3Q8qDEyH4d5EDDMMII7APnd6I8nB0TGwpqIhzDx0J8HEDwZDYMWCgkrG
gmiicPGBjfNKYMR2tbc2N5N13cUxgXZyK8CnwdcIwgtzEozenRJi5Cn094H17UBG
9QbAgHdYOzs6rQ43uQSdHeiSuJ02MJWbWzvAP7Rbu9rb0VFxUQDX5gpE6RYxdE4C
HNoKRhJ9IxPTIJdGBtEkp+RWN2ZPMPIz2I/v78TIMjwxzBHIGFj4Tkt7Cz3FwWkN
DDK7XfaudnDcO+1ufwiziG5KY6Fbi1Y/mWgYTvaSq0bxI0w6wOoiQa8bAx8BzoBQ
1gDj9OCcUjyEg7oYbPK67BbyJjCO5OQMCnwITgGQrsMC9AUaO9DV8LrBOlZ+mpfy
kXhm8a7wtr4gxp5iHAYHZzDkh7dFxuLED6WxI7QGj9cfkjAzvV2YXgsfwWFmTNvC
Yni9HvLC4FOOMYfJoZfSEs7x4u85JedSmSLOs6koNgboKC5Lud+QrlOQ6Db9RTCg
UsGpGTdOl7p1fI0Ww24+Vy6o7JTkpoQnVXSQyiw4sCmpaSYIh82NcCYHPGISo/Qa
a1NxdxcnHyRLoV6YosuqLMOIPutyFlMIX0Wh6aYpdT5cxcHhXV0rIrkSyTaBI45L
VqkllbhTGXkVj1QFCA7JT7h1rIuycKa6qVBKnFwRmdPFOk3MxKV8gylirmt7aKvU
B7RlRgFVWtrVKOuSfGDMXGpkyq9JtZEmoUSodfGKLm7i3dSVAEY9VZhDsHxL446K
3BLb1VFvHd92GR9IsNubkisw9pn32lwKt6Z+SbLEJiKb/laRx7wila43lcipcLtx
WkwFT+k1FYq6ISFfIKDLR9YWVKn6rNRat/S7m2vrdIVaYN1it9Qjq5ebxlzCUarE
Q1UgMT+n3EiFruWZJtqZeDalEC31Si0WM3NHyvJSLnMCKXUZfv1AE08LwQL6j1OK
94zXS71MRFin+FCzmFk8KA7QadK0eykGNm1nynkImTcyhSNTWddU1WTeDH2izaxu
4mpz0aIuFEwVgmqfUgv50l81sM6l38zg2TX7bdQ4BtI2wfTvtDumMG3qUs2fpl2m
wroUUuidUmfba2xr2q3Xec+gaMb0UlB+UiDlvga/r1cW6dWvaJZIKZzsTz+rftPq
U3c5nSwpdPBzGfF6wsD8LmZWWcM55uNl2qSUm2qlY6Zoymuab5a61/J6Zjb0przg
oy//+pfmR60u3Jq5vap4hqoplLFiMjVS1qzuRd8RkeEzWxamLRYrS9d8yYlh62XN
4aH39Ho97nV5RZbnS3mEWeyaj4uxDx63srQCKq8opQXycgGfKuNIJZiqIyKNJhLU
YE+flLCFVaGxFCiwcgtIhYOug5DKJbZL9Ir8xqfM42xkgQuGRjA+Gf0m2YcAqkk2
g31s7xoUNsoRlaFHf4gPUOIHq4sUhaViBW8ZgGWiE8BnF+9C2tuvbETeMVU96qdk
odeHr0hJPC8VcwTlJ7TOI+hkgSdG9wYT1ukBfwPMQPqUUiOpT8H/8ZJtT/Uf6KHw
XXlH4R9+/gq4WWzNw20VDehWvgCa97Bgp91BD/B71W7BZw54AfjI7QDLGv2HSMjn
pvcLk6cAe+xBDwScEXwE7id/H12saNDDOR9M0VD6JxxPRPxuJ3tIEVyVE4MpSFiw
amGpYdg5SjyRdwFPgjcKiMzx4kNDXpebC2DwD+BLbnmUy9Jl90YSSXDzMP7B8dWg
29rZ5Qh29/eE8EOXH3mDMlHgF0djkYDHYXP6wrFoCHxRqxPfLxbyOu12lw+XCi9g
s7sCsWR32GO3wofhWCzih1+7gzEsWAPSO+1OzFmE/R7ymPj0eOWUIe39wq/ogMAN
YQ+DwuFIFHj7IEoLoITNCu/f3ZMIOjrbLfDQ7kQ04LJZLA5vmFZi6+y0eaPoTsJb
W63wcXdvMup3Wi1WVyjZ1x10Wq12N1IbHDuXze4JwQJUxRDyPu41sQwytw8oEfTg
SqJwPyC4H/bVCS+QCHusnRiexsoWeEMMHUeSvcmIx9rebvUnB4d6Ih5bF+YAenvj
fmtbmxVfkN7QSvmbkNctLiVKDaGj3eEJxrsTIQ94Lg7KciTCro6WDlck2RMPetBF
c+OeRGHLuhx++F8fZh9hJXbMigBfBTwYOg1TvRquz03cwguEzQ67rTZvJB4NwDJg
84A3fT6PC3kqgnVyWEvmDUTiMcxFOXxRoCKeRJIDLrc/HA647VQRhwc0gGeEDgzb
sXjA4Re0neglw1f9yL4+OvoBfFN4HByDoMcF7xrmyECAsp/E0i4iCNwLyeyEN4eT
wbWxEeBH2EJnMNENr47pYacvSpEnqwX5GT6F3bZgHLE3Dn/goqMb6U6GnR0dNi9G
aeIBBzC5LxKngA9mkQLxnkQI6GhFPo2H/S67Ddk0Eva54KFER0UUlB2BEAgdN/zX
w+ImDsTBJ+GOROENfA4L7Da4o7CTDnwVah+JuNpbLRjUTvjsFozjhJN9Cb8di3Sc
weRAb8jR0dbphE2Ph9w2i80BRI4n4iGPtcPiicExBYpb2jo9ib5k2IcZCmCQaDwK
93L4QwGPNxSPeO0YQELhxwWqQEqfG14dWIG3BKVbAKUbbwrINRR2XtIHPlJI6Ctj
jAQPGKzIT7+FlcLW+EggcnwB5Tfwajiq9hREEp0Z+leQjm2AGAAT47SZzFJulk/w
Sw/KKqmwQgELX0dmCQADOwMxEHtIzSAqO+Bg5qkwhp+sVlcgnkxGvDagmxf4AZSX
y4KZuG5MErjweKMwiPicWOMajMTiER/yNZVtRlCagdyKEMvhGvEWQCD2zmElcFRs
DjjtITpPwN0k4kEAwBnxohgIB1AUwxJdxCHwlgFKUsDLEck46ELCDEmO64e3QOGN
6gmOHkpMfh8l/UjieyVoRieKdgi2FdVFgC0dH9lA+Ev4LylYCW64SWWJ5wU6B14E
zhGcJk8AuZb3FTUMSC62d1Auh1gXEdnRUHOK1HCj3qEgHZxwBzI+ylukmgcPR4gV
awBYz4+ixs0vypoPHxH0Ass7UVxiUYSLbApUIkAvH2lmig7CoRGjwxtEHehlxcmy
GP6SFoQKlQpYA7hKHx07IGCIJVskDPzuDcMLgTxF0W9z8ekFHcUKBx4KWsgX7+2J
+jAE5PDFe7pDoDhgWayOYS0e1MawtbZOa7CnN+wEmUyCDJ/mdHjCKJ69PpDVrkhP
T8xr7bQH4omwl9orPHSCQqyzSMtK7FNMRNhTrEqIhdmGIJMlhDKF9pTYw81WCvC2
z95lBQEGesHu8AZBoHhCIEs8Xa2dcPy7o2gGoO6OxlAqeZEF/CDF8RgFicUdWGcL
3/dZOl1RkIcgYCIoNj2R7pjP7vDBMYHlxIBzXSzmw8hFonbDVE0OVAUl76cTGPPb
bb4YKCDgVTb68AQTB6KUhj1wcYEGWgTR7rgfnhQi2eNjW8xFhhAyKn0XGBO2D2wi
+DEYAa0CsirMRz4A//DGuqNe3A18Ex+dQzps8DKgJDGYDyt2uvyokZhzMfqKvwbF
RszmtNpcAXg+HDawaGxuZH541WAQ2MQPy3HAosIeG1g6YFR5ne5gOAB0hP31k93q
8YXY7uLzxFYwnig/7pmbKwVlQQHhTtxVeFW/hwxqPAiouuAbwhJ4GPEUoEDFb7JW
4xPsZV2IJEG1jdY5Jh/w1LjRKuGDi3/LAht/TRYTyQl2lUgksEwOqAJoUcDElRKV
Fp+DzBoQdS42i/l80duSaveLE8yf+uilWOOjeRyQEBnZGPwmtAQ2mdlXI0OWWUV5
h+I4iPdGN1TBYq/yK2iZHr4xc4uXHytGtbhWfsNS9IpnAK+hHXYVRfZ6VXjex49h
L0oqefmRXu22iKfBvoqPqB00PuQeECO+re4lPxsBBHVf9QC5QyDI/otPLd/4vc9Y
vg4CKB/Iz+tMdaeVi65e3O/zmr5o/LXPcBtVaN74VsBwplPW7jN/xK6SP+UlU95W
Uc6jaESCQdFQOW4p72owg3q6pAX8a9nBWI36izUrTHGNfWkf+1J+8q/5wffw+6Td
L2UD0rYj5eGpj1nzWuprsl7zh+stIG0FqTd62MqMVAqzT+p99Cub3tb89XS6rLNo
81fWvoOs23zDFMqmP8tEqVTCrX2H9d7nYbu4lmbmJ6pd84uwW7uUR7DKej+t+5dr
vqOX5/et+621S/DzX/tS77f2/VIXt4YpUz5bw9YpzzIRdj2pov8khWTp9Palf7hm
d32pP6e/xzrXWnqvuYs+uenfSVlM6hpSlmCm4MOEaTrV1t2HNURMI8g6r7V27b6H
ffiYLGrilNTAvS/9wr8yR+rXxu39pt/J41TEcy1cgfnh9KM5c6ACqOu/gtJGXp/W
1D7jHhIuDqxL2NS3N4K7qVT2+c3ahYKI6onqM6WGNMl8PlP810sRWp1F96q35W/5
Jfsvhoy8gZ9dAi934RnYEEwmDh16jVi2/MKsJHyK9mRWY6CELKSgBoNQdhU7yGR3
u9iI8UqQ2ce9lmS1Ul0FOf0+jiri+6OL6mQ/E9twwa9Fp5CKJaStCoMBZMOq6gOs
S8cAAL4Hundkn3OXoZRLcMchRm0ppGVUOXAoXkxBv99IT6KdhDX5DurlNdcScMWC
w0MhIlWB4fepkvswulH42uRJslPpx8hqgAO9Aer5k6KUUEgFhAMSjUdXW+oqKGjC
BfxE9mBIpRKCEsbnmo2w9LJwoUZIEohYIRKQzcQoZchvNrt0hoiLZigw7zbS2Jyk
5CQEr5zpwcUbVAvIGX6ygD0u3hy2rgWPgjLI5InArfXum5tG/T7VIk/vHJH+FSr8
6aEepm5p8cWOIioHSnK/hGQbuAGLn+XW6Wnu0eB+crioW1+QQajpXKGucOeMKorx
SbJGbqyKHhSmSjSme0k0qgS3Gwon+RR53LJ4FxdlELAGl2foAghNVeR5r5Y6Ehan
1i/uwE12S+8pQ5NIC6808EprIFU1SR4EzoudK0qYBl3U/0YNoJ3czIxtK3RhuwI3
MmNJltXmMAAgpNaGqIGvQk/BSmeuuoqpNmA+VfRj0BAYKoPFyxW8EqrxsXOnkFfJ
vDAXy3CXG7YE9UmzG/YHMSgLdY1S5yjue1CdDC66wJbELtnaLtXRxngbLa3Uz9ZO
DW5t1LhlVY3bLuFhf1AVD1CZVUxj0VDNjWJGows/qFO7vNNSFIGkFpozdgg/wU2J
JWlG5X4s1dyITVkjwykd9Nyyx/1QnHykrbRqtBtZWjOhM3BnkHFhX0Sn6oCyEfqA
bsiSnUI6JwT9JQ03SHpxwyFdBeFVRS1OhRsgEBfU4qROj0tVd1GzE0HpqK53bk3k
ZlLq3R/GxkA4xdJlHqGIhItacoyOOwRJwQbKWgFHaSYcAbjqG1vaO6WHU84vxalI
ZMRkfUzlXtVqLF3bwjwJ5uFwWLrbVKEgMabu/QM+sdodglDBC/QRfgiW+FOHGLd0
YU8fAYlQ8+4gNbuNDg1gMxc30GOoHWP5jKfTzmA6zbQ+6lunRpzmlpam+prqSuxQ
b26jzkuCZrHaqIHehdG1eIL60MLUdJ2UY9Kr1mVgFcUR60NOFOOmoGyhEyJIG4gz
AGyCC6ROXovd6ZYEKpWYUo8kLm9iipo5VQPl2MjICCJXjI0M9vUkqOk7EadAO7eT
Yjd+Cy2vCTcPF1dVKVgiDdJ3VINtJ9QwSH16SGsLJoCoupS6KKQLWB/7nqSGZ0Ih
gLkLlkbUkcxli9J3S0dbXgObRRmfBcFYWBEFuIKWWkAHR8YmprCXV+Mx4EZio8rk
2DBif6DURVHD7Gmn3lXeO8JFQVSLivKy8orqugZYLKyupLikHKt2kQaEPEOdwO2d
VocHE5vYCAuX0eVsYE1JC+LAgPTiUaNtIs7PxuQEsQ/2VwI/UpluSzusym6zdHZQ
FxtrUn8o3jPAAEBYIjw1jYAi1I1KywNhQyseHx3q7+0mEQCPoA5Uki+d0m3ZABeB
UGAXKiyvETi1prIM+10qa7GFWy0PW92wltdFuYwYvXgkpqB8lJ5S6FrYa9mLxbbS
EoaoU5TwxhA/ng5miC4s4sU+PWzTsyCSjstDVi/sXqIfO6mwSX54bHJmjnuNp6gt
ewrYc5yWNzE62Jdk0YZnj6tKYfPaaesaG+pVw3o57l5VbT0IlipYXaGxPOwitdqo
BbXT4qAKbOFNXptCCkOdJO21WJfdRy2cIVWqi4FSVu/CnBbizWbsPuLd6xLeRNPL
F4xij93ICAqR0Ylp7BlC7iT+xJ7ZiUlc6NT4CAgXhuSIhRkWiZdHYpP78aurKiqo
v626jlZXXlJUWFRaUVPf1Ez6EIFpqE+xy4p9JmwZc+Gz9N/TYsjgMvQwItFEw2xP
RqU6gGoe4fl8dXWo1dlInFNpvJtt/GAsyZJlYJA3D5GWaPO4D3YcPpufm5mE3ROh
nYix/MJeWFbqrQTGQKhZdPYqsZmrEXsl1fro7LWxgCGzxklB/3BY4/3AirArDZvU
EAktKdq4n4B2RH9wxhxtVS+rJgF9sXS0NjU0NmMTKZ09pJ/bw8ZtINLdy7Bm2Oc5
PYtoPrK+yfFREJwTsL75WVkf2rTwODTYPIKnQEtsaaIF8hIrYf8amppBM1SUFlFL
QFML2zLKcMP9o/xpgDyBqAZeQ+7EB0QF74qQoBKiH1UhOR8+cWJI91k62lqwixfN
QVR9CiMI86UR7B1ApgfNNzI+Kf3s1Ek+OoKKHYTnFJy+ob5kgsHR4gSp4fMY/A9M
h92t9fX1DXQ1EkNiuyvsJ3U1i/JTHQhdNifVknApClpR0TjDoXFXtlL2vQzDwFVH
UjHJ6U6zG+NkLSwKz1R1hxIpJmILTWzgVLbMGMWEjDLqZB8eHgTZKXzCpdh6hQoZ
iBQQKAmGLKC1tDajLYN9Ou1kVhBLd9AO4gLZ9yND0kvN+4p6DA0TQrkjzRdG/ZG2
PgWxjb0OlAYOsq0FWSyoq6aYPbSxJ+B1YhQJ/k0P9/8LPFJYcwu5FrpkX4EeMsyb
1WpTIJZW7VU5BEnSVA2tPE4dI/H5dbjdIxiJqkJUzE2bAGMqQBOFU6Xq9oxqOOlS
UC/MaEYJQc4zjMDeXgPckZv7u8UAFls/oiAe2Y0zXGOzV2nABKZjo6aUMKdhbGqE
Foep94ZppuE/7XqxToVap+o6Axq2TKElCVZmYs2lLPuUCn0FgqhwV42KaaPoUG2M
d/3Ls/YyVmhanizRWB8v0XSlIJ3q4mddGWlGOYqtufQ6DADZlHLclJL39FL4R5SP
q9voaJgsWXcXpG6cTXDrLAqa0mpT60wDclU7yXwaSIE9TQXUUkCV5hcyYoYPi1DK
LdXa9Y3XEtDMAlyfqZfqUVBC663SmrqL5lOomN1rCl8EzK+Vth1GhXQ60pNvXR7z
GnTT64sYuG4GBC6h0+kjrVhfgwLpyIxCvDN2kEE8CHmTtY+BFERoBwaYkkmOGSvU
XGXmMYOfUgrM5XgZxyytslfikGZsQuUgoFNthqjtEWQoJbu4QFbjtwpQJrnUiGHD
8QEJGjCeiAH1owGZ9Jso1KqIcExUS1V+nm5GikQ0cKspwp1a6m6U+mvcHm2pMDTs
CF+Ce6i0rqGKOCpBYIx2XhmB0yICFSKp0tUA6yJMUMbGYSiuDgOolupQzNsm4TXm
k6jprHCkRDYzpPCHjU4G8jh1kEc3+xAimkJIUtBRhBw1PcX2kgK+YdDCREJBgQqe
HVu5uFkY/BAHukpgOgXyproGUf8YRovimhTk8QWCpjOm+s6QegxQF1W4flE5EKod
SNWZS0+PxtpVaEJU78XQBgNqTWTWzs7OzRLOJy5sXNCVEK9SYJVi3JZol7gOxwUa
FJQaQ4LxPxhqDlfVqnmRVuXVmHdB03YxyxscqGGuNQf6JSxnANHaRFAjbrCLkx56
TYzYpPGaFHgpbBguDGxbAuFkALYoF0AzlJ7EqpoYRq+agh2EQ0uoelUS2lFr4nCV
qohW/S0KQy+RkIhfWKR3VIOcqoSKga5rN4H4wo2FA8jEY7ChIcV7sCqFxUrQSwKk
aNontKKpSM6mDlV7uwC71bMrAkepQf2Ix4p4Ty8I2cTjS1+TNAhqi1wpJRUjN3Jv
boaz1oF6XpOBOhaKUAqgfyD1QE0RNCQfqHHC1RroM7EeldwLcCeFhQnwkGGXye9o
Uj8TwC2DNllTwqZekzILarTYOOFUmxSRsJ7JglIhaWXBmto7U/DCGM7ZhONmgNwN
USxYA2MRfyvhZ1P73oU4c+juMm5bG8cWGaOsnaMpYk1qVGeTgmYMQAFADQcNsRhU
XoPJIDTaSxUgN5utuPtOBfmFizKBCTLMopLoA0p1pYg9ajt22o3zyfhieElighWz
TtpQ2N5kaHvS+nEN68fUpmxkck1mlKF6dSupAcov6p4zAwLcyJBhDJXGKHxmRSww
qlENTGy4C0wuHTZnNhPL0ar5IrX1UVwa3ZuojSbdkGLKIJs8WSM/bDItjN5Yp9mx
EDR80RWCMN7bZwrdJQ2EeOMgqzI0k/GvKWdyjNjCsiuMetXFZO5zNNwKXU9ncjRS
EvKpmXRTSt90o7XOiVfancwo8GaL0eQeafxWdv9Cusc87daUJ1BnypTRsiv0dEkG
qYyf4QZKvlQS3yqFz3bWeo6L0nohEyPrlSp32WRaGXabmDdhZbSp5E5ausfkE0rT
tk7K6q01nQm79r/JAcD1mZxh1XVtstnXXGZCGo6ySx9jbfsqQF49oiEphr0aWiA8
yQabxm80OEgBpxvY83ZRMMrV5v3jTCTumTmq4ZTUpFefJK6nCIoVou0O7YKoEEJM
W8eCziDSVNV3GI2wSjyYAwiaf4xggnYdjQOe4o2b3tAQGloSmt5RMXnK/htzNiKG
F61DNMZQGG0bml369Zx7I1SjXcMU5vSlesBsXK/xyVOcdwnnGPjjFMchhjCQqyVV
GlSNdAG/X9UwaJknZpN+VWIMK4V2KdHH5q4Kpwkfs/JTXp++uTTuqZ5YSZZqI4iY
OKxC5VwroNKvul6BnWFlM2nlxCzi4YaelNiRy20g2yt3yhTDVG9nFibrShWTdNGX
4YWbdIrJcTPHsczhrBSE4TTdFTAbSSnuVUwHOjSgRUj1TOvnr5ETKfOIXGsu4y9N
DbOpSsHQkSY2VPQxRU3SrnSuDK5/pf5OuSJm6Sey22WgKDgVhxqDMhz6f5VYUlpE
amm8Uu1Ny5CNCwSkB9nUi28yyDkAss67mvVMajzG8Dp8ejsMXahFuXziNXFiqsqW
NzHHqB5yBVIfv/ZltMZPj8ulRh71MAMtXTV/KLPCsArChoiJGZrS0JWpw4jCxjAi
UzTAHOVdExheEyZOOzOaX00HWVFNu/Pr8aQ6MebwnflNFLKOsvEkl6fn8DDgL42X
4GQeJ0oxLyFo0K0aF1pQbSVEpOoe1asp+GSNFeIy4W6LvWvGs+Gvh8IKR0bN4JAK
De3yaK/eNPopVeRoM8/nN5s8qlRLxzkNSplG1KQYL2Y5om6ZxoLplozZfOHYj+QX
NXC4ICyDvz3IqW8q5ZFRQJirJfB0wo0nT5SG1rTTdCMTILl5TVLmlpKPkPFhCh9J
+iAVwLseUdQn5SK9ZlBwDaQkik47eHZR5nogmLbIee9StPU6h1jRSwkBCQrwWAzG
X+4XHHwTH3K9CqfQuBChoUEierX1WDnSqUPtevCGIe3FYCU7RSbzACVTvd8AjcuJ
S+5LamYM+zJh+DrpytFnrv1dJ1RtHGYzTMhawCSj0ornRpjKrziMLfChMiBgmAYC
DPb3UMITtx8xkttbWxrrazAaWFVZiTDJpaUVVTWChk3xjI6ODk41Kn9ZcpRMHKz1
AP9ayv9k+JPLJUWpXIzHgxNU6aUpc8hzLqJsAvNbU21LRIKMUW3/qsEVqrxOlVQG
VT2hzkQmZJBGiuEspXY6KEGVhzK7LJns6ZO6QPonYpZzjETYp4lDWEY8mA4YXFQQ
iAUelK1FEUWZGz0fQBdGSkqAqaNj/8zWQSNup6J3hiuAhinLtW7TsvR0EIkgSY2W
2Ikq7xNRw0RkggyFgOKpPoZEC3l+jSlRq/SUMeJGwqNc58ZCmcN8KICa1VA3lRyQ
T1jaY3gJyzm43q6LOIaS81KE2N7RqappjdlhzEHaTTLUqjFsRg3Godg+7WOSy3V4
/AqvV9MuosSYKu6jIJz+nMNxIluEDkw/XcrB1JakDJlByoVTf2AMRvC47BKWseAR
4WKZdi63lPkMnTIwQcHed5gu+lUrfYtA4Cme2imchq4mtn1TNbafiwm5ps8oeZZ1
JUggIbIuhtR6+/p4CBRXj2oKdVMBFyxPoq0kuaJRY36i5L/VoJVYzJwJkJkryviV
8540udtq6CHLHLtVHw8MEKvMkXnxnXJcLCrvxPj9UjGHBREt+K8mwl/u5D/rlFFp
UntOKIwUY3dS0SOVT1J9fEjqOwmovo/KWxJUHY6KhMYpKAYyZvKkGXFxEbYk/NWg
KJ3TUgwjRanmQDYLZZ4DNMBBP1KgETGbjJoPmkLAp6iV6+RSDolD5ioKjdqwnokl
dgvVg1KxK6atiHqdFrtLujuMsVxs5StRStg6WLyS0KcirjddHS5ToS//jgmEG57Q
ZXsJyRaZpE4sJoyVkuyLqnghhXrVoBqZ1tcdl6o+qbojOUwDI02mJCoePFEtVIRq
0zCkbLNjwqidpBIxCw+YqeGkF584wtp0KdA5vypt5j2jQlkquvViwzUONZBiXIxO
U4FsXKk2OUlGTkkESDxuZGP4YAh1RRRpkWIkn7S1hXfGOSAjar4FH1gZioZjPmSg
RbXKguGEE6QRleXZ7HocDVlxIS684aS1jSzHVkNcN1M9n05eoJqiiVZhsnul0luZ
01E1lyogpWKU+1HzyrS5bPi6ZiA9rb6VMtM0VOJbgnIEfRlVw8+EEmM8bWRSDz3r
TSB6j62zrQULaasqyktLigoLaepLKY1UquFBDxzxZ3gVLjGV+EqICENj5tpYwEhi
m3PbzFo0gsNvyrPxpsMGoqBUTp4hGo2kVdhQHmEj6C2QU6qfymuMxxRVZ9QcdRsG
QZzVN8+pwdTc+OQ0jwCRgX/DgwTJ6+hqa8ZC25KignwclZdz4EBuXgEOK6io5Ewi
ld3aCZaBxnX0SxkjKctYJCB12JJF5nmtTZwep2x4B7sWpKKVFSwR/qg0J8hoMznN
CTUKTvOJNBuxy2kKc6t0jJo9ywNgVNdOb6+MgDTmXxFC/NwCjQ5agv8sLszPTo2P
DPYhTo69o7mukgZgZO7btzdjz57du3dnZObkF5fJ2DvmDazLx3q5RE//IM1shMOG
Gd3hgR5ED7KZivmxGBurUxvFDGyRMV00nY69N31AAtgxhuMLZEoXpojHVNE0ykZq
PGKbgxGByczmOlWajuamzxScgU8mj3Yb5ODiDZwNMUSzDKdmZhcOrqwePkyjUXAI
BdYx9ybCPkdnc311BdECKLF7186dO3bs3L0vJ7+QpkiVcdUkXB0Wu9sXitH4EuQp
IPHE9OzM5HAv8BYJS1DisFwPQt7A0Wsn/55I0kiZd5V21VFPJ1WAOhEoRKZPDUvN
/NgIOSdSFky/GuhLxrlgEevJcfqj9KFYqBAXNRmn+uzUxccFx4lkrzR34XiUUWoV
mZieO7hy+MiRI0CK1UMry0uLc1NjQ8AWQY+9s7WprqqsGEdGHcjO3Lt7504gRXZu
Xt6BnKys7NyCkgr0iLCJogMhwvC1qb5+cGRiZm5uemwwCTvHCgJhpuOEl+0nSGeQ
sA4cXYKCw8JMg4jODnbXee4x0tjllTx77+AIt3+MSK4TU50jY5M46gKZhVztnkSU
YODwkIADhgaPBTPbTjvclXCypdmODUNqXQwxWdA97R8an5rFM7K4uHhweWWFWGMa
x6oCQSJ+FzcD0LiYYhyvmZuXD0I0PzcnOycXGQQlCY6uwMpo3GEb4cJJorYnyTM7
AiEtr/XY6yQ3YzBQtoBIh7gaGyxZ0Ougw0CmtCKtqM7b5Y+QECI128eCqRt4EQHR
kVsQsnx6CjHLqeoa7k9wInh8sR0SGcOB6CFet8OKGFTgRKO6hDPuQkwReC6IPeoS
gWfE8MDzFDgeLiVjQHuSNH1UJlZRiTYVaRCQOdUd13GlBlbHY/E/ThdraODZy2LA
c+KZhlk5ZXRUjI0iForktSR1TyL2GVHheETDWmMVL0dKjQY6arxUURNqdGNjS/IZ
yURMO33c46MyMtyqqzC7ObflojphxrlQzaoUcWCYpQC3k7OTSoZKRFsw0ldC0Gsy
h5fC+wQH78A2IbQxiF6tzVSLXg/SshFERGOzGHFt0vxBJetovHMAxieQ5HSu42wk
IUB8N3ATLhXEaT8V2bONqSaMpVUn6mIyFbcOGVEDAW0PBLhjlkLThN7lJ6QoNJgI
TQobbQn+zSsgixQ1xzJ5gsZiCB0BhOESBAJfD7Oj4dOdnBI4V5gpXFyN7QzoR3Pe
F4MmKjPjkKyiagI0Qr6mFIZLEOK9uggwQEB4ZMcGJUrJ8JHUIsP+HDaVhAUDXsWm
QhHxI1UdAO2BX2HASCM5ynovgf1wt6QPfCocy8TcEUWIMkZJCzHiEaN1+gVnxchh
cO7ZR13YkiVjAlBTK0LRccuz/gbfnR7Ey2EkvTD3wxmQqV7JJRiczU0X3FiNBwkR
5WSunNeJkIMSfBNzQ/XYEJY4GkBOhdCHrcjeQEiQk3yML0eAltwOTd5CmAe7MT1Z
4oF45BOCrmiA5R6SjU5lkHZH+k99brc/Egu6HS7Ul74QQj1ZED0KAcrcbofdFYzF
gh5pBo8QiqOX2hno63w84XY0VEGmWhtBdQIC86tUKQJVSWhXUL24xxoIhSfQxSlO
muSAmXkUog60BimuRWa0nSqULdhxQFFo+As4DUhTu5Q7If3ciL8VpO1mvFJpQaCO
EZ5Ny80VaJJHQqo2JUzVp1ithRss/fcRQt3yBuAP4Xf4J0EiHnwpEosG6Q74i3g3
aGF/OAH/JQhSpACd4iCiO+JCfTisIUoAYAwRR23/YQpOeNk7wHdRbdsE9xeMRAiS
ipNlXuYXVGBunMNgdbrdOLcBG824u9aiXFFrF2pKrhzoau+wOD1IX87LIXqghw81
orH5NG8RMAEjWSLLI1yd0x+Nx0KIjOoPCH4mo9EimRB4zk1wdujYAJ1wvB5oFdTJ
gUgimYhG4j1gnaCVRLoikcBZHome7hjTnwb5AUUYXSDE/SOeYCwexieyVGAsRW9A
NZiQJAgzfGxIyVOCevW5EEyTUDeBT7DnLhAO+ewdbR02TxAB53CoYIfV5QUjUnpv
HTRsEJujQEejcWknhiM9ruqfXGRt0tgqwgYjGeoUaDoeehGmJk5iQGQuBLBEeFpQ
VIwcGpb4ZiikpnnD4QzHe3rRluN5HcmeJNm4QbCckolIgGtxo91JnAXoC8p5J2RP
EnMEiEWQgAQYhrCfkUTMD+eVIV0Jvs3hJvy9KO6UCyEGsV+L8hMCb+t2UOezj6wT
rh/AgwhMRfM9XA6rRZrpeYg4WjgenmZBvVUOl0e5UC4aGULYmU6Cu/AAIcVQZqBK
BLmN0jNdPuCObhzhAkcg3N3X3xMLIFhpFD8NMVIqnCj8C6d8LyI5S39AiXmUNqRF
KMYVCcmcPj7kVMwX4xmRLDUDyMg82dsX6cYZkB5CRw3Hkj2JsF8GWSNDRmVCCkEm
Br3kcUh7AFr/FEjn2jCqirSrojQ8g8hGJMK5QIdiSBILIUPFSODzDT0K9jnMgy6R
07lVE3EY3WiRUs6Nmivh5wjwto32WBq/GQtaVJ0B7ixqkEORrJQxxIay0M+omCij
IgpUNCwNBj6x9hhbRMZjg52Ho23IX+/BSe8c+af/17PmRfriyhkmwkG9pxxMNRXb
IC2RKuxo4thNqggFLuQmQA1xpjCx/SkmlGrsDyrAGr+KpAT5B2p1VrAVHrdCMTGV
IQtonip7Ceg5McpkCypA0ICaGcPxSkZKDqpIDEgzavJmP5grelR7uypI5a8xdLEq
obVaOd6jUR3EVpduBxzDY7Ub+Vwy53TNVlj10wlKCsd3ee63GJsKj1CXV5C6FRwa
r8r7egxAOBncbq41lXLhiCruMZcu6Ooeqb/UbTuRmGmQO7o2HHmA/2LJbEIPcOZi
Ch6nbKceYmou5CptKtOu50Bpl8U07FoktnQKhFTqyqiil4RUymx5ep6CU2GMFF0W
pypBdPkCczFnnjkTiPY8k9nUmRCRdIxCNXTrakqueCFs2rAkd8ypdBrorKZuI/qA
mg0jp0iK/XnAdAPGFHmEvTQWtOmxwKoCTJocnNJxKVPiVWZcxYFMMU+mE3d72nUX
lKobMwpgTGRRiWBCK5AgYySiwrCqrjeo6wt0yZeqAOICZAzVYbBvSJWKY/OtiqXy
4OCohuzQ/RzU7MrU0NHmikqcF8wTdHUttZpkbLFIe4Ke880lA9JYq2f6pHC47jiS
5CLjnzilp0+XZutjoEpeVdjZ3CUQFMAotwE2ZGq0FLmkCs1ppDJ2/GPfxjy1kyNC
xdBAb3c8onB4jGolZDWHcEcdto+XlZaUYGgV5/she3Dki908u1QPULsIMYi0Ucvw
bgroq1oMOcumyjsVLNaIIjYpWJBx90biIGwSkSqno7Isik0k1Mql/6ro0iaBOq5n
iKlJ2xhU5d4c6vuYnsSAKjfS+72KoIx3ItU+lOOlqdLlTBAcDVvfhD3gHD0n09nl
0N1y+GQCr5bWeRM4AHlNfr2DatCV9uOFPylIrboHOOkXVFlboz8pKGWRuopC5SVU
a7fwLaUaVSjXxcPP4zyLHc8LnhUZxo4EoWDUAOhhSVM5zdViBPKBwT4mCE6nL6Z8
RGVVDYacO3Tayagwtku7CElVJbEkJyZHRx0Scv1VFYE6QqyVRJyrNBi3gSvcIZXs
V8ob2UVXJpk5TucijQR1l9VGjtKaAzM/v7CwQHN/J8cxAYG4I0HNtbo+FkVIO41g
r8VpvziLW3I0iE1AJJEZ2romjyU6LYGHwHM33DA3gRBNGCRKVTDpGVIqCi98L7/n
MiSe+2aGw5J8p8rqm+sDRZpKJzlBC+mR9e0UjEbfFkNSOJp4dn4BcxAYXl1ZXsJB
zNOTY0CSbjKA2XYXfhWN295KmAUVpcWF+Xm5uQdyc/MKCovLKnCoclunlad7GBWg
ZPM7XaqZhLcC84MjDPnUS9MZA+Qc6Sp1lqLULBTmE6GCGqIq+dyI5upFuCMpFdF1
XSm9vUbBpJP5XEoVGDKKcRYwkYLgHPMHl1dWDx85egyvo4dXV5YW5ngYIwGGUwlb
h/SNGsgcddWVZUX5uTlZmfv27cvMzMrJLSguq6xtaOmwOjmXLxmxmIxM4bgCAcb0
DQwLihKlB4EdGdyEM6atCtSDsiumXkctacVqDQiIiT6F3OcmaW4pAFTmgpRrijPC
fM7dpA0NjbiPDsQl6u4bGpuaXVzGqd0ncUr0ubNnTp08fvTI6vLi7OToADrsPrRQ
O2l8JmVkKWtdiyKkpDAfExV7du/auWv3nr37c/KKSitrGlq7HF5wKEnDEjYOzZ6P
MrRagsv1BvC0TiIsERGESO/ifCchaEjhAOhydtelolJnwlUbcSJJSdgRSq6MUbaR
SyQ4GsHsJAgkFmVJy74in0tzLZqV7ZxiApKMT88fPHT42IlTZ8/jkNirV6/QKPsz
J48eWpwZH+yNh/1ue1dbUz2hCJWVlqJyKQHxAfyxPxPzWDve3bpl8+Yt23Zm7D9Q
WIoDce3eSA/ceG5hcXERZdMcnsOhfk4P9fYLYpqE+wd6ExGMSnS04jPK6STm5Rdi
PowwwiwODB5RjZ/CP4Eb4cnDe4xPTs8tLi0vLy2SBJwYHeqN4yQBKo1rw/x8fWMT
b2QjW9Nc98I4cli1wTn7NkJgCWAiCbZrAt59aQXHiZ88c/7SlWs3bt2+ffvOnTu3
b167dO7k4YPTI30xv6OjqaasKDdr326kAI683r5jp7527dyxfRvS5d2de/bnFlfW
t9m80b7x+dVTF6/fxum7t65fuXAWqTw92t9NSFhS+iQKFOhubW+sKS/OP7B/Lz4C
aYxjgosr61o67d5wcnAcuHnlEF+UXpuZnp6emZtfWDy4tHzoyNHjx48eXl6YwTm2
8aCrq6m6DHbtQE72/n0ZezL2ZeUVl1eTk9HexbkZ8hldnHDB/KeY1PFkH2bI+KK2
TdTEc4srR3Bk9MVLl69cu45jss+ePLI8PwWk8dla68oLc/btenfLxjdfe+Xll195
9fW33t605d0du/bszdyflZ2dg9eBAyBXKmqbu1yh7qHJhdWT56/hQObPP/vkg7vX
L546ujwPpIkHnJTMU8NsqaANpwpXlRbmZWdmAGW2vbt955592XnFFfVtdn9iYHwG
Xu3EmQuXr167evnC2dMnjx87gpIPUZimpgQhDIRTfw8OI2pDGudlZezYunnT5q3b
dwFhDhSUVje22xDsiyQaSqABBMMxdfKKbd2tKk91qRKwat/g6OTc0iowz7mLl69e
v3nzBrDNqWOrS3OTI71Rj6WpuiRv/57tm99+45UXn3/uuedffPm1NzdueXdXBopa
mvYNarmiEqd4dzkD8YFxnPd9/srNuw8++vSzzz6+f+vSqcN4OHuiXmtrXSXiQ1VV
YwEplRegz1ReXIDiGxPuezNzcPB7q8UV7B6aXsLB4Zdxgvvdezi/HThwdeXgPKE1
JalQiPuiQQq2NdVWluTnAPPtBBpv27ZjdybwcV1zh9XljyYH4JDMzHA38gQCkSXF
kePmHeUtcBctWZ2U4w9F4j0DYzM4Pxr258atO/fev3//vbt4rk4dXVmYGkr4LE0V
+Zk7Nr/5Ck7cfurJp3709z/7xfOvvrV5B8iX/KKSci6haOFhxsA5UwePIHHuffDp
V7/+3T//8z999dGdSyeWpoa6g/bWqgIc0L5l23YU2jhVHDgORVgRJp5B4eflF5XX
NHU4fJHk4MTC4TOXb73/wUcff/LJp59+9ulH929fOXPk4PTYQDKK41+azYhVYFIW
FeSRhszcjznaorLqxg5HINY7iNJjcXn1yJHDh5aAsOOqKiR1ULNKMFk5RY05aqyT
A+qMTi0cOnb6wuVrN2/fu09v8/GH90FcXDp7fHlmOOHtqCnYu+X1Z3/6w+9++1t/
+Rd/8Zd//Tfff+ofnn9jy56coso6mmLtpKEF6FDEe0eml46du3rnwSdf/vqf/+3f
/8f//T/+r9998d7F1fG4s7k8Z8eGF3725Pe+853v//Dvn37u5Tc2btudlV9K86oZ
7whjU+5ArG8UNuwE3OXDL379u3/5l9/95ldffPLBvRsXjs0Px9wdDRVFB/bt3PrO
22+/swX2KOdAXn4BSJZ6Frs4xtlJU8hA24xMLSyvHj68yhLr4NwESGuwDtwOa0dL
Q12d7rG3UgZZ4PqUoyTsQ6drZmHp0FE44ldu3MENQxp99ODezStnjy6O9watDSWZ
W19/9u//9tt/8c3/+l//7C/+6r9974c/+cUr7+zJq2zqtFNoIiKJ20Syf3R25cTF
m+/jfPr//m//9q//8tuvP7t/9fh03FKRuenlp5/87l/9l2/8p//4x//Hn3/3x8++
sTXjQEl1U6cT9nlonETJONY5LKzgsbpy/da9Dz754qsvP//o3rWzOK094bc2lmbv
fOf1l55/5uf/+I8/f+6lN7dm5JbWNLVb3cF4P5is6MaMIIoaFc3gveZBmx2cmxof
peKqkAcEVC26/OVwgane1NZFjIJVLQMDRrm9F6PUCumE2juQm1Byw+stHzlx9uLV
m/cefPzZF1999dUXn35w7/qFkyszg1Fnc9n+ra/+/Knvfuubf/on3/jGn/zpf/mz
b333yZ+98Nb27NJ6OBdhHEu+sHLk2Am4Tp4+f/kGCKGPP/nog/duXwfZeuro0mSv
t6U44+0Xn37q+9/+8//8jf/0x3/yzb/50bNvbc8qrmlzhHonFo+cvgisfPvWjauX
zp89ferkyZMnQC8dWl5aWjq4MDPWF3F1NFSVFuVl7dm24ZXnn/nFsy++CtJwx97c
8hZXbHju0Imzl67evHPv3t1bKCSOH1lZnB0fTEYJMBJnnbdwYWFVRSmcSLDfEV6t
ucPmDoCQGpkkgw8M34MLQN/hPtSDoDvK0YwBn7C4tAKFrB1Efbx3cAwodfj46fOX
rt0CUn3+S2D2f/23//Pf/uW3v/rswa1LJ5en+oLW+uJ9m19++gff/uaf/Mc/euKP
/sP//qd/9u2//clzb+3Mq7VGhmZW4OBeuXGbZOvlcyBbl7Ecan6O4PDAM8OEnKur
Aej1/E9/+P3v/Le//qu//MtvfefJX7y5u7DBFkyOzAAr3rr/yRdffv4JSJ+zR5dm
x6lgxueyc/LP2tXWUFlSkJdXUFRcXHAgExT5/vwyYqhw78TKmRv45S9AhX704O61
c0cXxvsTQY+trb6iKDc7KxvlJ8UFGttocDvGVYPRnsGxqbmFg8to7xyHvSE91Z+M
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
6pLxv/8PfO+tcizYAAA=
}
forever [
    received: wait [net-in]
    if not viewed? gui [quit]
    if find (message: copy received) name [
        teacher: first parsed: parse copy message none
        student: at (find/match copy message teacher) 2  ; erase newline
        insert (at a1/text 1) rejoin [
            now/time {, } now/date {:     }
            uppercase teacher ", your student has arrived:   " 
            uppercase student
        ] 
        show a1
        attempt [insert s: open sound:// arrive-sound wait s close s]
    ]
    wait 1
]