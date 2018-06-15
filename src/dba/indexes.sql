CREATE INDEX business_ix_id ON business(business_id);
CREATE INDEX business_ix_postal_code ON business(postal_code);
CREATE INDEX inspection_ix_business_id_date ON inspection(business_id, date);
CREATE INDEX inspection_ix_date ON inspection(date);
CREATE INDEX violation_ix_business_id_date ON violation(business_id, date);
CREATE INDEX violation_ix_date ON violation(date);
CREATE INDEX violation_ix_type_id ON violation(ViolationTypeID);
