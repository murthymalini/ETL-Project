CREATE TABLE public."crd"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from crd;

CREATE TABLE public."eos"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from eos;

CREATE TABLE public."stlr"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from stlr;

CREATE TABLE public."btc"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from btc;

CREATE TABLE public."eth"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from eth;

CREATE TABLE public."ltc"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from ltc;

CREATE TABLE public."trx"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from trx;

CREATE TABLE public."bch"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from bch;

CREATE TABLE public."bnb"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from bnb;

CREATE TABLE public."neo"
(
   "Date" date,
   "Market Cap (USD)" double precision,
   "Number of Coins" double precision
);
select*from neo;

create table final_price(
	"Date" date,
	"BTC" double precision,
	"ETH" double precision,
	"LTC" double precision,
	"BCH" double precision,
	"EOS" double precision,
	"BNB" double precision,
	"XLM" double precision,
	"TRX" double precision,
	"ADA" double precision,
	"NEO" double precision
);
select*from final_price;

create table total_ex_vol(
	"Date" date,
	"BTC" double precision,
	"ETH" double precision,
	"LTC" double precision,
	"BCH" double precision,
	"EOS" double precision,
	"BNB" double precision,
	"XLM" double precision,
	"TRX" double precision,
	"ADA" double precision,
	"NEO" double precision
);
select*from total_ex_vol;

select total_ex_vol."BCH" as "Exchange Volume", final_price."BCH" as "Price (USD)", bch."Date", bch."Market Cap (USD)", bch."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join bch on final_price."Date" = bch."Date";

select total_ex_vol."BNB" as "Exchange Volume", final_price."BNB" as "Price (USD)", bnb."Date", bnb."Market Cap (USD)", bnb."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join bnb on final_price."Date" = bnb."Date";

select total_ex_vol."BTC" as "Exchange Volume", final_price."BTC" as "Price (USD)", btc."Date", btc."Market Cap (USD)", btc."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join btc on final_price."Date" = btc."Date";

select total_ex_vol."ADA" as "Exchange Volume", final_price."ADA" as "Price (USD)", crd."Date", crd."Market Cap (USD)", crd."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join crd on final_price."Date" = crd."Date";

select total_ex_vol."EOS" as "Exchange Volume", final_price."EOS" as "Price (USD)", eos."Date", eos."Market Cap (USD)", eos."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join eos on final_price."Date" = eos."Date";

select total_ex_vol."ETH" as "Exchange Volume", final_price."ETH" as "Price (USD)", eth."Date", eth."Market Cap (USD)", eth."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join eth on final_price."Date" = eth."Date";

select total_ex_vol."LTC" as "Exchange Volume", final_price."LTC" as "Price (USD)", ltc."Date", ltc."Market Cap (USD)", ltc."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join ltc on final_price."Date" = ltc."Date";

select total_ex_vol."NEO" as "Exchange Volume", final_price."NEO" as "Price (USD)", neo."Date", neo."Market Cap (USD)", neo."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join neo on final_price."Date" = neo."Date";

select total_ex_vol."XLM" as "Exchange Volume", final_price."XLM" as "Price (USD)", stlr."Date", stlr."Market Cap (USD)", stlr."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join stlr on final_price."Date" = stlr."Date";

select total_ex_vol."TRX" as "Exchange Volume", final_price."TRX" as "Price (USD)", trx."Date", trx."Market Cap (USD)", trx."Number of Coins"
from total_ex_vol
join final_price on total_ex_vol."Date" = final_price."Date"
join trx on final_price."Date" = trx."Date";

