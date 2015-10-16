
  MERGE tblMileage as t
USING [tblMileageImport] as s
ON (T.nhid = s.NHID AND t.INTID = s.[IntID])
WHEN MATCHED THEN
WHEN NOT MATCHED THEN
INSERT   (NHID,IntID,Mileage) VALUES (s.nhid,s.intid, s.[Mileage]);
