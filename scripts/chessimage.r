REBOL [ Title: "Chess images"
        File: %chessimage.r
        Date: 7-aug-2012
        Author: "Arnold van Hofwegen"
        Purpose: "Create images."
]
;**********************************************************
; Images
;**********************************************************
; A red pixel
red-pixel: load 64#{
Qk06AAAAAAAAADYAAAAoAAAAAQAAAAEAAAABABgAAAAAAAQAAAAAAAAAAAAAAAAA
AAAAAAAAgAD/AA==
}
; Koning wit .gif
img-K-white: load 64#{
R0lGODlhKQApANU7ACEhIc7OzrS0tBAQEBUVFampqSgoKMjIyNTU1IaGhri4uDg4
OAAAAGFhYbKxscLCwr29vS8vLwwMDEFBQa6urnBwcOjo6Ht7e5iYmEpKSmdnZ+Hh
4dzc3OTk5KWlpdjY2BoaGlJSUgMCA4+Pj6CgoPb29rCwsFpaWqysrAgICPr6+d/f
3wYGBu/v7+vr6u7u7v7+/vT09P38/a+vrwEBAQQEBPz8+/j4+PHx8fv7+///////
/wAAAAAAAAAAAAAAACH5BAEAADsALAAAAAApACkAAAb/wJ1wSCwaj8ikcslsOp/Q
qJQpMAimUxTBg4U2IoAaINLoNjMECU0yyJidlO376SCQ5k4B4YoXjjILEwlFEwwG
I0QYJ4EVUAkEBAuABAAYQiAGCRkpgwITEgYZEwADIU0NIhkHOjowByEiJ2CrJScD
GpQkMToqCBUEEUsVNQkwrMc6CQwMCscqEQwZK6wlLxYuHgALSQIsF8jgyiPHHNoW
OjIlLRYrHyskA5ZHIRE44MgqaAisISkB6NUsbPiAIECABqaMCBiQ4B64ACI06IAg
oQJAa+0KHggwIgIfIg5SUHCIDMYJADEqSOig44a1gRofPPBgoIARExJMkESmgEWC
/wUnYNxYBzPAgQcQINC0WWThuJ2sLEQgkMKBDaIcYkJQoGAEAaaEMpSAqiOHBgYg
PsQQSNAoUgUOBGgY8JGIhxoPyOrAwGDCBhdFj2514ICEgQtJDEwYC1UBgwYdOmR1
O5iCCQ0SuCApIKEh1Ac0KkjWCpeCgwQDyiiBpXNnAG8uOnwwWtkBBgAg6iJZMCCv
MwQFElTIYOiEhgsjUGydYYJEBBG6ExNQYEOBhgggUjCQgCnAABEiBoBYoAEDBmjR
lSwgYGDAgAkXCkAIoFGBhxEVJqQRvyeKgAgDkNCBDTHE1gEEF2BwlAICOODBTxKA
BcUEBnCgA1EfJGDAdiEUIIsABQWYUEAI/UmxAAMAJCBQVhUMsMwCJMxQAAoJPCfB
Hf4BYAgGG0x2AAYhXGBZATOOsIAINMgDhQMsVMDBaG49IABcKBBp5QUDaDbhAAGU
AKVgDM5AwZhjOkDBBNtEAcBhCVzgZgUVaCBnA3TWWecCIEghngEA9Onnn4D2aQAB
A/Rh6KGIJqqoEEEAADs=
}
img-K-black: load 64#{
R0lGODlhKQApANU6AKCgoBoaGpiYmCEhIYaGhjg4OGdnZ0pKSigoKM7OzlJSUhAQ
EMjIyAgICC8vL6mpqXBwcFpaWo+PjwwMDHt7e2FhYUFBQb29vQQEBKWlpcLCwgYG
BtTU1AMCA7i4uK6urrCwsOjo6OTk5LS0tPT09LKxsfr6+dzc3N/f3wEBAe7u7uHh
4a+vr/Hx8evr6qysrP7+/vj4+O/v79jY2P38/fz8+/b29hUVFf///wAAAP///wAA
AAAAAAAAAAAAAAAAACH5BAEAADoALAAAAAApACkAAAb/QJ1wSCwaj8ikcslsOp9Q
owAhiFqHgA3gGo0gArkAIsJ1HhaL1GRxKD+zW/dTkKvKnYBc/D78SDIsRRE5ZEUA
AgB7TgYLN44TEEMRDQ4BAxlCBAiOjgV2SwKOBhcoGgY3CCUQGAQxDAMOFxUYFhkn
CZo5kUoAlAw4IQkhOAwODSkEKBEPrxMTEjgmCQkmKxUdu0gIBSI4BA43DtAiFjkc
CjkKOAUTIDgaB5YKGiIGyEiMHDgGOf39EDhWBLCwQsEIAQ2gsbjhL8cAEAkKDEAy
wACOPA37EbhYx8aJARZoMACTsUACCXqMZGgAYF3Gfgt+OSiAQ0IHDSYOvMyBQcCD
/xsVjACY4AHHgJ05KlxccOEAzRIYdnag8GGAApUTWhZAOmFGiAEFAmQwgU4qAQBA
jyAwAIMC0hwUYEBwKCJBA6QBShDIMeKIhAAhviJFgGNE0hZukRoocWDikRILKFzs
sBMDgxMLCJBwgLTACwkNPhmZ9GvuTgItFLxIMGFnAJ8IHCgyAksEiUEvD5iQcIHO
yxsERugUfQRAhwMyZOAOU0CBhBYXEjxwGoByDuAeKuQw0CSPAhIkKFAg5UKFihAc
0jO48EGAgQMEPBjA0AbPAgUqcNSIceIFgQoHWGCBAgZQIMAHILAAggEb1PfEBwtY
8AEFDmzQUAB3+XODBRAogJZBUFaUlVFFI3xjYUYBcNGcAJz1kwIEKyTAAQAk5TDB
ARHcwMVrOCTWTwAVgKDJiTkgkEAvs3XXQIcLvLRAhv5sMEAEC2TzhAENeKDBlhd4
4MEIIDwg5phiZvDAAA4+EZYLOJCgggsioHDCDBxMw8Cdd05jAQJWIIBBAIACysmg
hDrSQIpRFFDooozyycejkEYq6aRHBAEAOw==
}
img-Q-white: load 64#{
R0lGODlhKQApANU7ABUVFRAQECgoKFpaWoaGho+Pj3t7e5iYmHBwcKmpqVJSUri4
uAAAAC8vL729vRoaGgwMDEpKSsLCwtTU1KCgoOHh4ejo6MjIyK6urs7Ozjg4OEFB
QQMCA9zc3KysrKWlpbKxsfj4+PHx8QgICLS0tGFhYQYGBvr6+WdnZ+/v79jY2OTk
5Pb29uvr6v7+/t/f3/3+/vz8++7u7vT09AQEBPv7+wMEAwEBAf38/SEhIf//////
/wAAAAAAAAAAAAAAACH5BAEAADsALAAAAAApACkAAAb/wJ1wSCwaj8ikcslsOp/Q
qHRKrVqLiUgDcUwMGorEdZcQKA45blF70CjGh8dMZ3gYRySdBDBeAAgZGhtGAgMT
JTljOwQBASZIDI2KQjk5AQtGBQEAGpM7Ix8bDUYBCAZ8ipoqCSYYRAYBKhiPUCg5
AGpDXzInAhFEAAM6GX9rEDkFRhQPFBQByUM5Cjo6ByOYOwYQFzoiZkQKzygBFEUD
EdQNA0QcBtQz0kJm1DoRAkS+InvQQ37NAOWGQPBA7wCEHQa5wdCBIJGuBwRQHDSC
AEAABoOEEHgwgV6LHBqk4dARgsUBVDsK5GAA4AE/IwdMMIC4Y4CAEPSqMaAhgWSK
/xYOntUcwRIEkw0AFECIECynjhUPIoSokcJChQk5BGgIoGFEriUjCPhhQMCpjgIg
dFStoEJFBAYCDmy452RAjgoVBiwwe4KFCKsdJmRAoMABAQ4vmZgoG+OEUxcn/lYI
nOGCg8sa7EApIaCFWRch1lK+IMGBhAKIoyxgsPdziL8vJpB2sGDBgIlR0sSgJ+LC
BwIGDBAo8MGB5QUUcvySYqABiwoHFAgAAIEDhxs2IABQbuADagNTCADY0OiBAgIU
MCzAcIBAiQYBtE8nMOVAAAEIFqyQsWLFi8sZlEYCBQggFdcUCQBQgA4wACYBAVqh
RQIGHiyQgAYCiCFFAg8EoHiABBYEZgADJEJAAAgJYGCAABw0oGEU9mEkwVUZkFCR
AN15kKIBKx3InIIdjEbaBx9MmMCRCVAQDnhSINCABSEKNtsCIFDowZUegHDSV088
0EABwBmAAAIolFDCAGimmWYDo0jBQSVwxilnnAI8QIMneOap5555BgEAOw==
}
img-Q-black: load 64#{
R0lGODlhKQApANUwAKCgoAgICDg4OBoaGoaGhqysrEFBQXt7exAQEC8vL8LCwgwM
DKmpqSEhIXBwcAYGBlJSUgMCA4+Pj0pKSmdnZygoKM7Ozr29vcjIyFpaWri4uJiY
mNjY2GFhYaWlpQQEBNTU1AEBAeTk5Ovr6t/f37S0tK+vr66urrCwsNzc3Pv7+7Kx
se/v7/j4+BUVFQAAAP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAACH5BAEAADAALAAAAAApACkAAAb/QJhwSCwaj8ikcslsOp/Q
qHRKTQIOBWQBWy0SAg8XwHgABwjd4eDFNhgb7NcgLQzEBcY1e07vsB8HRgBxY3Qw
Ai8LSGwThkJwIQ6CbAmOBXEuRh9sAVEFFBRkcRGSQwZxLxtFV6VFBXqVRBOoFUMF
dnGtMAUIbIVEDqO6cHEfaDATIahuQ4hxomwLx0IRqC94BS7WsUIQqEcJvQu/g9YL
EhTVqAhZQgdsCBBIEogB8jAU1vC4qAuqhy8eTPiXJAEbARuc6Vv4IQOBCmzuLbm0
b6HFRLgQPFF4sSObDk8OqPN4USMUjiT16WoiIaVFRVL0oHKRwMAEAwIaLNDHLMqp
xkQGCFwAwaGoBQUaGBDIUEHdLygSIhAQoaLFCAwACDhwcEACAw0rTEgwEKBdFAku
LKQAkKGBMmsPGkA4AIBCpikeXAjoNbMDhAfWXAyoRcWFAwj8DDAAoYAAsUQTBHCL
AgCBBRIGKQHAcOGATAMnKDSgQsAFgQSA4wTAmZqTgAl3pThmMUIECQ4gLFjAoKC3
794lFqCYkiADZwUXNGgoYYKBBwbQo3sAIHcKAgQDsrvYzr279wB8ogzwTr78dsKO
0qtfz759EAA7
}
img-R-white: load 64#{
R0lGODlhKQApANU6ABUVFXBwcFJSUgwMDBAQEFpaWhoaGvr6+ejo6KmpqWdnZzg4
OAQEBOTk5Ht7e9TU1Ovr6sLCwoaGho+Pj9zc3EFBQfHx8c7OzsjIyC8vL66urkpK
Sri4uL29vbS0tJiYmLKxsaCgoCgoKKysrAMCAwAAAAgICCEhIf7+/tjY2Pj4+OHh
4e7u7t/f3/z8+wYGBvT09GFhYaWlpa+vr/b29v38/f/+/rCwsO/v7////////wAA
AAAAAAAAAAAAAAAAACH5BAEAADoALAAAAAApACkAAAb/QJ1wSCwaj8ikcslsOp/Q
qHRKrVqv1ArBYCBshgSAAUAYbrZdgbQiUigyFXBBUSgLFxn36RsVBXI5AgtDBgg5
DwBDeYACcVELMTkoAgwLC2QrORgmBnglCjk0FXxQFQIqOR8FqwUBMDkNAawFCTk4
C2pRGxsHOS4HwMCAOcHALjksGblQAQQew9DR0C4hJAFTGSYOLNLdDQoljlMBJBUB
5+jp6AsMDlcbJQDy8/Tzn1gLFQj7/P0IDSlELKsiokC3YShUWLCExQCogwcsQIBQ
IQOWEw4gSlyBQMCJhhO6KfxHoUUBA1c6APgQDUVECCsoPEih4KMVEAA0RHvZQOaF
+QsBElkJASACQoUQej64gAGDAwAdrEwAcAGQjYgkl2KIEEECgBFWnlIAhFUp0wgd
Okgg8MGKAgMWctSAkbRFigdbI3Dg8IGAuyonPXAAMSKBjBAfPkxYLEGCggHXqmRg
QKDygMuYM18mMWhKAhEGJngYcRjx4gmNJThYXWBAhgRRJAxYYJQGCwR2taLl4AGE
bxAOukQxsAECiqQ+t3bgPaNwgucJPEwoIAKKCQk5kOte7qE5dOgjbkhA+YQES+1n
uYPQwL49ew4BbDoZICAE6tXnFMRYJaC/f/8nCTWfGPJYNoAJJrzAwIIMNvhCCSRg
IeGEFFZoYRNBAAA7
}
img-R-black: load 64#{
R0lGODlhKQApANUsAAMCAxoaGqmpqTg4OC8vLygoKBAQEHt7eyEhIQgICOjo6KWl
pUpKSkFBQVJSUlpaWnBwcJiYmI+Pj2dnZ729vYaGhgwMDBUVFaysrOvr6mFhYf//
/7i4uNzc3K6uruTk5MLCwrS0tLCwsMjIyKCgoLKxsc7OztjY2Pr6+fHx8QYGBgAA
AP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAACH5BAEAACwALAAAAAApACkAAAb/QJZwSCwaj8ikcslsOp/Q
qHRKrVqvVMFCwPUIKVvugiLEhBcY6WDFXjWEkjY7Ily339GG3CGMANoAC0IMcgxS
hG0EBxUOf2wADxIHBXtSDnIrCQaOgAYJmA9SD5ikpW0aUhCmq3IHUwGsqwhUIpQJ
A7i5urgEnwUhVgQEHxkKxsfHGR0IA1gMCAIYXNPUGCQBoVd6sW2GVwTcbc1XlOEr
BFiw5rNXCOYrBVgG7wZXJfPmBmRVCxb0XlUk+DNngU6VA5/MJahgBYIFYRAJFJhI
EYHFBK6qPCiwYQOKFBk+dDhhYgQIChw4CLgw4aABBBEiSJBQocKBmxByTthpwEBG
OyggGqh4JycBHyiIiGJC9cSdUkzonuB72uYCFE5UM0FZAaCr169gw3qFciGA2bNo
06o1axWL27dw4wYBADs=
}
img-B-white: load 64#{
R0lGODlhKQApANU5ACEhIUpKSkFBQSgoKGdnZ6CgoBoaGjg4OC8vLwwMDAAAABAQ
ENTU1NjY2Nzc3JiYmPHx8XBwcBUVFY+Pj+jo6L29vevr6nt7e4aGhsLCwri4uFJS
UlpaWggICLS0tM7Ozqmpqfr6+e7u7u/v7+Hh4cjIyOTk5P7+/qysrN/f3/T09GFh
YQYGBv38/bKxsfj4+K6urv39/gQEBPb29gMCA6+vr/v7+/z8+////////wAAAAAA
AAAAAAAAAAAAAAAAACH5BAEAADkALAAAAAApACkAAAb/wJxwSCwaj8ikcslsOp/Q
qHR5kRgQ0yhqMNhICtknJlFRRRZhZ8EAg6zQ6SYhAZA84s0JC2AA4ZUaBwAFDHMX
f0cPBgIMODg2awIZiEMRHREQjpofCAAelBwdE5qkOBQBCZ94BAoPpCIOL5oiAQtg
aRoJF6UTCBmkFAgDcQgCso4hI6wFLSeaFR2HWRMLGqQTBgkKCwMOOCEQIhvDWQQI
mZoFCBIKAAIONxAUFAW25QEzpSERCiDfEBZIpICRAEM5BCpK4eDnDyAJBw0eLJiQ
BcOCX6RaXOgXw4IJBwwYbDiQ5kAAZ6QgMLAw4mPIegTS1MPg6IQKERYogGTQwEGF
8E54zjxwEUHAAD4AEASI8ECAvVUK2gnYwIHDBqMdFCS4g+iSAwsQRlBIwaDCA3eU
clTDIY9EAwYfPpQIQJISgBIWQMrNUEFDhTmUBixIEICuAAEHEh/QRm4VAXNatRkA
oCDA45hpD5MYoIBACV0yCRQeHUCAgQENMkhIymBCggECSBeOwGQN7MOKBTxIYWIA
AQ8SODBAIUAYlwHCEhy4daQAgFEKcYyoAMBTDgw0AmTg2aC7dw0GViTBoEAAh8K4
DyCQwQKBiyEYJEhYUL1+dS5fkDzoZKC//8kBXIBCETUQIIh99Q2wXFoMNujgg1IE
AQA7
}
img-B-black: load 64#{
R0lGODlhKQApANUuABAQEAMCAxoaGiEhIQgICCgoKIaGhkFBQS8vL3BwcHt7e4+P
j7i4uGdnZ6ysrP///xUVFUpKSlJSUrS0tJiYmKmpqQwMDDg4OKWlpQYGBq6urqCg
oNjY2MjIyL29vVpaWrCwsGFhYevr6sLCws7OzgQEBK+vr/j4+Ojo6AEBAd/f3/b2
9vv7+wAAAP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAACH5BAEAAC4ALAAAAAApACkAAAb/QJdwSCwaj8ikcslsOp9Q
I2MTrQ4TAwACY4WCCK1wofs0hMME8vMTtijUz/AA3jQU0BcGPdkAn1sDBntFHhcZ
f2clDYNCDAOIkBKDHgKQlhF7d38pEguPiB9wIZYUDweQFlxdDJV/BwYdDxUKEIiS
XQp+ZworLA8nIgiIAnpWDZAFEhMPBhEAiAALXceWBg8XltFdCYeIAaURlgImXROt
iAcJ53+325YB8JAAGnDCBAMHDQYUCwYJEQVqtXgDZ8QACCMePBDBgQQJDig4HDsw
SIOFBgoiIBjAEUGEBAgQMHLxzNKZdnsybFDRoYMHBhM0OKhwYM6gA9EmVMCwgQK/
ggULwlHMdLBEtgECxjACgQ0RgUVqGDiY6gAEAwwhShIoGaCAgQkMZE6d4EQCgLNo
z/5BkEDX1rRnBxBM0tRkmAAVXJyyi0YaEhMW+LZwMwRBAMFKjyRoAa+xYwAHKBRR
UCCDY8ctIFBRDEGA58+fEQgy8gEp6M8QCuQdybq169dRggAAOw==
}
img-N-white: load 64#{
R0lGODlhKQApANU6AKmpqSEhIcjIyM7Ozri4uL29vbS0tGdnZxAQEMLCwqysrDg4
OK+vr9zc3GFhYRoaGtTU1HBwcNjY2FJSUoaGhnt7e1paWuTk5Ojo6AwMDEpKSkFB
QZiYmI+PjxUVFS8vLygoKAgICOHh4fr6+aCgoN/f366urgYGBuvr6vHx8e7u7rKx
sQMCA/7+/gQEBPb29gEBAaWlpfT09Pj4+Pv7+/38/bCwsO/v7wAAAP///////wAA
AAAAAAAAAAAAAAAAACH5BAEAADoALAAAAAApACkAAAb/QJ1wSCwaj8ikcslsOp/Q
qNR5mEyvj8dVukGcOFtn54EwaAKK8HKCWxByANwmrTZ2Ah5KKpebUQIhB3VEFi4T
EHyJORIRLAsmgxMZHS8NFBeKfAAZHmBhCxkcLQQeOBovmTkFCAieUhUIDxw5KhUW
DgcSqTkkLFpRChs4Fro5LbuZIxZtUBQIATHIuy0jIwkPOCROCy4RItKZGCU5KSgY
EcxMFgEDJgXgiiQdOSgiGAoeME0WJDkfEfD4pNDQgcaFBg0ELMBBQZ2DAgZqBOTl
QQCKBhAGQFimQR0CHB+KSWuxAsEBFRgHCBgQAQYIJhMQRFgAQkAfAhSqOOCgwAG3
/wkSSmQUkEBAhRC/mqDjoDBWgAcnTmT4cICDBBFDExRIQCEDAicacBwg8GBDjCEV
5Ii4IU6CSq0EClTw6qQCiAchXhL58ECAjINuiRYgYIDA3K9PDnygo0PBwgovDmYd
bICBgQghEE85ACjCBcBvKTNQYOAACw9XNgSyiCGlYMKjARhwgCPAFAsnOoyQ0Xoy
bAUAZC9bIKUDiwgjVEgO/Ts4gBVsOkZZ8AGD8gaB4VYG7pxBWCvNEABIsfy1ARvc
gyswIQz8kz8lejPf7tw59HRPNkwQUSK76PT1zYZDUk5QhYEIEvi2ggkmMODgg4bR
BQUIAVBAQQUVRKDhARw64CLhhx4eoEE+gjyxwAMBpKjiiiyuCEIGtQ0i44w01mhj
EUEAADs=
}
img-N-black: load 64#{
R0lGODlhKQApANUyAAMCAwQEBAgICCEhIRAQEKCgoI+Pj4aGhnBwcBUVFQwMDCgo
KJiYmAEBAUFBQUpKSlJSUi8vL3t7ewYGBs7Ozri4uL29vTg4OKmpqcjIyKWlpbKx
sWdnZ7S0tGFhYa6urrCwsK+vr9zc3NTU1P///1paWuHh4fHx8aysrNjY2O/v7/T0
9Ovr6u7u7t/f3+jo6BoaGgAAAP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAACH5BAEAADIALAAAAAApACkAAAb/QJlwSCwaj8ikcslsOp/Q
JCZKJRpghSq1MIh5tNBCpBHDgpsIQWwteJyVoe56HotI3kYPjD4HLCIOFXhCDmQx
AwR8CQcHCwx4hTEADyogiXQKHxkLBmBXcw8mJyscfDEKIxQwIVsPE3QXDw8QEaZ1
JAYDUQe1tr5zGiwwd00WEGq/fAEKhhAkCARNGAMABDAAyXMDCAlrAy8MMZ1LBwIC
Fi5y2Q8W3WUZFQQOTAYKEwhp2WsFINgxBCEywIDBhMElfWsutEAwR0EBCtQsLNFA
IMEChDAyqJojgAHEBlmUaLggo8DFNQ0AqFwpAAKFFBfoCDCQocs4JhD8AXDAoAOI
twISDIwwgeFkQwYV9hxocmDPmhJGMBiIaYpAARTdiDHZACEBwSEVHCx45SsBhgIE
Gix9skGiEA7qfsH4UA/AzSgOyGaD0aHchJBRxiAs00ECAAEbqJQYvAZGBYYKKETR
EIBxmcf/RER5YDlGgg8MCWh+YiEuwgCMAESGYrBzDJ4wAkx5IgFZZw8QAmhFo9ey
gAsAIEDhMGGlcQABkitfHkDl5SdNB0qfTr06DIuJB2nfzr279yFBAAA7
}
img-P-white: load 64#{
R0lGODlhKQApANU1AAwMDBUVFcjIyKysrI+Pj87OzigoKHBwcFJSUsLCwggICBAQ
EEpKSmFhYb29vS8vL1paWri4uCEhIdzc3LS0tNjY2LKxsWdnZxoaGt/f33t7e6Wl
pQEBAaCgoIaGhrCwsOTk5Dg4OKmpqa6urtTU1AQEBPHx8e7u7uHh4ejo6JiYmPv7
+wYGBq+vr+vr6vz8+wMCA/7+/u/v7wAAAP///////wAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAACH5BAEAADUALAAAAAApACkAAAb/wJpwSCwaj8ikcslsOp/Q
qHRKrVqv2GyV0IAcKNokY4Z5AAKqsPEyI2RSBUZgox5GAhqanuaSNOpCHTMCe3oX
BoA1HjMkhTQHiIADCwSFKw8QiTUaAR0mNBMNAQ6aNQoSjQQzCJoDDwYCMTQvBBgH
kgYMJ44CBn9hKhgLEQUCCQ4JAgIQMwx0WQYLEhIACgALCtYSAQEPgBIGBRUEAL+a
Bgh6AgHmgB0LGisnFRLemhclFDIgIAwLz3UGhMCQAcSECR443AJEoISGFBMqFHCA
wcCAgNsEoJCo7MCMhVoGMODgYWOxBAk+POBAIOQYCAdPOogQgUAAAC2vqJwBoUIG
aZkRKFig4CEAiwMXqYwIoNAnUAofBgxoQeABjABJoxyak2HC06giwo7oIMfABSkL
2pgwSOKphbdvKYxQtUBKgBkhNBw4cKFBFwgQEAgeLDjEjABSZszIlg2A48eQH2NT
XKqy5cuYM9cIAgA7
}
img-P-black: load 64#{
R0lGODlhKQApAMQcABoaGgMCAxAQEC8vLzg4OFpaWggICKWlpQEBARUVFa6urgwM
DHBwcKCgoCEhIaysrIaGhmFhYVJSUo+Pj7i4uJiYmKmpqSgoKAQEBAYGBnt7ewAA
AP///wAAAAAAAAAAACH5BAEAABwALAAAAAApACkAAAXQICeOZGmeaKqubOu+cCzP
dG3feG4rh6KrDUJCkCA0fiaFYMNkCnzI0aBJHURFhwS1mThcK8vtRlC5PgDiDeBx
5RTShbZoWpVzJuGmYNJmLNILDFEFBmlMBnE6BAGGTQEEVwMITQhWdgRbkHYXWxd2
Gn9UCxpyBZNUCIlRFA5pDhRXDIxiAYJIDXliAkc6B62NGw5eOBBowEwAEDcRhcdN
BhE0FhIZzlsZEhYyBLnWTpowALPejgAyBhgB6uvs7ewYBjIDAPT19vf4lnb7/P12
IQA7
}
