QualifyingLifeEventKind.create!(
  title: "Had a baby",
  tool_tip: "Household adds a member due to marriage, birth, adoption, placement for adoption, or placement in foster care",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date of birth",
  reason: " ",
  edi_code: "02-BIRTH", 
  ordinal_position: 10,
  effective_on_kinds: ["date_of_event", "fixed_first_of_next_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # coverage_effective_date: "Date of birth, adoption, placement for adoption, placement in foster care, or marriage.  For marriage: First day of the month following plan selection (not following 15th of month rule); this applies to all members of household")
  )

QualifyingLifeEventKind.create!(
  title: "Adopted a child",
  tool_tip: "A child has been adopted, placed for adoption, or placed in foster care",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date of adoption",
  ordinal_position: 20,
  reason: " ",
  edi_code: "05-ADOPTION", 
  effective_on_kinds: ["date_of_event", "fixed_first_of_next_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # coverage_effective_date: "Date of birth, adoption, placement for adoption, placement in foster care, or marriage.  For marriage: First day of the month following plan selection (not following 15th of month rule); this applies to all members of household")
  )

QualifyingLifeEventKind.create!(
  title: "Married",
  tool_tip: " ",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date of marriage",
  ordinal_position: 30,
  reason: " ",
  edi_code: "32-MARRIAGE", 
  effective_on_kinds: ["first_of_next_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # coverage_effective_date: "Date of birth, adoption, placement for adoption, placement in foster care, or marriage.  For marriage: First day of the month following plan selection (not following 15th of month rule); this applies to all members of household")
  )

QualifyingLifeEventKind.create!(
  title: "Entered into a legal domestic partnership",
  tool_tip: "Entering a domestic partnership as permitted or recognized by the District of Columbia",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date of domestic partnership",
  ordinal_position: 40,
  reason: " ",
  edi_code: "33-ENTERING DOMESTIC PARTNERSHIP", 
  effective_on_kinds: ["first_of_next_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # start_of_sep: "Date partnership entered into",
    # coverage_effective_date: "First day of the month following plan selection (not following 15th of month rule); this applies to all members of household")
  )

QualifyingLifeEventKind.create!(
  title: "Divorced or ended domestic partnership",
  tool_tip: "Divorced, ended a domestic partnership, or legally separated",
  action_kind: "drop_member",
  market_kind: "individual",
  event_kind_label: "Divorce or partnership end date",
  ordinal_position: 45,
  reason: " ",
  edi_code: "01-DIVORCE", 
  effective_on_kinds: ["first_of_next_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # start_of_sep: "Date of divorce, legal separation, partnership termination",
    # coverage_effective_date: "First day of the month following plan selection (not following 15th of month rule); this applies to all members of household")
  )

QualifyingLifeEventKind.create!(
  title: "Lost or will soon lose other health insurance ",
  tool_tip: "Someone in the household is losing other health insurance involuntarily",
  action_kind: "add_benefit",
  event_kind_label: "Coverage end date",
  market_kind: "individual",
  ordinal_position: 50,
  reason: "lost_access_to_mec",
  edi_code: "33-LOST ACCESS TO MEC", 
  effective_on_kinds: ["first_of_next_month"],
  pre_event_sep_in_days: 60,
  post_event_sep_in_days: 60, # "60 days before loss of coverage and 60 days after",
  is_self_attested: true,
    # start_of_sep: "60 days before loss of MEC",
    # coverage_effective_date: "If before loss of coverage: First day of the month after MEC will end. If after loss of MEC: First day of the month following plan selection (not following 15th of month rule)")
  )

QualifyingLifeEventKind.create!(
  title: "Moved or moving to the District of Columbia",
  tool_tip: " ",
  action_kind: "add_benefit",
  market_kind: "individual",
  event_kind_label: "Date of move",
  ordinal_position: 60,
  reason: "move_to_state",
  edi_code: "43-CHANGE OF LOCATION", 
  effective_on_kinds: ["first_of_next_month"],
  pre_event_sep_in_days: 60,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # start_of_sep: "Date of move    ",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Enrollment error caused by DC Health Link",
  tool_tip: "You are not enrolled or are enrolled in the wrong plan because of an error made by DC Health Link or the Department of Health and Human Services",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 70,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_next_month", "first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date approved by HBX",    
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Change in income that may impact my tax credits/cost-sharing reductions ",
  tool_tip: "Increases or decreases to income that may impact eligibility for or the dollar amount of household tax credits or cost-sharing reductions. (Only applies to those currently enrolled in a plan through DC Health Link).",
  action_kind: "change_benefit",
  market_kind: "individual",
  event_kind_label: "Date of change",
  ordinal_position: 80,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date of eligibility redetermination (NOTE: this is not necessarily the date the customer reported the change)",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Health plan contract violation",
  tool_tip: " ",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 90,
  reason: " ",
  edi_code: "33-CONTRACT VIOLATION", 
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date approved by HBX",       
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Native American or Alaskan Native",
  tool_tip: " ",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 30,
  is_self_attested: false,
    # start_of_sep: "Date approved by HBX",    
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Lost eligibility for a hardship exemption",
  tool_tip: "Someone in the household had an exemption from the individual mandate to have health insurance this year but is no longer eligible for the exemption",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date hardship exemption ends",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 30,
  post_event_sep_in_days: 30,
  is_self_attested: false,
    # start_of_sep: "30 days prior to date of ineligibility for exemption",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Beginning or ending service with AmeriCorps State and National, VISTA, or NCCC",
  tool_tip: " ",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date service begins or ends",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # start_of_sep: "Date person begins or ends service in one of the three programs",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Court order to provide coverage for someone",
  tool_tip: " ",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date that court orders that coverage starts",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["exact_date"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # start_of_sep: "Date of the court order",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Newly eligible due to citizenship or immigration status change",
  tool_tip: " ",
  action_kind: "add_benefit",
  market_kind: "individual",
  event_kind_label: "Date of change",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date change was verified (NOTE: this is not necessarily the date the customer reported the change)",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Enrollment error caused by my health insurance company",
  tool_tip: "You are not enrolled or are enrolled in the wrong plan because of an error made by your insurance company",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_next_month", "first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date approved by HBX",    
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Enrollment error caused by someone providing me with enrollment assistance",
  tool_tip: "You are not enrolled or are enrolled in the wrong plan because of an error made by a broker, in-person assister, or another expert trained by DC Health Link",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_next_month", "first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date approved by HBX",       
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Found ineligible for Medicaid after open enrollment ended",
  tool_tip: "Household member(s) had pending Medicaid eligibility at the end of open enrollment but ineligible determination received after open enrollment ended.",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date consumer received notice of Medicaid ineligibility",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Found ineligible for employer-sponsored insurance after open enrollment ended",
  tool_tip: "Did not enroll in individual or family coverage because employer was applying to provide coverage through DC Health Link during open enrollment",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date consumer received notice of SHOP ineligibility    ",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "A natural disaster prevented enrollment ",
  tool_tip: "A natural disaster during open or special enrollment prevented enrollment.",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Day of disaster (or last day of multi-day disaster)",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "A medical emergency prevented enrollment",
  tool_tip: "A serious medical emergency during open enrollment or special enrollment prevented enrollment",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date approved by HBX",       
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "System outage prevented enrollment",
  tool_tip: "A DC Health Link outage or outage in federal or local data sources close to an open enrollment or special enrollment deadline prevented enrollment",
  action_kind: "add_member",
  market_kind: "individual",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Day of outage",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Domestic abuse",
  tool_tip: "A person is leaving an abusive spouse or domestic partner",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date you left the household",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_month"],
  pre_event_sep_in_days: 0,
  post_event_sep_in_days: 60,
  is_self_attested: false,
    # start_of_sep: "Date person leaves spouse or domestic partner",
    # coverage_effective_date: "Regular effective date")
  )

QualifyingLifeEventKind.create!(
  title: "Employer did not pay premiums on time",
  tool_tip: "Employer coverage is ending due to employer’s failure to make payments",
  action_kind: "add_member",
  market_kind: "individual",
  event_kind_label: "Date of notice of plan termination",
  ordinal_position: 100,
  reason: " ",
  edi_code: " ",
  effective_on_kinds: ["first_of_next_month"],
  pre_event_sep_in_days: 60,
  post_event_sep_in_days: 60,
  is_self_attested: true,
    # start_of_sep: "Based on circumstances as determined by HBX Date of loss of coverage",
    # coverage_effective_date: "As determined by HBX, with the intent of preventing gaps in health coverage")
  )

QualifyingLifeEventKind.create!(
  title: "Dependent loss of employer-sponsored insurance because employee is enrolling in Medicare ",
  tool_tip: " ",
  action_kind: "add_benefit",
  event_kind_label: "Last day of coverage",
  market_kind: "individual",
  ordinal_position: 14,
  reason: "employee_gaining_medicare",
  edi_code: "33-LOST ACCESS TO MEC", 
  effective_on_kinds: ["first_of_next_month"],
  pre_event_sep_in_days: 60,
  post_event_sep_in_days: 60, # "60 days before loss of coverage and 60 days after",
  is_self_attested: true,
    # event_kind_label: "coverage end date",
    # start_of_sep: "60 days before loss of MEC",
    # coverage_effective_date: "If before loss of coverage: First day of the month after MEC will end. If after loss of MEC: First day of the month following plan selection (not following 15th of month rule)")
  )

