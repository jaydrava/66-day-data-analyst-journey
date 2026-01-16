DROP TABLE IF EXISTS campaign_daily_metrics;

CREATE TABLE campaign_daily_metrics (
  campaign_id     INT NOT NULL,
  campaign_name   VARCHAR(100) NOT NULL,
  campaign_type   CHAR(1) NOT NULL CHECK (campaign_type IN ('A','B')),
  send_date       DATE NOT NULL,

  emails_sent     INT NOT NULL CHECK (emails_sent >= 0),
  opens           INT NOT NULL CHECK (opens >= 0),
  clicks          INT NOT NULL CHECK (clicks >= 0),
  purchases       INT NOT NULL CHECK (purchases >= 0),
  revenue         NUMERIC(12,2) NOT NULL CHECK (revenue >= 0),

  CONSTRAINT pk_campaign_daily PRIMARY KEY (campaign_id, send_date),
  CONSTRAINT ck_funnel_order CHECK (
    opens <= emails_sent AND
    clicks <= opens AND
    purchases <= clicks
  )
);

CREATE INDEX idx_campaign_daily_date ON campaign_daily_metrics (send_date);
CREATE INDEX idx_campaign_daily_type ON campaign_daily_metrics (campaign_type);

DROP TABLE IF EXISTS customer_campaign_activity;

CREATE TABLE customer_campaign_activity (
  customer_id     INT NOT NULL,
  campaign_id     INT NOT NULL,
  activity_date   DATE NOT NULL,

  opened          SMALLINT NOT NULL CHECK (opened IN (0,1)),
  clicked         SMALLINT NOT NULL CHECK (clicked IN (0,1)),
  purchased       SMALLINT NOT NULL CHECK (purchased IN (0,1)),
  revenue         NUMERIC(12,2) NOT NULL CHECK (revenue >= 0),

  age_group       VARCHAR(10) NOT NULL CHECK (age_group IN ('18-25','26-35','36-50','50+')),
  region          VARCHAR(10) NOT NULL CHECK (region IN ('East','West','Midwest','South')),
  customer_type   VARCHAR(10) NOT NULL CHECK (customer_type IN ('New','Returning')),

  CONSTRAINT ck_customer_funnel CHECK (
    clicked <= opened AND
    purchased <= clicked AND
    (purchased = 0 AND revenue = 0) OR (purchased = 1 AND revenue > 0)
  )
);

CREATE INDEX idx_customer_activity_campaign_date ON customer_campaign_activity (campaign_id, activity_date);
CREATE INDEX idx_customer_activity_customer ON customer_campaign_activity (customer_id);
CREATE INDEX idx_customer_activity_segments ON customer_campaign_activity (age_group, region, customer_type);