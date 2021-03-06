-- non-equal join
SELECT * FROM
(
SELECT CAL_DT, ORDER_ID FROM TEST_KYLIN_FACT GROUP BY CAL_DT, ORDER_ID
) FACT
LEFT JOIN
(
SELECT CAL_DT as DT_CAL_DT, WEEK_BEG_DT FROM EDW.TEST_CAL_DT
) DT
ON FACT.CAL_DT = DT.DT_CAL_DT AND WEEK_BEG_DT = DATE'2013-03-24'

