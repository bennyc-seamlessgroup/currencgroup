import { profiles } from './profiles';
export const labels: Record<string, string> = {
  Overview: '公司概况',
  'About us': '关于我们',
  'Executive Management': '公司管理层',
  'Board of Directors': '董事会成员',
  'Corporate Governance': '公司治理',
  'News & Events': '新闻及活动',
  'Investor News': '投资者新闻',
  'Corporate Featured News': '公司新闻',
  'Events & Presentations': '活动及演示',
  'Stock Info': '股票信息',
  'Stock Quote': '股价情况',
  'Stock Chart': '股价图',
  'Historical Stock Quote': '历史股价查询',
  'Investment Calculator': '投资计算器',
  Financials: '财务信息',
  'SEC Filings': '美国证交会公告',
  Resources: '投资者资源',
  'Investor FAQs': '投资者常见问题',
  'Information Request Form': '信息咨询',
  'Investor Email Alerts': '邮件订阅',
  'Investor Contacts': '投资者联络',
  'Site Map': '网站地图',
  Search: '搜索',
};
const bios = [
  `江庆恩先生自2025年8月16日起担任Currenc的首席执行官，并自业务合并完成后起担任Currenc的执行主席及董事。他是Seamless Group Inc.的创始人及现任主席，自2014年起一直担任该公司董事会成员。他同时也是TNG (Asia) Limited的首席执行官，该公司提供从电子钱包到跨境汇款等金融科技服务。
江先生曾多次创业，在技术、电商、支付网关和商业解决方案领域拥有丰富经验，通过其软件公司SINO Dynamic Solutions Limited，长期为知名企业集团和保险公司（如宏利人寿、友邦保险、FDW、ING等）开发企业软件。2015年11月，江先生推出了TNG Wallet，专注于为未开户人群和外籍佣工提供金融服务，包括电子支付、P2P转账、实时全球汇款、全球现金取款、全球账单支付和全球SIM卡充值等。2016年，TNG Wallet突出重围，获得香港金融管理局颁发的储值支付工具牌照（SVF0003）。多年来，江先生及其公司屡获殊荣，包括2021年香港创新领军人物大奖The InnoStars Award、2017年德勤香港明日之星奖、以及2017年德勤中国明日之星奖。
江先生在美国夏威夷大学获得旅游管理及发展学士学位，并于2019年5月至2023年3月担任香港贸易发展局金融服务咨询委员会成员。`,
  `黄应和先生自业务合并完成以来一直担任Currenc的董事，并自2018年12月起担任Seamless Group Inc.的董事职务。目前还任新加坡私营企业ZWEEC Analytics Pte Ltd非执行董事长，该公司专注于保护国家水资源安全计算机视觉技术解决方案。黄先生还是美国纳斯达克上市公司Finger Motion Inc.的独立董事，该公司在中国从事移动支付和充值平台解决方案业务。黄先生同时也是新加坡零售分析公司Almazing Pte Ltd的独立董事。
黄先生此前曾任多家上市公司独立董事，包括新加坡上市公司Mencast Holdings Ltd（2008年至2013年）和中国泰山科技集团控股有限公司（2017年至2018年），以及美国纳斯达克上市公司Alvarion Inc.（2009年至2012年）。在此之前，他还曾在淡马锡控股公司旗下全资子公司Singapore Technologies Telemedia Pte Ltd担任主管运营的执行副总裁达五年。黄先生还曾担任新加坡交易所上市公司Keppel Telecommunications & Transportation Ltd (Keppel T&T)的常务董事，该公司是Keppel集团旗下公司。
黄先生早年曾在新加坡共和国武装部队担任职业军官，自1973年起加入新加坡共和国武装部队并获得奖学金前往英国接受军官培训，先后就读于桑德赫斯特皇家军事学院（Royal Military Academy, Sandhurst）和英国皇家军事科学学院（Royal Military College of Science, Shrivenham），并于1977年在此获得电信系统工程荣誉学士学位。在1990年9月投入私营商业前，黄先生曾担任新加坡共和国武装部队讯号长（Chief Signal Officer）。`,
  `Eric Weinstein先生自2021年3月起担任Currenc的董事，并自2021年3月至业务合并完成前担任INFINT董事会主席。Weinstein先生曾任多户型投资公司Greywood, LLC董事总经理。加入Greywood之前，Weinstein先生曾担任路博迈集团董事总经理，期间担任路博迈投资风险委员会成员、以及路博迈另类投资管理之投资委员会成员，还担任路博迈对冲基金解决方案主席。
路博迈集团的前身是雷曼兄弟资产管理部门。Weinstein先生在雷曼兄弟任职期间担任董事总经理、及雷曼兄弟另类投资管理部门的首席投资官。加入雷曼兄弟之前，Weinstein先生在Larch Lane Advisors共同管理一只FOF基金和一只对冲基金种子基金。在此之前，他在SBC Warburg/O'Connor担任风险管理咨询服务主管。早年间Weinstein先生还曾在First Manhattan Consulting Group担任副总裁，并曾在摩根士丹利担任副经理。
Weinstein先生获得美国宾夕法尼亚大学沃顿商学院工商管理硕士学位、以及美国布兰迪斯大学文学学士学位，目前他还在布兰迪斯大学国际商学院担任监事会成员。`,
  `Kevin Chen先生自2021年3月起担任Currenc的董事。2020年8月起，陈先生在纳斯达克上市公司Edoc Acquisition Corporation（纳斯达克代码：ADOC）担任董事长兼首席执行官，该公司是特殊目的收购公司，专注于北美和亚太地区医疗保健及医疗保健产品服务提供商领域。陈先生自2019年2月起担任美国顶尖医疗保健房地产投资信托基金Flagship Healthcare Properties Fund所投资的开曼群岛独立公司Horizon Global Access Fund的董事会成员。
自2018年1月起，陈先生担任纽约投资管理公司Horizon Financial的首席投资官兼首席经济学家，为投资美国医疗保健设施的客户提供咨询，该公司为全球客户提供跨境解决方案，在美国医疗保健设施投资领域尤为突出。此外，陈先生目前在ACM Macro LLC任职经理，自2017年6月起担任此职务，该公司是Horizon Financial Advisors LLC的注册投资顾问和关联实体。2013年至2017年间，陈先生在几家未在美国金融业监管局（FINRA）注册的投资公司管理投资组合，于2017年1月至2017年6月担任海银资本Hywin Capital Management, LLC的首席战略官，并于2013年8月至2017年1月担任Three Mountain Capital Management LP的首席投资官。
陈先生在投资管理领域，特别是医疗保健设施方面，拥有丰富的经验和广泛的人脉。在其广泛的商业经历中，陈先生曾先后担任诸多要职，包括中国绝对收益投资管理协会联合创始人兼副会长、摩根士丹利资产配置总监（2004年8月至2008年8月）、以及中国国家开发银行经理（1998年9月至2000年8月）。陈先生曾在哈佛大学、福特汉姆大学、佩斯大学和西班牙IESE商学院任教。他曾是纽约大学全球事务理学硕士专业兼职咨询委员会成员及私营部门专业临时负责人，自2012年起担任该校全球事务中心兼职教授。
陈先生获得瑞士洛桑大学金融资产管理中心金融学博士学位、荷兰蒂尔堡大学经济研究中心MBA学位、以及中国人民大学经济学学士学位。`,
  `Wan Lung Eng 拥有超过20年的财务、投资及企业管理经验，曾担任企业首席财务官、投资银行家及私募股权投资专家，在跨行业财务战略、并购、资本市场及业务拓展领域具有丰富经验。
加入本公司前，他曾担任全球医疗服务机构VitalCheck Wellness的首席财务官，全面负责财务战略、规划、税务、资金管理、会计和财务报告等工作。此前，他在生物科技公司Teclison担任首席财务官，主导公司首轮机构融资及美股IPO筹备工作，包括美国证券交易委员会（SEC）申报。
更早之前，Wan Lung Eng曾领导伦敦上市公司Spectral MD完成IPO，并通过组织重组、定价优化、产品多元化和国际扩张，推动公司估值增长3.8倍。他还担任过Immersive Artistry的财务副总裁，负责战略规划及融资。
在进入企业财务管理领域前，他曾在RBC Capital Markets担任并购顾问，专注于科技与媒体行业交易，并曾在Macquarie Group负责自营投资，并在Deutsche Bank、Wells Fargo及淡马锡控股旗下的私募股权公司CIAS International担任高级职务。
他持有美国杜克大学富卡商学院（Fuqua School of Business）MBA学位，以及新加坡南洋理工大学的会计学学士学位。`,
  `梁嘉丽拥有超过20年全球战略联盟、跨境企业拓展及Web3生态搭建经验，业务横跨亚太及全球市场。她曾担任Animoca Brands日本战略副总裁兼董事，以及MADworld首席战略官，主导元宇宙布局、IP战略合作及区块链生态全球化发展。深耕香港、日本、亚太科技圈层与全球Web3机构资源，现任Currenc Group（NASDAQ: CURR）创投合伙人，负责全球战略伙伴拓展、生态共建、智能AI与Web3数字资产业务融合落地。`,
];
export const chineseProfiles = profiles.map((p, i) => ({
  ...p,
  bio: bios[i],
  role: [
    '首席执行官',
    '董事',
    '董事',
    '董事',
    '首席财务官',
    '创投合伙人（Web3 / AI / RWA / 代币化）',
  ][i],
}));
export const chineseFaqs = [
  {
    q: 'Currenc集团的业务是什么？',
    a: `Currenc Group Inc.（纳斯达克代码：CURR）是东南亚及全球范围的金融科技数字汇款先驱，为数百万移徙工人和未开户人群提供服务。我们的平台赋能电子钱包、汇款公司和企业提供实时、全天候的全球支付服务，推动欠发达社区的金融普惠。
Currenc集团的商业模式具有高度可扩展性，可规模化地灵活应用于其他地区市场。在东南亚多年经营所积累的经验，有助于公司深刻了解亚洲市场个人和商家所面临的痛点，同时也促进了公司基础设施、产品及合规流程的发展，从而使我们能够在核心市场迅速复制此模式并拓展业务。
Tranglo 全球汇款业务 - Tranglo 为持牌银行和货币服务运营商提供统一的应用程序编程接口。作为跨境汇款的一站式结算代理，助力客户实现全球范围内的转账和支付处理。Tranglo支付网络触达广泛地区，截至2024年3月31日，已覆盖70多个国家、5,000多家银行及电子钱包运营商，同时还为116家企业客户提供服务。在截至2024年3月31日的三个月内，Tranglo 处理了约294万笔交易，交易金额总计13.5亿美元。Tranglo 的汇款收入主要来自香港、新加坡和韩国客户的交易。
Tranglo 全球话费充值业务 - Tranglo在全球话费充值转账市场中占据重要地位，提供电信话费充值转账的交换平台，并对境外话费进行批发分销。Tranglo的自研技术为客户提供多种充值选项，支持带PIN码和无PIN码的话费转账。目前，Tranglo 运营着全球范围最广的话费充值转账网络之一，覆盖150多个国家的500多家移动运营商。
WalletKu 印尼话费零售业务 - WalletKu 专注于服务印度尼西亚市场的话费零售业务。除为用户提供话费和互联网流量充值外，WalletKu还支持账单支付、其他现金充值以及转账。截至2024年3月31日，约有128,000家商户及个人用户使用WalletKu服务，其中WalletKu Digital活跃用户数超过600，WalletKu Indosat活跃用户数已突破2,600。`,
  },
  { q: 'Currenc集团的总部位于哪里？', a: '我们的总部位于新加坡。' },
  { q: 'Currenc集团的财年何日截止？', a: 'Currenc集团的财年在12月31日截止。' },
  {
    q: 'Currenc集团的股票在哪个交易所交易？股票代码是什么？',
    a: 'Currenc集团的美国存托股票(ADSs)于2024年9月3日在纳斯达克市场上市，股票代码为“CURR”。',
  },
  {
    q: '如何获取Currenc集团的年报副本？',
    a: '年报将通过本网站提供。亦可通过美国证券交易委员会所存档文件网站线上访问所有对应的美国证券交易委员会文件。',
  },
  { q: 'Currenc集团的独立审计师为？', a: 'MRI Moores Rowland LLP' },
  {
    q: 'Currenc集团的美国法律顾问为？',
    a: 'Nelson Mullins Riley & Scarborough',
  },
  {
    q: '如何联系Currenc集团的投资者关系部门？',
    a: 'Currenc Group Investor Relations\n邮箱: investors@currencgroup.com',
  },
];
