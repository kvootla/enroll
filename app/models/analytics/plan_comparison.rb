module Analytics
  class PlanComparison
    def self.data
      @data = {
        'shop' => {
          'Aetna'=>{
            '2014-2015'=>[
              ['77422DC0070013-01', '77422DC0070013-01'],
              ['77422DC0070009-01', '77422DC0070009-01'],
              ['73987DC0040021-01', '73987DC0040021-01'],
              ['73987DC0040013-01', '73987DC0040013-01'],
              ['77422DC0070005-01', '77422DC0070005-01'],
              ['73987DC0040009-01', '73987DC0040033-01'],
              ['73987DC0040005-01', '73987DC0040005-01'],
              ['73987DC0040017-01', '73987DC0040017-01'],
              ['73987DC0040025-01', '73987DC0040025-01'],
              ['73987DC0040001-01', '73987DC0040001-01'],
            ],
            '2015-2016'=>[
              ['77422DC0070013-01', '77422DC0070013-01'],
              ['77422DC0070005-01', '77422DC0070005-01'],
              ['77422DC0070009-01', '77422DC0070009-01'],
              ['73987DC0040021-01', '73987DC0040021-01'],
              ['73987DC0040013-01', '73987DC0040021-01'],
              ['77422DC0070025-01', '77422DC0070025-01'],
              ['73987DC0040033-01', '73987DC0040017-01'],
              ['73987DC0040005-01', '73987DC0040005-01'],
              ['73987DC0040017-01', '73987DC0040017-01'],
              ['73987DC0040034-01', '73987DC0040034-01'],
            ]
          },
          'CareFirst'=>{
            '2014-2015'=>[
              ['78079DC0220012-01', '78079DC0220012-01'],
              ['86052DC0520004-01', '86052DC0520004-01'],
              ['78079DC0300004-01', '78079DC0300004-01'],
              ['78079DC0220014-01', '78079DC0220014-01'],
              ['86052DC0440008-01', '86052DC0440008-01'],
              ['86052DC0460006-01', '86052DC0460006-01'],
              ['78079DC0170001-01', '78079DC0170001-01'],
              ['78079DC0220015-01', '78079DC0220015-01'],
              ['78079DC0230008-01', '78079DC0230008-01'],
              ['86052DC0560004-01', '86052DC0560004-01'],
              ['78079DC0220013-01', '78079DC0220013-01'],
            ],
            '2015-2016'=>[
              ['78079DC0220012-01', '78079DC0220020-01'],
              ['86052DC0520004-01', '86052DC0440014-01'],
              ['78079DC0300004-01', '78079DC0220027-01'],
              ['78079DC0220019-01', '78079DC0220021-01'],
              ['78079DC0220013-01', '78079DC0220024-01'],
              ['86052DC0460006-01', '86052DC0460010-01'],
              ['78079DC0220014-01', '78079DC0220020-01'],
              ['86052DC0440008-01', '86052DC0440010-01'],
              ['86052DC0440009-01', '86052DC0440011-01'],
              ['78079DC0170001-01', '78079DC0170001-01'],
            ]
          },
          'Kaiser'=>{
            '2014-2015'=>[
              ['94506DC0350004-01', '94506DC0350004-01'],
              ['94506DC0350018-01', '94506DC0350018-01'],
              ['94506DC0350005-01', '94506DC0350005-01'],
              ['94506DC0350006-01', '94506DC0350006-01'],
              ['94506DC0350002-01', '94506DC0350002-01'],
              ['94506DC0350016-01', '94506DC0350016-01'],
              ['94506DC0350001-01', '94506DC0350001-01'],
              ['94506DC0360003-01', '94506DC0360003-01'],
              ['94506DC0350007-01', '94506DC0350007-01'],
              ['94506DC0350019-01', '94506DC0350019-01'],
            ],
            '2015-2016'=>[
              ['94506DC0350004-01', '94506DC0350004-01'],
              ['94506DC0350005-01', '94506DC0350005-01'],
              ['94506DC0350018-01', '94506DC0350018-01'],
              ['94506DC0350001-01', '94506DC0350001-01'],
              ['94506DC0350016-01', '94506DC0350016-01'],
              ['94506DC0350006-01', '94506DC0350006-01'],
              ['94506DC0350021-01', '94506DC0350021-01'],
              ['94506DC0350002-01', '94506DC0350002-01'],
              ['94506DC0360001-01', '94506DC0360001-01'],
              ['94506DC0350007-01', '94506DC0350007-01'],
            ]
          },
          'United Health Care'=>{
            '2014-2015'=>[
              ['41842DC0010032-01', '41842DC0010032-01'],
              ['41842DC0010033-01', '41842DC0010032-01'],
              ['41842DC0010068-01', '41842DC0010068-01'],
              ['41842DC0040071-01', '41842DC0040071-01'],
              ['41842DC0010057-01', '41842DC0010056-01'],
              ['41842DC0010056-01', '41842DC0010056-01'],
              ['41842DC0010004-01', '41842DC0010004-01'],
              ['41842DC0010030-01', '41842DC0010030-01'],
              ['41842DC0010031-01', '41842DC0010031-01'],
              ['75753DC0010030-01', '75753DC0010030-01'],
            ],
            '2015-2016'=>[
              ['41842DC0010032-01', '41842DC0010032-01'],
              ['41842DC0010033-01', '41842DC0010032-01'],
              ['41842DC0010068-01', '41842DC0010068-01'],
              ['41842DC0040071-01', '41842DC0040071-01'],
              ['41842DC0010057-01', '41842DC0010056-01'],
              ['41842DC0010056-01', '41842DC0010056-01'],
              ['41842DC0010004-01', '41842DC0010004-01'],
              ['41842DC0010030-01', '41842DC0010030-01'],
              ['41842DC0010031-01', '41842DC0010031-01'],
              ['75753DC0010030-01', '75753DC0010030-01'],
            ]
          },
        },
        'individual' => {
          'CareFirst' => {
            '2014-2015'=>[
              ['86052DC0430002-01', '86052DC0430002-01'],
              ['86052DC0410001-01', '86052DC0410001-01'],
              ['86052DC0410002-01', '86052DC0410002-01'],
              ['86052DC0410003-01', '86052DC0410003-01'],
              ['78079DC0210001-01', '78079DC0210001-01'],
              ['86052DC0400003-01', '86052DC0400003-01'],
              ['86052DC0400004-01', '86052DC0400004-01'],
              ['78079DC0200001-01', '78079DC0200001-01'],
              ['86052DC0400002-01', '86052DC0400002-01'],
              ['86052DC0430001-01', '86052DC0430001-01'],
            ],
            '2015-2016'=>[
              ['86052DC0430002-01', '86052DC0400008-01'],
              ['86052DC0410003-01', '86052DC0400006-01'],
              ['86052DC0410001-01', '86052DC0400005-01'],
              ['86052DC0410002-01', '86052DC0400005-01'],
              ['86052DC0400002-01', '86052DC0400002-01'],
              ['78079DC0210001-01', '78079DC0210001-01'],
              ['78079DC0180001-01', '78079DC0160002-01'],
              ['86052DC0400004-01', '86052DC0400004-01'],
              ['78079DC0160001-01', '78079DC0160001-01'],
              ['86052DC0430001-01', '86052DC0400003-01'],
              ['86052DC0400003-01', '86052DC0400003-01'],
            ]
          },
          'Kaiser' => {
            '2014-2015'=>[
              ['94506DC0390001-01', '94506DC0390001-01'],
              ['94506DC0390002-01', '94506DC0390002-01'],
              ['94506DC0390004-01', '94506DC0390004-01'],
              ['94506DC0390003-01', '94506DC0390003-01'],
              ['94506DC0390007-01', '94506DC0390007-01'],
              ['94506DC0390006-01', '94506DC0390006-01'],
              ['94506DC0390005-01', '94506DC0390005-01'],
              ['94506DC0390010-01', '94506DC0390010-01'],
              ['94506DC0390009-01', '94506DC0390009-01'],
              ['94506DC0390004-04', '94506DC0390004-04'],
            ],
            '2015-2016'=>[
              ['94506DC0390001-01', '94506DC0390001-01'],
              ['94506DC0390002-01', '94506DC0390002-01'],
              ['94506DC0390004-01', '94506DC0390004-01'],
              ['94506DC0390007-01', '94506DC0390007-01'],
              ['94506DC0390003-01', '94506DC0390003-01'],
              ['94506DC0390010-01', '94506DC0390010-01'],
              ['94506DC0390006-01', '94506DC0390006-01'],
              ['94506DC0390009-01', '94506DC0390009-01'],
              ['94506DC0390005-01', '94506DC0390005-01'],
              ['94506DC0390008-01', '94506DC0390008-01'],
            ]
          }
        }
      }
    end

    def self.get_carriers_by_type(type='individual')
      data[type].keys
    end

    def self.get_hois_data_by_type_carrier_and_years(type='individual', carrier='', years=[2015,2016])
      carrier = get_carriers_by_type(type).first if carrier.blank?
      data[type][carrier][years.join('-')]
    end

    def self.get_hois_data_by_type_and_carrier(type='individual', carrier='')
      carrier = get_carriers_by_type(type).first if carrier.blank?
      pdata = data[type][carrier]['2014-2015']
      bdata = data[type][carrier]['2015-2016']
      hois_data = []
      (pdata.map(&:last) & bdata.map(&:first)).each do |h|
        pd = pdata.detect{|d| d.last == h}.first
        bd = bdata.detect{|d| d.first == h}.last
        hois_data.push([pd, h, bd])
      end
      hois_data
    end
  end
end
