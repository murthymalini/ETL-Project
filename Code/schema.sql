drop table "bch";
drop table "bnb";
drop table "btc";
drop table "crd"; 
drop table "eos";
drop table "trx";
drop table "eth";
drop table "ltc";
drop table "neo";
drop table "stlr";
drop table "exchange_volume_api";
drop table "final_price_api";

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

create table Exchange_Vol_API(
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
select*from Exchange_Vol_API;

create table Final_Price_API(
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
