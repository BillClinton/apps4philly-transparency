--
-- Table structure for table `commodities_contract`
--
CREATE TABLE IF NOT EXISTS `commodities_contract` (
  `bid_number` varchar(256) NOT NULL,
  `contract_number` varchar(256) NOT NULL,
  `contract_description` varchar(256) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `contract_type` varchar(256) NOT NULL,
  `vendor_name` varchar(256) NOT NULL,
  `department_name` varchar(256) NOT NULL,
  `contract_amount` float NOT NULL,
  `total_contract_months` int(11) NOT NULL,
  `Total_Transactions` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `professional_services_contract`
--
CREATE TABLE IF NOT EXISTS `professional_services_contract` (
  `original_contract_id` varchar(256) NOT NULL,
  `current_item_id` varchar(256) NOT NULL,
  `department_name` varchar(256) NOT NULL,
  `vendor` varchar(256) NOT NULL,
  `contract_structure_type` varchar(256) NOT NULL,
  `short_desc` varchar(256) NOT NULL,
  `start_dt` date NOT NULL,
  `end_dt` date NOT NULL,
  `days_remaining` int(11) NOT NULL,
  `contract_amount` float NOT NULL,
  `tot_payments` float NOT NULL,
  `orig_vendor` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `campaign_finance_data`
--
CREATE TABLE IF NOT EXISTS `campaign_finance_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filer_name` text NOT NULL,
  `year` int(4) NOT NULL,
  `cycle` int(11) NOT NULL,
  `doctype` varchar(256) NOT NULL,
  `entity_name` varchar(256) NOT NULL,
  `entity_address_line_1` varchar(256) NOT NULL,
  `entity_address_line_2` varchar(256) NOT NULL,
  `entity_city` varchar(256) NOT NULL,
  `entity_state` varchar(256) NOT NULL,
  `entity_zip` varchar(256) NOT NULL,
  `occupation` varchar(256) NOT NULL,
  `employer_name` varchar(256) NOT NULL,
  `employer_address_line_1` varchar(256) NOT NULL,
  `employer_address_line_2` varchar(256) NOT NULL,
  `employer_city` varchar(256) NOT NULL,
  `employer_state` varchar(256) NOT NULL,
  `employer_zip` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(15,0) NOT NULL,
  `expenditure_desc` varchar(256) NOT NULL,
  `amended` int(11) NOT NULL,
  `subdate` date NOT NULL,
  `filedby` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_name` (`entity_name`),
  KEY `employer_name` (`employer_name`),
  KEY `year` (`year`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=826182 ;

--
-- Table structure for table `campaign_finance_contract`
--
CREATE TABLE IF NOT EXISTS `campaign_finance_contract` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `vendor` varchar(256) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for table `campaign_finance_contract`
--
ALTER TABLE `campaign_finance_contract`
  ADD CONSTRAINT `campaign_finance_contract_ibfk_1` FOREIGN KEY (`id`) REFERENCES `campaign_finance_data` (`id`);
