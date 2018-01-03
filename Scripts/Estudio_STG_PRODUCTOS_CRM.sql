USE STAGE; 
 
SELECT COUNT(*) TOTAL_REGISTROS 
,SUM(CASE WHEN LENGTH(TRIM(PRODUCT_ID)) <> 0 THEN 1 ELSE 0 END) TOTAL_PRODUCT_ID
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(PRODUCT_ID)) <> 0 THEN PRODUCT_ID ELSE 0 END) TOTAL_DISNTINTOS_PRODUCT_ID
,SUM(CASE WHEN LENGTH(TRIM(CUSTOMER_ID)) <> 0 THEN 1 ELSE 0 END) TOTAL_CUSTOMER_ID
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(CUSTOMER_ID)) <> 0 THEN CUSTOMER_ID ELSE 0 END) TOTAL_DISNTINTOS_CUSTOMER_ID
,SUM(CASE WHEN LENGTH(TRIM(PRODUCT_NAME)) <> 0 THEN 1 ELSE 0 END) TOTAL_PRODUCT_NAME
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(PRODUCT_NAME)) <> 0 THEN PRODUCT_NAME ELSE 0 END) TOTAL_DISNTINTOS_PRODUCT_NAME
,SUM(CASE WHEN LENGTH(TRIM(ACCESS_POINT)) <> 0 THEN 1 ELSE 0 END) TOTAL_ACCESS_POINT
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(ACCESS_POINT)) <> 0 THEN ACCESS_POINT ELSE 0 END) TOTAL_DISNTINTOS_ACCESS_POINT
,SUM(CASE WHEN LENGTH(TRIM(CHANNEL)) <> 0 THEN 1 ELSE 0 END) TOTAL_CHANNEL
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(CHANNEL)) <> 0 THEN CHANNEL ELSE 0 END) TOTAL_DISNTINTOS_CHANNEL
,SUM(CASE WHEN LENGTH(TRIM(AGENT_CODE)) <> 0 THEN 1 ELSE 0 END) TOTAL_AGENT_CODE
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(AGENT_CODE)) <> 0 THEN AGENT_CODE ELSE 0 END) TOTAL_DISNTINTOS_AGENT_CODE
,SUM(CASE WHEN LENGTH(TRIM(START_DATE)) <> 0 THEN 1 ELSE 0 END) TOTAL_START_DATE
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(START_DATE)) <> 0 THEN START_DATE ELSE 0 END) TOTAL_DISNTINTOS_START_DATE
,SUM(CASE WHEN LENGTH(TRIM(INSTALL_DATE)) <> 0 THEN 1 ELSE 0 END) TOTAL_INSTALL_DATE
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(INSTALL_DATE)) <> 0 THEN INSTALL_DATE ELSE 0 END) TOTAL_DISNTINTOS_INSTALL_DATE
,SUM(CASE WHEN LENGTH(TRIM(END_DATE)) <> 0 THEN 1 ELSE 0 END) TOTAL_END_DATE
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(END_DATE)) <> 0 THEN END_DATE ELSE 0 END) TOTAL_DISNTINTOS_END_DATE
,SUM(CASE WHEN LENGTH(TRIM(PRODUCT_CITY)) <> 0 THEN 1 ELSE 0 END) TOTAL_PRODUCT_CITY
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(PRODUCT_CITY)) <> 0 THEN PRODUCT_CITY ELSE 0 END) TOTAL_DISNTINTOS_PRODUCT_CITY
,SUM(CASE WHEN LENGTH(TRIM(PRODUCT_ADDRESS)) <> 0 THEN 1 ELSE 0 END) TOTAL_PRODUCT_ADDRESS
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(PRODUCT_ADDRESS)) <> 0 THEN PRODUCT_ADDRESS ELSE 0 END) TOTAL_DISNTINTOS_PRODUCT_ADDRESS
,SUM(CASE WHEN LENGTH(TRIM(PRODUCT_POSTAL_CODE)) <> 0 THEN 1 ELSE 0 END) TOTAL_PRODUCT_POSTAL_CODE
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(PRODUCT_POSTAL_CODE)) <> 0 THEN PRODUCT_POSTAL_CODE ELSE 0 END) TOTAL_DISNTINTOS_PRODUCT_POSTAL_CODE
,SUM(CASE WHEN LENGTH(TRIM(PRODUCT_STATE)) <> 0 THEN 1 ELSE 0 END) TOTAL_PRODUCT_STATE
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(PRODUCT_STATE)) <> 0 THEN PRODUCT_STATE ELSE 0 END) TOTAL_DISNTINTOS_PRODUCT_STATE
,SUM(CASE WHEN LENGTH(TRIM(PRODUCT_COUNTRY)) <> 0 THEN 1 ELSE 0 END) TOTAL_PRODUCT_COUNTRY
,COUNT(DISTINCT CASE WHEN LENGTH(TRIM(PRODUCT_COUNTRY)) <> 0 THEN PRODUCT_COUNTRY ELSE 0 END) TOTAL_DISNTINTOS_PRODUCT_COUNTRY 
FROM STG_PRODUCTOS_CRM; 