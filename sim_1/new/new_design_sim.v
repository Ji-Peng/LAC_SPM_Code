`timescale 1ns / 1ps
`define INDEX(i) ((i + 1) * P_COEFF_WIDTH - 1)- : P_COEFF_WIDTH
`define INDEX2(i) ((i + 1) * P_SPARSE_WIDTH - 1)- : P_SPARSE_WIDTH

module new_design_sim
#(
    parameter P_Q = 251,
    parameter P_N = 512,
    parameter P_COEFF_WIDTH = $clog2(P_Q),
    parameter P_SPARSE_WIDTH = 2
)();

reg [P_N * P_COEFF_WIDTH - 1 : 0] poly_a;
reg [P_N * P_SPARSE_WIDTH - 1 : 0] poly_r;
wire [P_N * P_COEFF_WIDTH - 1 : 0] poly_result;


new_design_prototype test(
    .i_poly_a(poly_a),
    .i_poly_r(poly_r),
    .o_result(poly_result)
    );


initial
begin

    poly_a[`INDEX(0)] = 1'b1;
    poly_r[`INDEX2(0)] = 2'b11;

    poly_a[`INDEX(1)] = 1'b1;
    poly_r[`INDEX2(1)] = 2'b11;

    poly_a[`INDEX(2)] = 1'b1;
    poly_r[`INDEX2(2)] = 2'b11;

    poly_a[`INDEX(3)] = 1'b1;
    poly_r[`INDEX2(3)] = 2'b11;

    poly_a[`INDEX(4)] = 1'b1;
    poly_r[`INDEX2(4)] = 2'b11;

    poly_a[`INDEX(5)] = 1'b1;
    poly_r[`INDEX2(5)] = 2'b11;

    poly_a[`INDEX(6)] = 1'b1;
    poly_r[`INDEX2(6)] = 2'b11;

    poly_a[`INDEX(7)] = 1'b1;
    poly_r[`INDEX2(7)] = 2'b11;

    poly_a[`INDEX(8)] = 1'b1;
    poly_r[`INDEX2(8)] = 2'b11;

    poly_a[`INDEX(9)] = 1'b1;
    poly_r[`INDEX2(9)] = 2'b11;

    poly_a[`INDEX(10)] = 1'b1;
    poly_r[`INDEX2(10)] = 2'b11;

    poly_a[`INDEX(11)] = 1'b1;
    poly_r[`INDEX2(11)] = 2'b11;

    poly_a[`INDEX(12)] = 1'b1;
    poly_r[`INDEX2(12)] = 2'b11;

    poly_a[`INDEX(13)] = 1'b1;
    poly_r[`INDEX2(13)] = 2'b11;

    poly_a[`INDEX(14)] = 1'b1;
    poly_r[`INDEX2(14)] = 2'b11;

    poly_a[`INDEX(15)] = 1'b1;
    poly_r[`INDEX2(15)] = 2'b11;

    poly_a[`INDEX(16)] = 1'b1;
    poly_r[`INDEX2(16)] = 2'b11;

    poly_a[`INDEX(17)] = 1'b1;
    poly_r[`INDEX2(17)] = 2'b11;

    poly_a[`INDEX(18)] = 1'b1;
    poly_r[`INDEX2(18)] = 2'b11;

    poly_a[`INDEX(19)] = 1'b1;
    poly_r[`INDEX2(19)] = 2'b11;

    poly_a[`INDEX(20)] = 1'b1;
    poly_r[`INDEX2(20)] = 2'b11;

    poly_a[`INDEX(21)] = 1'b1;
    poly_r[`INDEX2(21)] = 2'b11;

    poly_a[`INDEX(22)] = 1'b1;
    poly_r[`INDEX2(22)] = 2'b11;

    poly_a[`INDEX(23)] = 1'b1;
    poly_r[`INDEX2(23)] = 2'b11;

    poly_a[`INDEX(24)] = 1'b1;
    poly_r[`INDEX2(24)] = 2'b11;

    poly_a[`INDEX(25)] = 1'b1;
    poly_r[`INDEX2(25)] = 2'b11;

    poly_a[`INDEX(26)] = 1'b1;
    poly_r[`INDEX2(26)] = 2'b11;

    poly_a[`INDEX(27)] = 1'b1;
    poly_r[`INDEX2(27)] = 2'b11;

    poly_a[`INDEX(28)] = 1'b1;
    poly_r[`INDEX2(28)] = 2'b11;

    poly_a[`INDEX(29)] = 1'b1;
    poly_r[`INDEX2(29)] = 2'b11;

    poly_a[`INDEX(30)] = 1'b1;
    poly_r[`INDEX2(30)] = 2'b11;

    poly_a[`INDEX(31)] = 1'b1;
    poly_r[`INDEX2(31)] = 2'b11;

    poly_a[`INDEX(32)] = 1'b1;
    poly_r[`INDEX2(32)] = 2'b11;

    poly_a[`INDEX(33)] = 1'b1;
    poly_r[`INDEX2(33)] = 2'b11;

    poly_a[`INDEX(34)] = 1'b1;
    poly_r[`INDEX2(34)] = 2'b11;

    poly_a[`INDEX(35)] = 1'b1;
    poly_r[`INDEX2(35)] = 2'b11;

    poly_a[`INDEX(36)] = 1'b1;
    poly_r[`INDEX2(36)] = 2'b11;

    poly_a[`INDEX(37)] = 1'b1;
    poly_r[`INDEX2(37)] = 2'b11;

    poly_a[`INDEX(38)] = 1'b1;
    poly_r[`INDEX2(38)] = 2'b11;

    poly_a[`INDEX(39)] = 1'b1;
    poly_r[`INDEX2(39)] = 2'b11;

    poly_a[`INDEX(40)] = 1'b1;
    poly_r[`INDEX2(40)] = 2'b11;

    poly_a[`INDEX(41)] = 1'b1;
    poly_r[`INDEX2(41)] = 2'b11;

    poly_a[`INDEX(42)] = 1'b1;
    poly_r[`INDEX2(42)] = 2'b11;

    poly_a[`INDEX(43)] = 1'b1;
    poly_r[`INDEX2(43)] = 2'b11;

    poly_a[`INDEX(44)] = 1'b1;
    poly_r[`INDEX2(44)] = 2'b11;

    poly_a[`INDEX(45)] = 1'b1;
    poly_r[`INDEX2(45)] = 2'b11;

    poly_a[`INDEX(46)] = 1'b1;
    poly_r[`INDEX2(46)] = 2'b11;

    poly_a[`INDEX(47)] = 1'b1;
    poly_r[`INDEX2(47)] = 2'b11;

    poly_a[`INDEX(48)] = 1'b1;
    poly_r[`INDEX2(48)] = 2'b11;

    poly_a[`INDEX(49)] = 1'b1;
    poly_r[`INDEX2(49)] = 2'b11;

    poly_a[`INDEX(50)] = 1'b1;
    poly_r[`INDEX2(50)] = 2'b11;

    poly_a[`INDEX(51)] = 1'b1;
    poly_r[`INDEX2(51)] = 2'b11;

    poly_a[`INDEX(52)] = 1'b1;
    poly_r[`INDEX2(52)] = 2'b11;

    poly_a[`INDEX(53)] = 1'b1;
    poly_r[`INDEX2(53)] = 2'b11;

    poly_a[`INDEX(54)] = 1'b1;
    poly_r[`INDEX2(54)] = 2'b11;

    poly_a[`INDEX(55)] = 1'b1;
    poly_r[`INDEX2(55)] = 2'b11;

    poly_a[`INDEX(56)] = 1'b1;
    poly_r[`INDEX2(56)] = 2'b11;

    poly_a[`INDEX(57)] = 1'b1;
    poly_r[`INDEX2(57)] = 2'b11;

    poly_a[`INDEX(58)] = 1'b1;
    poly_r[`INDEX2(58)] = 2'b11;

    poly_a[`INDEX(59)] = 1'b1;
    poly_r[`INDEX2(59)] = 2'b11;

    poly_a[`INDEX(60)] = 1'b1;
    poly_r[`INDEX2(60)] = 2'b11;

    poly_a[`INDEX(61)] = 1'b1;
    poly_r[`INDEX2(61)] = 2'b11;

    poly_a[`INDEX(62)] = 1'b1;
    poly_r[`INDEX2(62)] = 2'b11;

    poly_a[`INDEX(63)] = 1'b1;
    poly_r[`INDEX2(63)] = 2'b11;

    poly_a[`INDEX(64)] = 1'b1;
    poly_r[`INDEX2(64)] = 2'b11;

    poly_a[`INDEX(65)] = 1'b1;
    poly_r[`INDEX2(65)] = 2'b11;

    poly_a[`INDEX(66)] = 1'b1;
    poly_r[`INDEX2(66)] = 2'b11;

    poly_a[`INDEX(67)] = 1'b1;
    poly_r[`INDEX2(67)] = 2'b11;

    poly_a[`INDEX(68)] = 1'b1;
    poly_r[`INDEX2(68)] = 2'b11;

    poly_a[`INDEX(69)] = 1'b1;
    poly_r[`INDEX2(69)] = 2'b11;

    poly_a[`INDEX(70)] = 1'b1;
    poly_r[`INDEX2(70)] = 2'b11;

    poly_a[`INDEX(71)] = 1'b1;
    poly_r[`INDEX2(71)] = 2'b11;

    poly_a[`INDEX(72)] = 1'b1;
    poly_r[`INDEX2(72)] = 2'b11;

    poly_a[`INDEX(73)] = 1'b1;
    poly_r[`INDEX2(73)] = 2'b11;

    poly_a[`INDEX(74)] = 1'b1;
    poly_r[`INDEX2(74)] = 2'b11;

    poly_a[`INDEX(75)] = 1'b1;
    poly_r[`INDEX2(75)] = 2'b11;

    poly_a[`INDEX(76)] = 1'b1;
    poly_r[`INDEX2(76)] = 2'b11;

    poly_a[`INDEX(77)] = 1'b1;
    poly_r[`INDEX2(77)] = 2'b11;

    poly_a[`INDEX(78)] = 1'b1;
    poly_r[`INDEX2(78)] = 2'b11;

    poly_a[`INDEX(79)] = 1'b1;
    poly_r[`INDEX2(79)] = 2'b11;

    poly_a[`INDEX(80)] = 1'b1;
    poly_r[`INDEX2(80)] = 2'b11;

    poly_a[`INDEX(81)] = 1'b1;
    poly_r[`INDEX2(81)] = 2'b11;

    poly_a[`INDEX(82)] = 1'b1;
    poly_r[`INDEX2(82)] = 2'b11;

    poly_a[`INDEX(83)] = 1'b1;
    poly_r[`INDEX2(83)] = 2'b11;

    poly_a[`INDEX(84)] = 1'b1;
    poly_r[`INDEX2(84)] = 2'b11;

    poly_a[`INDEX(85)] = 1'b1;
    poly_r[`INDEX2(85)] = 2'b11;

    poly_a[`INDEX(86)] = 1'b1;
    poly_r[`INDEX2(86)] = 2'b11;

    poly_a[`INDEX(87)] = 1'b1;
    poly_r[`INDEX2(87)] = 2'b11;

    poly_a[`INDEX(88)] = 1'b1;
    poly_r[`INDEX2(88)] = 2'b11;

    poly_a[`INDEX(89)] = 1'b1;
    poly_r[`INDEX2(89)] = 2'b11;

    poly_a[`INDEX(90)] = 1'b1;
    poly_r[`INDEX2(90)] = 2'b11;

    poly_a[`INDEX(91)] = 1'b1;
    poly_r[`INDEX2(91)] = 2'b11;

    poly_a[`INDEX(92)] = 1'b1;
    poly_r[`INDEX2(92)] = 2'b11;

    poly_a[`INDEX(93)] = 1'b1;
    poly_r[`INDEX2(93)] = 2'b11;

    poly_a[`INDEX(94)] = 1'b1;
    poly_r[`INDEX2(94)] = 2'b11;

    poly_a[`INDEX(95)] = 1'b1;
    poly_r[`INDEX2(95)] = 2'b11;

    poly_a[`INDEX(96)] = 1'b1;
    poly_r[`INDEX2(96)] = 2'b11;

    poly_a[`INDEX(97)] = 1'b1;
    poly_r[`INDEX2(97)] = 2'b11;

    poly_a[`INDEX(98)] = 1'b1;
    poly_r[`INDEX2(98)] = 2'b11;

    poly_a[`INDEX(99)] = 1'b1;
    poly_r[`INDEX2(99)] = 2'b11;

    poly_a[`INDEX(100)] = 1'b1;
    poly_r[`INDEX2(100)] = 2'b11;

    poly_a[`INDEX(101)] = 1'b1;
    poly_r[`INDEX2(101)] = 2'b11;

    poly_a[`INDEX(102)] = 1'b1;
    poly_r[`INDEX2(102)] = 2'b11;

    poly_a[`INDEX(103)] = 1'b1;
    poly_r[`INDEX2(103)] = 2'b11;

    poly_a[`INDEX(104)] = 1'b1;
    poly_r[`INDEX2(104)] = 2'b11;

    poly_a[`INDEX(105)] = 1'b1;
    poly_r[`INDEX2(105)] = 2'b11;

    poly_a[`INDEX(106)] = 1'b1;
    poly_r[`INDEX2(106)] = 2'b11;

    poly_a[`INDEX(107)] = 1'b1;
    poly_r[`INDEX2(107)] = 2'b11;

    poly_a[`INDEX(108)] = 1'b1;
    poly_r[`INDEX2(108)] = 2'b11;

    poly_a[`INDEX(109)] = 1'b1;
    poly_r[`INDEX2(109)] = 2'b11;

    poly_a[`INDEX(110)] = 1'b1;
    poly_r[`INDEX2(110)] = 2'b11;

    poly_a[`INDEX(111)] = 1'b1;
    poly_r[`INDEX2(111)] = 2'b11;

    poly_a[`INDEX(112)] = 1'b1;
    poly_r[`INDEX2(112)] = 2'b11;

    poly_a[`INDEX(113)] = 1'b1;
    poly_r[`INDEX2(113)] = 2'b11;

    poly_a[`INDEX(114)] = 1'b1;
    poly_r[`INDEX2(114)] = 2'b11;

    poly_a[`INDEX(115)] = 1'b1;
    poly_r[`INDEX2(115)] = 2'b11;

    poly_a[`INDEX(116)] = 1'b1;
    poly_r[`INDEX2(116)] = 2'b11;

    poly_a[`INDEX(117)] = 1'b1;
    poly_r[`INDEX2(117)] = 2'b11;

    poly_a[`INDEX(118)] = 1'b1;
    poly_r[`INDEX2(118)] = 2'b11;

    poly_a[`INDEX(119)] = 1'b1;
    poly_r[`INDEX2(119)] = 2'b11;

    poly_a[`INDEX(120)] = 1'b1;
    poly_r[`INDEX2(120)] = 2'b11;

    poly_a[`INDEX(121)] = 1'b1;
    poly_r[`INDEX2(121)] = 2'b11;

    poly_a[`INDEX(122)] = 1'b1;
    poly_r[`INDEX2(122)] = 2'b11;

    poly_a[`INDEX(123)] = 1'b1;
    poly_r[`INDEX2(123)] = 2'b11;

    poly_a[`INDEX(124)] = 1'b1;
    poly_r[`INDEX2(124)] = 2'b11;

    poly_a[`INDEX(125)] = 1'b1;
    poly_r[`INDEX2(125)] = 2'b11;

    poly_a[`INDEX(126)] = 1'b1;
    poly_r[`INDEX2(126)] = 2'b11;

    poly_a[`INDEX(127)] = 1'b1;
    poly_r[`INDEX2(127)] = 2'b11;

    poly_a[`INDEX(128)] = 1'b1;
    poly_r[`INDEX2(128)] = 2'b11;

    poly_a[`INDEX(129)] = 1'b1;
    poly_r[`INDEX2(129)] = 2'b11;

    poly_a[`INDEX(130)] = 1'b1;
    poly_r[`INDEX2(130)] = 2'b11;

    poly_a[`INDEX(131)] = 1'b1;
    poly_r[`INDEX2(131)] = 2'b11;

    poly_a[`INDEX(132)] = 1'b1;
    poly_r[`INDEX2(132)] = 2'b11;

    poly_a[`INDEX(133)] = 1'b1;
    poly_r[`INDEX2(133)] = 2'b11;

    poly_a[`INDEX(134)] = 1'b1;
    poly_r[`INDEX2(134)] = 2'b11;

    poly_a[`INDEX(135)] = 1'b1;
    poly_r[`INDEX2(135)] = 2'b11;

    poly_a[`INDEX(136)] = 1'b1;
    poly_r[`INDEX2(136)] = 2'b11;

    poly_a[`INDEX(137)] = 1'b1;
    poly_r[`INDEX2(137)] = 2'b11;

    poly_a[`INDEX(138)] = 1'b1;
    poly_r[`INDEX2(138)] = 2'b11;

    poly_a[`INDEX(139)] = 1'b1;
    poly_r[`INDEX2(139)] = 2'b11;

    poly_a[`INDEX(140)] = 1'b1;
    poly_r[`INDEX2(140)] = 2'b11;

    poly_a[`INDEX(141)] = 1'b1;
    poly_r[`INDEX2(141)] = 2'b11;

    poly_a[`INDEX(142)] = 1'b1;
    poly_r[`INDEX2(142)] = 2'b11;

    poly_a[`INDEX(143)] = 1'b1;
    poly_r[`INDEX2(143)] = 2'b11;

    poly_a[`INDEX(144)] = 1'b1;
    poly_r[`INDEX2(144)] = 2'b11;

    poly_a[`INDEX(145)] = 1'b1;
    poly_r[`INDEX2(145)] = 2'b11;

    poly_a[`INDEX(146)] = 1'b1;
    poly_r[`INDEX2(146)] = 2'b11;

    poly_a[`INDEX(147)] = 1'b1;
    poly_r[`INDEX2(147)] = 2'b11;

    poly_a[`INDEX(148)] = 1'b1;
    poly_r[`INDEX2(148)] = 2'b11;

    poly_a[`INDEX(149)] = 1'b1;
    poly_r[`INDEX2(149)] = 2'b11;

    poly_a[`INDEX(150)] = 1'b1;
    poly_r[`INDEX2(150)] = 2'b11;

    poly_a[`INDEX(151)] = 1'b1;
    poly_r[`INDEX2(151)] = 2'b11;

    poly_a[`INDEX(152)] = 1'b1;
    poly_r[`INDEX2(152)] = 2'b11;

    poly_a[`INDEX(153)] = 1'b1;
    poly_r[`INDEX2(153)] = 2'b11;

    poly_a[`INDEX(154)] = 1'b1;
    poly_r[`INDEX2(154)] = 2'b11;

    poly_a[`INDEX(155)] = 1'b1;
    poly_r[`INDEX2(155)] = 2'b11;

    poly_a[`INDEX(156)] = 1'b1;
    poly_r[`INDEX2(156)] = 2'b11;

    poly_a[`INDEX(157)] = 1'b1;
    poly_r[`INDEX2(157)] = 2'b11;

    poly_a[`INDEX(158)] = 1'b1;
    poly_r[`INDEX2(158)] = 2'b11;

    poly_a[`INDEX(159)] = 1'b1;
    poly_r[`INDEX2(159)] = 2'b11;

    poly_a[`INDEX(160)] = 1'b1;
    poly_r[`INDEX2(160)] = 2'b11;

    poly_a[`INDEX(161)] = 1'b1;
    poly_r[`INDEX2(161)] = 2'b11;

    poly_a[`INDEX(162)] = 1'b1;
    poly_r[`INDEX2(162)] = 2'b11;

    poly_a[`INDEX(163)] = 1'b1;
    poly_r[`INDEX2(163)] = 2'b11;

    poly_a[`INDEX(164)] = 1'b1;
    poly_r[`INDEX2(164)] = 2'b11;

    poly_a[`INDEX(165)] = 1'b1;
    poly_r[`INDEX2(165)] = 2'b11;

    poly_a[`INDEX(166)] = 1'b1;
    poly_r[`INDEX2(166)] = 2'b11;

    poly_a[`INDEX(167)] = 1'b1;
    poly_r[`INDEX2(167)] = 2'b11;

    poly_a[`INDEX(168)] = 1'b1;
    poly_r[`INDEX2(168)] = 2'b11;

    poly_a[`INDEX(169)] = 1'b1;
    poly_r[`INDEX2(169)] = 2'b11;

    poly_a[`INDEX(170)] = 1'b1;
    poly_r[`INDEX2(170)] = 2'b11;

    poly_a[`INDEX(171)] = 1'b1;
    poly_r[`INDEX2(171)] = 2'b11;

    poly_a[`INDEX(172)] = 1'b1;
    poly_r[`INDEX2(172)] = 2'b11;

    poly_a[`INDEX(173)] = 1'b1;
    poly_r[`INDEX2(173)] = 2'b11;

    poly_a[`INDEX(174)] = 1'b1;
    poly_r[`INDEX2(174)] = 2'b11;

    poly_a[`INDEX(175)] = 1'b1;
    poly_r[`INDEX2(175)] = 2'b11;

    poly_a[`INDEX(176)] = 1'b1;
    poly_r[`INDEX2(176)] = 2'b11;

    poly_a[`INDEX(177)] = 1'b1;
    poly_r[`INDEX2(177)] = 2'b11;

    poly_a[`INDEX(178)] = 1'b1;
    poly_r[`INDEX2(178)] = 2'b11;

    poly_a[`INDEX(179)] = 1'b1;
    poly_r[`INDEX2(179)] = 2'b11;

    poly_a[`INDEX(180)] = 1'b1;
    poly_r[`INDEX2(180)] = 2'b11;

    poly_a[`INDEX(181)] = 1'b1;
    poly_r[`INDEX2(181)] = 2'b11;

    poly_a[`INDEX(182)] = 1'b1;
    poly_r[`INDEX2(182)] = 2'b11;

    poly_a[`INDEX(183)] = 1'b1;
    poly_r[`INDEX2(183)] = 2'b11;

    poly_a[`INDEX(184)] = 1'b1;
    poly_r[`INDEX2(184)] = 2'b11;

    poly_a[`INDEX(185)] = 1'b1;
    poly_r[`INDEX2(185)] = 2'b11;

    poly_a[`INDEX(186)] = 1'b1;
    poly_r[`INDEX2(186)] = 2'b11;

    poly_a[`INDEX(187)] = 1'b1;
    poly_r[`INDEX2(187)] = 2'b11;

    poly_a[`INDEX(188)] = 1'b1;
    poly_r[`INDEX2(188)] = 2'b11;

    poly_a[`INDEX(189)] = 1'b1;
    poly_r[`INDEX2(189)] = 2'b11;

    poly_a[`INDEX(190)] = 1'b1;
    poly_r[`INDEX2(190)] = 2'b11;

    poly_a[`INDEX(191)] = 1'b1;
    poly_r[`INDEX2(191)] = 2'b11;

    poly_a[`INDEX(192)] = 1'b1;
    poly_r[`INDEX2(192)] = 2'b11;

    poly_a[`INDEX(193)] = 1'b1;
    poly_r[`INDEX2(193)] = 2'b11;

    poly_a[`INDEX(194)] = 1'b1;
    poly_r[`INDEX2(194)] = 2'b11;

    poly_a[`INDEX(195)] = 1'b1;
    poly_r[`INDEX2(195)] = 2'b11;

    poly_a[`INDEX(196)] = 1'b1;
    poly_r[`INDEX2(196)] = 2'b11;

    poly_a[`INDEX(197)] = 1'b1;
    poly_r[`INDEX2(197)] = 2'b11;

    poly_a[`INDEX(198)] = 1'b1;
    poly_r[`INDEX2(198)] = 2'b11;

    poly_a[`INDEX(199)] = 1'b1;
    poly_r[`INDEX2(199)] = 2'b11;

    poly_a[`INDEX(200)] = 1'b1;
    poly_r[`INDEX2(200)] = 2'b11;

    poly_a[`INDEX(201)] = 1'b1;
    poly_r[`INDEX2(201)] = 2'b11;

    poly_a[`INDEX(202)] = 1'b1;
    poly_r[`INDEX2(202)] = 2'b11;

    poly_a[`INDEX(203)] = 1'b1;
    poly_r[`INDEX2(203)] = 2'b11;

    poly_a[`INDEX(204)] = 1'b1;
    poly_r[`INDEX2(204)] = 2'b11;

    poly_a[`INDEX(205)] = 1'b1;
    poly_r[`INDEX2(205)] = 2'b11;

    poly_a[`INDEX(206)] = 1'b1;
    poly_r[`INDEX2(206)] = 2'b11;

    poly_a[`INDEX(207)] = 1'b1;
    poly_r[`INDEX2(207)] = 2'b11;

    poly_a[`INDEX(208)] = 1'b1;
    poly_r[`INDEX2(208)] = 2'b11;

    poly_a[`INDEX(209)] = 1'b1;
    poly_r[`INDEX2(209)] = 2'b11;

    poly_a[`INDEX(210)] = 1'b1;
    poly_r[`INDEX2(210)] = 2'b11;

    poly_a[`INDEX(211)] = 1'b1;
    poly_r[`INDEX2(211)] = 2'b11;

    poly_a[`INDEX(212)] = 1'b1;
    poly_r[`INDEX2(212)] = 2'b11;

    poly_a[`INDEX(213)] = 1'b1;
    poly_r[`INDEX2(213)] = 2'b11;

    poly_a[`INDEX(214)] = 1'b1;
    poly_r[`INDEX2(214)] = 2'b11;

    poly_a[`INDEX(215)] = 1'b1;
    poly_r[`INDEX2(215)] = 2'b11;

    poly_a[`INDEX(216)] = 1'b1;
    poly_r[`INDEX2(216)] = 2'b11;

    poly_a[`INDEX(217)] = 1'b1;
    poly_r[`INDEX2(217)] = 2'b11;

    poly_a[`INDEX(218)] = 1'b1;
    poly_r[`INDEX2(218)] = 2'b11;

    poly_a[`INDEX(219)] = 1'b1;
    poly_r[`INDEX2(219)] = 2'b11;

    poly_a[`INDEX(220)] = 1'b1;
    poly_r[`INDEX2(220)] = 2'b11;

    poly_a[`INDEX(221)] = 1'b1;
    poly_r[`INDEX2(221)] = 2'b11;

    poly_a[`INDEX(222)] = 1'b1;
    poly_r[`INDEX2(222)] = 2'b11;

    poly_a[`INDEX(223)] = 1'b1;
    poly_r[`INDEX2(223)] = 2'b11;

    poly_a[`INDEX(224)] = 1'b1;
    poly_r[`INDEX2(224)] = 2'b11;

    poly_a[`INDEX(225)] = 1'b1;
    poly_r[`INDEX2(225)] = 2'b11;

    poly_a[`INDEX(226)] = 1'b1;
    poly_r[`INDEX2(226)] = 2'b11;

    poly_a[`INDEX(227)] = 1'b1;
    poly_r[`INDEX2(227)] = 2'b11;

    poly_a[`INDEX(228)] = 1'b1;
    poly_r[`INDEX2(228)] = 2'b11;

    poly_a[`INDEX(229)] = 1'b1;
    poly_r[`INDEX2(229)] = 2'b11;

    poly_a[`INDEX(230)] = 1'b1;
    poly_r[`INDEX2(230)] = 2'b11;

    poly_a[`INDEX(231)] = 1'b1;
    poly_r[`INDEX2(231)] = 2'b11;

    poly_a[`INDEX(232)] = 1'b1;
    poly_r[`INDEX2(232)] = 2'b11;

    poly_a[`INDEX(233)] = 1'b1;
    poly_r[`INDEX2(233)] = 2'b11;

    poly_a[`INDEX(234)] = 1'b1;
    poly_r[`INDEX2(234)] = 2'b11;

    poly_a[`INDEX(235)] = 1'b1;
    poly_r[`INDEX2(235)] = 2'b11;

    poly_a[`INDEX(236)] = 1'b1;
    poly_r[`INDEX2(236)] = 2'b11;

    poly_a[`INDEX(237)] = 1'b1;
    poly_r[`INDEX2(237)] = 2'b11;

    poly_a[`INDEX(238)] = 1'b1;
    poly_r[`INDEX2(238)] = 2'b11;

    poly_a[`INDEX(239)] = 1'b1;
    poly_r[`INDEX2(239)] = 2'b11;

    poly_a[`INDEX(240)] = 1'b1;
    poly_r[`INDEX2(240)] = 2'b11;

    poly_a[`INDEX(241)] = 1'b1;
    poly_r[`INDEX2(241)] = 2'b11;

    poly_a[`INDEX(242)] = 1'b1;
    poly_r[`INDEX2(242)] = 2'b11;

    poly_a[`INDEX(243)] = 1'b1;
    poly_r[`INDEX2(243)] = 2'b11;

    poly_a[`INDEX(244)] = 1'b1;
    poly_r[`INDEX2(244)] = 2'b11;

    poly_a[`INDEX(245)] = 1'b1;
    poly_r[`INDEX2(245)] = 2'b11;

    poly_a[`INDEX(246)] = 1'b1;
    poly_r[`INDEX2(246)] = 2'b11;

    poly_a[`INDEX(247)] = 1'b1;
    poly_r[`INDEX2(247)] = 2'b11;

    poly_a[`INDEX(248)] = 1'b1;
    poly_r[`INDEX2(248)] = 2'b11;

    poly_a[`INDEX(249)] = 1'b1;
    poly_r[`INDEX2(249)] = 2'b11;

    poly_a[`INDEX(250)] = 1'b1;
    poly_r[`INDEX2(250)] = 2'b11;

    poly_a[`INDEX(251)] = 1'b1;
    poly_r[`INDEX2(251)] = 2'b11;

    poly_a[`INDEX(252)] = 1'b1;
    poly_r[`INDEX2(252)] = 2'b11;

    poly_a[`INDEX(253)] = 1'b1;
    poly_r[`INDEX2(253)] = 2'b11;

    poly_a[`INDEX(254)] = 1'b1;
    poly_r[`INDEX2(254)] = 2'b11;

    poly_a[`INDEX(255)] = 1'b1;
    poly_r[`INDEX2(255)] = 2'b11;

    poly_a[`INDEX(256)] = 1'b1;
    poly_r[`INDEX2(256)] = 2'b11;

    poly_a[`INDEX(257)] = 1'b1;
    poly_r[`INDEX2(257)] = 2'b11;

    poly_a[`INDEX(258)] = 1'b1;
    poly_r[`INDEX2(258)] = 2'b11;

    poly_a[`INDEX(259)] = 1'b1;
    poly_r[`INDEX2(259)] = 2'b11;

    poly_a[`INDEX(260)] = 1'b1;
    poly_r[`INDEX2(260)] = 2'b11;

    poly_a[`INDEX(261)] = 1'b1;
    poly_r[`INDEX2(261)] = 2'b11;

    poly_a[`INDEX(262)] = 1'b1;
    poly_r[`INDEX2(262)] = 2'b11;

    poly_a[`INDEX(263)] = 1'b1;
    poly_r[`INDEX2(263)] = 2'b11;

    poly_a[`INDEX(264)] = 1'b1;
    poly_r[`INDEX2(264)] = 2'b11;

    poly_a[`INDEX(265)] = 1'b1;
    poly_r[`INDEX2(265)] = 2'b11;

    poly_a[`INDEX(266)] = 1'b1;
    poly_r[`INDEX2(266)] = 2'b11;

    poly_a[`INDEX(267)] = 1'b1;
    poly_r[`INDEX2(267)] = 2'b11;

    poly_a[`INDEX(268)] = 1'b1;
    poly_r[`INDEX2(268)] = 2'b11;

    poly_a[`INDEX(269)] = 1'b1;
    poly_r[`INDEX2(269)] = 2'b11;

    poly_a[`INDEX(270)] = 1'b1;
    poly_r[`INDEX2(270)] = 2'b11;

    poly_a[`INDEX(271)] = 1'b1;
    poly_r[`INDEX2(271)] = 2'b11;

    poly_a[`INDEX(272)] = 1'b1;
    poly_r[`INDEX2(272)] = 2'b11;

    poly_a[`INDEX(273)] = 1'b1;
    poly_r[`INDEX2(273)] = 2'b11;

    poly_a[`INDEX(274)] = 1'b1;
    poly_r[`INDEX2(274)] = 2'b11;

    poly_a[`INDEX(275)] = 1'b1;
    poly_r[`INDEX2(275)] = 2'b11;

    poly_a[`INDEX(276)] = 1'b1;
    poly_r[`INDEX2(276)] = 2'b11;

    poly_a[`INDEX(277)] = 1'b1;
    poly_r[`INDEX2(277)] = 2'b11;

    poly_a[`INDEX(278)] = 1'b1;
    poly_r[`INDEX2(278)] = 2'b11;

    poly_a[`INDEX(279)] = 1'b1;
    poly_r[`INDEX2(279)] = 2'b11;

    poly_a[`INDEX(280)] = 1'b1;
    poly_r[`INDEX2(280)] = 2'b11;

    poly_a[`INDEX(281)] = 1'b1;
    poly_r[`INDEX2(281)] = 2'b11;

    poly_a[`INDEX(282)] = 1'b1;
    poly_r[`INDEX2(282)] = 2'b11;

    poly_a[`INDEX(283)] = 1'b1;
    poly_r[`INDEX2(283)] = 2'b11;

    poly_a[`INDEX(284)] = 1'b1;
    poly_r[`INDEX2(284)] = 2'b11;

    poly_a[`INDEX(285)] = 1'b1;
    poly_r[`INDEX2(285)] = 2'b11;

    poly_a[`INDEX(286)] = 1'b1;
    poly_r[`INDEX2(286)] = 2'b11;

    poly_a[`INDEX(287)] = 1'b1;
    poly_r[`INDEX2(287)] = 2'b11;

    poly_a[`INDEX(288)] = 1'b1;
    poly_r[`INDEX2(288)] = 2'b11;

    poly_a[`INDEX(289)] = 1'b1;
    poly_r[`INDEX2(289)] = 2'b11;

    poly_a[`INDEX(290)] = 1'b1;
    poly_r[`INDEX2(290)] = 2'b11;

    poly_a[`INDEX(291)] = 1'b1;
    poly_r[`INDEX2(291)] = 2'b11;

    poly_a[`INDEX(292)] = 1'b1;
    poly_r[`INDEX2(292)] = 2'b11;

    poly_a[`INDEX(293)] = 1'b1;
    poly_r[`INDEX2(293)] = 2'b11;

    poly_a[`INDEX(294)] = 1'b1;
    poly_r[`INDEX2(294)] = 2'b11;

    poly_a[`INDEX(295)] = 1'b1;
    poly_r[`INDEX2(295)] = 2'b11;

    poly_a[`INDEX(296)] = 1'b1;
    poly_r[`INDEX2(296)] = 2'b11;

    poly_a[`INDEX(297)] = 1'b1;
    poly_r[`INDEX2(297)] = 2'b11;

    poly_a[`INDEX(298)] = 1'b1;
    poly_r[`INDEX2(298)] = 2'b11;

    poly_a[`INDEX(299)] = 1'b1;
    poly_r[`INDEX2(299)] = 2'b11;

    poly_a[`INDEX(300)] = 1'b1;
    poly_r[`INDEX2(300)] = 2'b11;

    poly_a[`INDEX(301)] = 1'b1;
    poly_r[`INDEX2(301)] = 2'b11;

    poly_a[`INDEX(302)] = 1'b1;
    poly_r[`INDEX2(302)] = 2'b11;

    poly_a[`INDEX(303)] = 1'b1;
    poly_r[`INDEX2(303)] = 2'b11;

    poly_a[`INDEX(304)] = 1'b1;
    poly_r[`INDEX2(304)] = 2'b11;

    poly_a[`INDEX(305)] = 1'b1;
    poly_r[`INDEX2(305)] = 2'b11;

    poly_a[`INDEX(306)] = 1'b1;
    poly_r[`INDEX2(306)] = 2'b11;

    poly_a[`INDEX(307)] = 1'b1;
    poly_r[`INDEX2(307)] = 2'b11;

    poly_a[`INDEX(308)] = 1'b1;
    poly_r[`INDEX2(308)] = 2'b11;

    poly_a[`INDEX(309)] = 1'b1;
    poly_r[`INDEX2(309)] = 2'b11;

    poly_a[`INDEX(310)] = 1'b1;
    poly_r[`INDEX2(310)] = 2'b11;

    poly_a[`INDEX(311)] = 1'b1;
    poly_r[`INDEX2(311)] = 2'b11;

    poly_a[`INDEX(312)] = 1'b1;
    poly_r[`INDEX2(312)] = 2'b11;

    poly_a[`INDEX(313)] = 1'b1;
    poly_r[`INDEX2(313)] = 2'b11;

    poly_a[`INDEX(314)] = 1'b1;
    poly_r[`INDEX2(314)] = 2'b11;

    poly_a[`INDEX(315)] = 1'b1;
    poly_r[`INDEX2(315)] = 2'b11;

    poly_a[`INDEX(316)] = 1'b1;
    poly_r[`INDEX2(316)] = 2'b11;

    poly_a[`INDEX(317)] = 1'b1;
    poly_r[`INDEX2(317)] = 2'b11;

    poly_a[`INDEX(318)] = 1'b1;
    poly_r[`INDEX2(318)] = 2'b11;

    poly_a[`INDEX(319)] = 1'b1;
    poly_r[`INDEX2(319)] = 2'b11;

    poly_a[`INDEX(320)] = 1'b1;
    poly_r[`INDEX2(320)] = 2'b11;

    poly_a[`INDEX(321)] = 1'b1;
    poly_r[`INDEX2(321)] = 2'b11;

    poly_a[`INDEX(322)] = 1'b1;
    poly_r[`INDEX2(322)] = 2'b11;

    poly_a[`INDEX(323)] = 1'b1;
    poly_r[`INDEX2(323)] = 2'b11;

    poly_a[`INDEX(324)] = 1'b1;
    poly_r[`INDEX2(324)] = 2'b11;

    poly_a[`INDEX(325)] = 1'b1;
    poly_r[`INDEX2(325)] = 2'b11;

    poly_a[`INDEX(326)] = 1'b1;
    poly_r[`INDEX2(326)] = 2'b11;

    poly_a[`INDEX(327)] = 1'b1;
    poly_r[`INDEX2(327)] = 2'b11;

    poly_a[`INDEX(328)] = 1'b1;
    poly_r[`INDEX2(328)] = 2'b11;

    poly_a[`INDEX(329)] = 1'b1;
    poly_r[`INDEX2(329)] = 2'b11;

    poly_a[`INDEX(330)] = 1'b1;
    poly_r[`INDEX2(330)] = 2'b11;

    poly_a[`INDEX(331)] = 1'b1;
    poly_r[`INDEX2(331)] = 2'b11;

    poly_a[`INDEX(332)] = 1'b1;
    poly_r[`INDEX2(332)] = 2'b11;

    poly_a[`INDEX(333)] = 1'b1;
    poly_r[`INDEX2(333)] = 2'b11;

    poly_a[`INDEX(334)] = 1'b1;
    poly_r[`INDEX2(334)] = 2'b11;

    poly_a[`INDEX(335)] = 1'b1;
    poly_r[`INDEX2(335)] = 2'b11;

    poly_a[`INDEX(336)] = 1'b1;
    poly_r[`INDEX2(336)] = 2'b11;

    poly_a[`INDEX(337)] = 1'b1;
    poly_r[`INDEX2(337)] = 2'b11;

    poly_a[`INDEX(338)] = 1'b1;
    poly_r[`INDEX2(338)] = 2'b11;

    poly_a[`INDEX(339)] = 1'b1;
    poly_r[`INDEX2(339)] = 2'b11;

    poly_a[`INDEX(340)] = 1'b1;
    poly_r[`INDEX2(340)] = 2'b11;

    poly_a[`INDEX(341)] = 1'b1;
    poly_r[`INDEX2(341)] = 2'b11;

    poly_a[`INDEX(342)] = 1'b1;
    poly_r[`INDEX2(342)] = 2'b11;

    poly_a[`INDEX(343)] = 1'b1;
    poly_r[`INDEX2(343)] = 2'b11;

    poly_a[`INDEX(344)] = 1'b1;
    poly_r[`INDEX2(344)] = 2'b11;

    poly_a[`INDEX(345)] = 1'b1;
    poly_r[`INDEX2(345)] = 2'b11;

    poly_a[`INDEX(346)] = 1'b1;
    poly_r[`INDEX2(346)] = 2'b11;

    poly_a[`INDEX(347)] = 1'b1;
    poly_r[`INDEX2(347)] = 2'b11;

    poly_a[`INDEX(348)] = 1'b1;
    poly_r[`INDEX2(348)] = 2'b11;

    poly_a[`INDEX(349)] = 1'b1;
    poly_r[`INDEX2(349)] = 2'b11;

    poly_a[`INDEX(350)] = 1'b1;
    poly_r[`INDEX2(350)] = 2'b11;

    poly_a[`INDEX(351)] = 1'b1;
    poly_r[`INDEX2(351)] = 2'b11;

    poly_a[`INDEX(352)] = 1'b1;
    poly_r[`INDEX2(352)] = 2'b11;

    poly_a[`INDEX(353)] = 1'b1;
    poly_r[`INDEX2(353)] = 2'b11;

    poly_a[`INDEX(354)] = 1'b1;
    poly_r[`INDEX2(354)] = 2'b11;

    poly_a[`INDEX(355)] = 1'b1;
    poly_r[`INDEX2(355)] = 2'b11;

    poly_a[`INDEX(356)] = 1'b1;
    poly_r[`INDEX2(356)] = 2'b11;

    poly_a[`INDEX(357)] = 1'b1;
    poly_r[`INDEX2(357)] = 2'b11;

    poly_a[`INDEX(358)] = 1'b1;
    poly_r[`INDEX2(358)] = 2'b11;

    poly_a[`INDEX(359)] = 1'b1;
    poly_r[`INDEX2(359)] = 2'b11;

    poly_a[`INDEX(360)] = 1'b1;
    poly_r[`INDEX2(360)] = 2'b11;

    poly_a[`INDEX(361)] = 1'b1;
    poly_r[`INDEX2(361)] = 2'b11;

    poly_a[`INDEX(362)] = 1'b1;
    poly_r[`INDEX2(362)] = 2'b11;

    poly_a[`INDEX(363)] = 1'b1;
    poly_r[`INDEX2(363)] = 2'b11;

    poly_a[`INDEX(364)] = 1'b1;
    poly_r[`INDEX2(364)] = 2'b11;

    poly_a[`INDEX(365)] = 1'b1;
    poly_r[`INDEX2(365)] = 2'b11;

    poly_a[`INDEX(366)] = 1'b1;
    poly_r[`INDEX2(366)] = 2'b11;

    poly_a[`INDEX(367)] = 1'b1;
    poly_r[`INDEX2(367)] = 2'b11;

    poly_a[`INDEX(368)] = 1'b1;
    poly_r[`INDEX2(368)] = 2'b11;

    poly_a[`INDEX(369)] = 1'b1;
    poly_r[`INDEX2(369)] = 2'b11;

    poly_a[`INDEX(370)] = 1'b1;
    poly_r[`INDEX2(370)] = 2'b11;

    poly_a[`INDEX(371)] = 1'b1;
    poly_r[`INDEX2(371)] = 2'b11;

    poly_a[`INDEX(372)] = 1'b1;
    poly_r[`INDEX2(372)] = 2'b11;

    poly_a[`INDEX(373)] = 1'b1;
    poly_r[`INDEX2(373)] = 2'b11;

    poly_a[`INDEX(374)] = 1'b1;
    poly_r[`INDEX2(374)] = 2'b11;

    poly_a[`INDEX(375)] = 1'b1;
    poly_r[`INDEX2(375)] = 2'b11;

    poly_a[`INDEX(376)] = 1'b1;
    poly_r[`INDEX2(376)] = 2'b11;

    poly_a[`INDEX(377)] = 1'b1;
    poly_r[`INDEX2(377)] = 2'b11;

    poly_a[`INDEX(378)] = 1'b1;
    poly_r[`INDEX2(378)] = 2'b11;

    poly_a[`INDEX(379)] = 1'b1;
    poly_r[`INDEX2(379)] = 2'b11;

    poly_a[`INDEX(380)] = 1'b1;
    poly_r[`INDEX2(380)] = 2'b11;

    poly_a[`INDEX(381)] = 1'b1;
    poly_r[`INDEX2(381)] = 2'b11;

    poly_a[`INDEX(382)] = 1'b1;
    poly_r[`INDEX2(382)] = 2'b11;

    poly_a[`INDEX(383)] = 1'b1;
    poly_r[`INDEX2(383)] = 2'b11;

    poly_a[`INDEX(384)] = 1'b1;
    poly_r[`INDEX2(384)] = 2'b11;

    poly_a[`INDEX(385)] = 1'b1;
    poly_r[`INDEX2(385)] = 2'b11;

    poly_a[`INDEX(386)] = 1'b1;
    poly_r[`INDEX2(386)] = 2'b11;

    poly_a[`INDEX(387)] = 1'b1;
    poly_r[`INDEX2(387)] = 2'b11;

    poly_a[`INDEX(388)] = 1'b1;
    poly_r[`INDEX2(388)] = 2'b11;

    poly_a[`INDEX(389)] = 1'b1;
    poly_r[`INDEX2(389)] = 2'b11;

    poly_a[`INDEX(390)] = 1'b1;
    poly_r[`INDEX2(390)] = 2'b11;

    poly_a[`INDEX(391)] = 1'b1;
    poly_r[`INDEX2(391)] = 2'b11;

    poly_a[`INDEX(392)] = 1'b1;
    poly_r[`INDEX2(392)] = 2'b11;

    poly_a[`INDEX(393)] = 1'b1;
    poly_r[`INDEX2(393)] = 2'b11;

    poly_a[`INDEX(394)] = 1'b1;
    poly_r[`INDEX2(394)] = 2'b11;

    poly_a[`INDEX(395)] = 1'b1;
    poly_r[`INDEX2(395)] = 2'b11;

    poly_a[`INDEX(396)] = 1'b1;
    poly_r[`INDEX2(396)] = 2'b11;

    poly_a[`INDEX(397)] = 1'b1;
    poly_r[`INDEX2(397)] = 2'b11;

    poly_a[`INDEX(398)] = 1'b1;
    poly_r[`INDEX2(398)] = 2'b11;

    poly_a[`INDEX(399)] = 1'b1;
    poly_r[`INDEX2(399)] = 2'b11;

    poly_a[`INDEX(400)] = 1'b1;
    poly_r[`INDEX2(400)] = 2'b11;

    poly_a[`INDEX(401)] = 1'b1;
    poly_r[`INDEX2(401)] = 2'b11;

    poly_a[`INDEX(402)] = 1'b1;
    poly_r[`INDEX2(402)] = 2'b11;

    poly_a[`INDEX(403)] = 1'b1;
    poly_r[`INDEX2(403)] = 2'b11;

    poly_a[`INDEX(404)] = 1'b1;
    poly_r[`INDEX2(404)] = 2'b11;

    poly_a[`INDEX(405)] = 1'b1;
    poly_r[`INDEX2(405)] = 2'b11;

    poly_a[`INDEX(406)] = 1'b1;
    poly_r[`INDEX2(406)] = 2'b11;

    poly_a[`INDEX(407)] = 1'b1;
    poly_r[`INDEX2(407)] = 2'b11;

    poly_a[`INDEX(408)] = 1'b1;
    poly_r[`INDEX2(408)] = 2'b11;

    poly_a[`INDEX(409)] = 1'b1;
    poly_r[`INDEX2(409)] = 2'b11;

    poly_a[`INDEX(410)] = 1'b1;
    poly_r[`INDEX2(410)] = 2'b11;

    poly_a[`INDEX(411)] = 1'b1;
    poly_r[`INDEX2(411)] = 2'b11;

    poly_a[`INDEX(412)] = 1'b1;
    poly_r[`INDEX2(412)] = 2'b11;

    poly_a[`INDEX(413)] = 1'b1;
    poly_r[`INDEX2(413)] = 2'b11;

    poly_a[`INDEX(414)] = 1'b1;
    poly_r[`INDEX2(414)] = 2'b11;

    poly_a[`INDEX(415)] = 1'b1;
    poly_r[`INDEX2(415)] = 2'b11;

    poly_a[`INDEX(416)] = 1'b1;
    poly_r[`INDEX2(416)] = 2'b11;

    poly_a[`INDEX(417)] = 1'b1;
    poly_r[`INDEX2(417)] = 2'b11;

    poly_a[`INDEX(418)] = 1'b1;
    poly_r[`INDEX2(418)] = 2'b11;

    poly_a[`INDEX(419)] = 1'b1;
    poly_r[`INDEX2(419)] = 2'b11;

    poly_a[`INDEX(420)] = 1'b1;
    poly_r[`INDEX2(420)] = 2'b11;

    poly_a[`INDEX(421)] = 1'b1;
    poly_r[`INDEX2(421)] = 2'b11;

    poly_a[`INDEX(422)] = 1'b1;
    poly_r[`INDEX2(422)] = 2'b11;

    poly_a[`INDEX(423)] = 1'b1;
    poly_r[`INDEX2(423)] = 2'b11;

    poly_a[`INDEX(424)] = 1'b1;
    poly_r[`INDEX2(424)] = 2'b11;

    poly_a[`INDEX(425)] = 1'b1;
    poly_r[`INDEX2(425)] = 2'b11;

    poly_a[`INDEX(426)] = 1'b1;
    poly_r[`INDEX2(426)] = 2'b11;

    poly_a[`INDEX(427)] = 1'b1;
    poly_r[`INDEX2(427)] = 2'b11;

    poly_a[`INDEX(428)] = 1'b1;
    poly_r[`INDEX2(428)] = 2'b11;

    poly_a[`INDEX(429)] = 1'b1;
    poly_r[`INDEX2(429)] = 2'b11;

    poly_a[`INDEX(430)] = 1'b1;
    poly_r[`INDEX2(430)] = 2'b11;

    poly_a[`INDEX(431)] = 1'b1;
    poly_r[`INDEX2(431)] = 2'b11;

    poly_a[`INDEX(432)] = 1'b1;
    poly_r[`INDEX2(432)] = 2'b11;

    poly_a[`INDEX(433)] = 1'b1;
    poly_r[`INDEX2(433)] = 2'b11;

    poly_a[`INDEX(434)] = 1'b1;
    poly_r[`INDEX2(434)] = 2'b11;

    poly_a[`INDEX(435)] = 1'b1;
    poly_r[`INDEX2(435)] = 2'b11;

    poly_a[`INDEX(436)] = 1'b1;
    poly_r[`INDEX2(436)] = 2'b11;

    poly_a[`INDEX(437)] = 1'b1;
    poly_r[`INDEX2(437)] = 2'b11;

    poly_a[`INDEX(438)] = 1'b1;
    poly_r[`INDEX2(438)] = 2'b11;

    poly_a[`INDEX(439)] = 1'b1;
    poly_r[`INDEX2(439)] = 2'b11;

    poly_a[`INDEX(440)] = 1'b1;
    poly_r[`INDEX2(440)] = 2'b11;

    poly_a[`INDEX(441)] = 1'b1;
    poly_r[`INDEX2(441)] = 2'b11;

    poly_a[`INDEX(442)] = 1'b1;
    poly_r[`INDEX2(442)] = 2'b11;

    poly_a[`INDEX(443)] = 1'b1;
    poly_r[`INDEX2(443)] = 2'b11;

    poly_a[`INDEX(444)] = 1'b1;
    poly_r[`INDEX2(444)] = 2'b11;

    poly_a[`INDEX(445)] = 1'b1;
    poly_r[`INDEX2(445)] = 2'b11;

    poly_a[`INDEX(446)] = 1'b1;
    poly_r[`INDEX2(446)] = 2'b11;

    poly_a[`INDEX(447)] = 1'b1;
    poly_r[`INDEX2(447)] = 2'b11;

    poly_a[`INDEX(448)] = 1'b1;
    poly_r[`INDEX2(448)] = 2'b11;

    poly_a[`INDEX(449)] = 1'b1;
    poly_r[`INDEX2(449)] = 2'b11;

    poly_a[`INDEX(450)] = 1'b1;
    poly_r[`INDEX2(450)] = 2'b11;

    poly_a[`INDEX(451)] = 1'b1;
    poly_r[`INDEX2(451)] = 2'b11;

    poly_a[`INDEX(452)] = 1'b1;
    poly_r[`INDEX2(452)] = 2'b11;

    poly_a[`INDEX(453)] = 1'b1;
    poly_r[`INDEX2(453)] = 2'b11;

    poly_a[`INDEX(454)] = 1'b1;
    poly_r[`INDEX2(454)] = 2'b11;

    poly_a[`INDEX(455)] = 1'b1;
    poly_r[`INDEX2(455)] = 2'b11;

    poly_a[`INDEX(456)] = 1'b1;
    poly_r[`INDEX2(456)] = 2'b11;

    poly_a[`INDEX(457)] = 1'b1;
    poly_r[`INDEX2(457)] = 2'b11;

    poly_a[`INDEX(458)] = 1'b1;
    poly_r[`INDEX2(458)] = 2'b11;

    poly_a[`INDEX(459)] = 1'b1;
    poly_r[`INDEX2(459)] = 2'b11;

    poly_a[`INDEX(460)] = 1'b1;
    poly_r[`INDEX2(460)] = 2'b11;

    poly_a[`INDEX(461)] = 1'b1;
    poly_r[`INDEX2(461)] = 2'b11;

    poly_a[`INDEX(462)] = 1'b1;
    poly_r[`INDEX2(462)] = 2'b11;

    poly_a[`INDEX(463)] = 1'b1;
    poly_r[`INDEX2(463)] = 2'b11;

    poly_a[`INDEX(464)] = 1'b1;
    poly_r[`INDEX2(464)] = 2'b11;

    poly_a[`INDEX(465)] = 1'b1;
    poly_r[`INDEX2(465)] = 2'b11;

    poly_a[`INDEX(466)] = 1'b1;
    poly_r[`INDEX2(466)] = 2'b11;

    poly_a[`INDEX(467)] = 1'b1;
    poly_r[`INDEX2(467)] = 2'b11;

    poly_a[`INDEX(468)] = 1'b1;
    poly_r[`INDEX2(468)] = 2'b11;

    poly_a[`INDEX(469)] = 1'b1;
    poly_r[`INDEX2(469)] = 2'b11;

    poly_a[`INDEX(470)] = 1'b1;
    poly_r[`INDEX2(470)] = 2'b11;

    poly_a[`INDEX(471)] = 1'b1;
    poly_r[`INDEX2(471)] = 2'b11;

    poly_a[`INDEX(472)] = 1'b1;
    poly_r[`INDEX2(472)] = 2'b11;

    poly_a[`INDEX(473)] = 1'b1;
    poly_r[`INDEX2(473)] = 2'b11;

    poly_a[`INDEX(474)] = 1'b1;
    poly_r[`INDEX2(474)] = 2'b11;

    poly_a[`INDEX(475)] = 1'b1;
    poly_r[`INDEX2(475)] = 2'b11;

    poly_a[`INDEX(476)] = 1'b1;
    poly_r[`INDEX2(476)] = 2'b11;

    poly_a[`INDEX(477)] = 1'b1;
    poly_r[`INDEX2(477)] = 2'b11;

    poly_a[`INDEX(478)] = 1'b1;
    poly_r[`INDEX2(478)] = 2'b11;

    poly_a[`INDEX(479)] = 1'b1;
    poly_r[`INDEX2(479)] = 2'b11;

    poly_a[`INDEX(480)] = 1'b1;
    poly_r[`INDEX2(480)] = 2'b11;

    poly_a[`INDEX(481)] = 1'b1;
    poly_r[`INDEX2(481)] = 2'b11;

    poly_a[`INDEX(482)] = 1'b1;
    poly_r[`INDEX2(482)] = 2'b11;

    poly_a[`INDEX(483)] = 1'b1;
    poly_r[`INDEX2(483)] = 2'b11;

    poly_a[`INDEX(484)] = 1'b1;
    poly_r[`INDEX2(484)] = 2'b11;

    poly_a[`INDEX(485)] = 1'b1;
    poly_r[`INDEX2(485)] = 2'b11;

    poly_a[`INDEX(486)] = 1'b1;
    poly_r[`INDEX2(486)] = 2'b11;

    poly_a[`INDEX(487)] = 1'b1;
    poly_r[`INDEX2(487)] = 2'b11;

    poly_a[`INDEX(488)] = 1'b1;
    poly_r[`INDEX2(488)] = 2'b11;

    poly_a[`INDEX(489)] = 1'b1;
    poly_r[`INDEX2(489)] = 2'b11;

    poly_a[`INDEX(490)] = 1'b1;
    poly_r[`INDEX2(490)] = 2'b11;

    poly_a[`INDEX(491)] = 1'b1;
    poly_r[`INDEX2(491)] = 2'b11;

    poly_a[`INDEX(492)] = 1'b1;
    poly_r[`INDEX2(492)] = 2'b11;

    poly_a[`INDEX(493)] = 1'b1;
    poly_r[`INDEX2(493)] = 2'b11;

    poly_a[`INDEX(494)] = 1'b1;
    poly_r[`INDEX2(494)] = 2'b11;

    poly_a[`INDEX(495)] = 1'b1;
    poly_r[`INDEX2(495)] = 2'b11;

    poly_a[`INDEX(496)] = 1'b1;
    poly_r[`INDEX2(496)] = 2'b11;

    poly_a[`INDEX(497)] = 1'b1;
    poly_r[`INDEX2(497)] = 2'b11;

    poly_a[`INDEX(498)] = 1'b1;
    poly_r[`INDEX2(498)] = 2'b11;

    poly_a[`INDEX(499)] = 1'b1;
    poly_r[`INDEX2(499)] = 2'b11;

    poly_a[`INDEX(500)] = 1'b1;
    poly_r[`INDEX2(500)] = 2'b11;

    poly_a[`INDEX(501)] = 1'b1;
    poly_r[`INDEX2(501)] = 2'b11;

    poly_a[`INDEX(502)] = 1'b1;
    poly_r[`INDEX2(502)] = 2'b11;

    poly_a[`INDEX(503)] = 1'b1;
    poly_r[`INDEX2(503)] = 2'b11;

    poly_a[`INDEX(504)] = 1'b1;
    poly_r[`INDEX2(504)] = 2'b11;

    poly_a[`INDEX(505)] = 1'b1;
    poly_r[`INDEX2(505)] = 2'b11;

    poly_a[`INDEX(506)] = 1'b1;
    poly_r[`INDEX2(506)] = 2'b11;

    poly_a[`INDEX(507)] = 1'b1;
    poly_r[`INDEX2(507)] = 2'b11;

    poly_a[`INDEX(508)] = 1'b1;
    poly_r[`INDEX2(508)] = 2'b11;

    poly_a[`INDEX(509)] = 1'b1;
    poly_r[`INDEX2(509)] = 2'b11;

    poly_a[`INDEX(510)] = 1'b1;
    poly_r[`INDEX2(510)] = 2'b11;

    poly_a[`INDEX(511)] = 1'b1;
    poly_r[`INDEX2(511)] = 2'b11;
# 1000

    poly_a[`INDEX(0)] = 1'b1;
    poly_r[`INDEX2(0)] = 2'b10;

    poly_a[`INDEX(1)] = 1'b1;
    poly_r[`INDEX2(1)] = 2'b10;

    poly_a[`INDEX(2)] = 1'b1;
    poly_r[`INDEX2(2)] = 2'b10;

    poly_a[`INDEX(3)] = 1'b1;
    poly_r[`INDEX2(3)] = 2'b10;

    poly_a[`INDEX(4)] = 1'b1;
    poly_r[`INDEX2(4)] = 2'b10;

    poly_a[`INDEX(5)] = 1'b1;
    poly_r[`INDEX2(5)] = 2'b10;

    poly_a[`INDEX(6)] = 1'b1;
    poly_r[`INDEX2(6)] = 2'b10;

    poly_a[`INDEX(7)] = 1'b1;
    poly_r[`INDEX2(7)] = 2'b10;

    poly_a[`INDEX(8)] = 1'b1;
    poly_r[`INDEX2(8)] = 2'b10;

    poly_a[`INDEX(9)] = 1'b1;
    poly_r[`INDEX2(9)] = 2'b10;

    poly_a[`INDEX(10)] = 1'b1;
    poly_r[`INDEX2(10)] = 2'b10;

    poly_a[`INDEX(11)] = 1'b1;
    poly_r[`INDEX2(11)] = 2'b10;

    poly_a[`INDEX(12)] = 1'b1;
    poly_r[`INDEX2(12)] = 2'b10;

    poly_a[`INDEX(13)] = 1'b1;
    poly_r[`INDEX2(13)] = 2'b10;

    poly_a[`INDEX(14)] = 1'b1;
    poly_r[`INDEX2(14)] = 2'b10;

    poly_a[`INDEX(15)] = 1'b1;
    poly_r[`INDEX2(15)] = 2'b10;

    poly_a[`INDEX(16)] = 1'b1;
    poly_r[`INDEX2(16)] = 2'b10;

    poly_a[`INDEX(17)] = 1'b1;
    poly_r[`INDEX2(17)] = 2'b10;

    poly_a[`INDEX(18)] = 1'b1;
    poly_r[`INDEX2(18)] = 2'b10;

    poly_a[`INDEX(19)] = 1'b1;
    poly_r[`INDEX2(19)] = 2'b10;

    poly_a[`INDEX(20)] = 1'b1;
    poly_r[`INDEX2(20)] = 2'b10;

    poly_a[`INDEX(21)] = 1'b1;
    poly_r[`INDEX2(21)] = 2'b10;

    poly_a[`INDEX(22)] = 1'b1;
    poly_r[`INDEX2(22)] = 2'b10;

    poly_a[`INDEX(23)] = 1'b1;
    poly_r[`INDEX2(23)] = 2'b10;

    poly_a[`INDEX(24)] = 1'b1;
    poly_r[`INDEX2(24)] = 2'b10;

    poly_a[`INDEX(25)] = 1'b1;
    poly_r[`INDEX2(25)] = 2'b10;

    poly_a[`INDEX(26)] = 1'b1;
    poly_r[`INDEX2(26)] = 2'b10;

    poly_a[`INDEX(27)] = 1'b1;
    poly_r[`INDEX2(27)] = 2'b10;

    poly_a[`INDEX(28)] = 1'b1;
    poly_r[`INDEX2(28)] = 2'b10;

    poly_a[`INDEX(29)] = 1'b1;
    poly_r[`INDEX2(29)] = 2'b10;

    poly_a[`INDEX(30)] = 1'b1;
    poly_r[`INDEX2(30)] = 2'b10;

    poly_a[`INDEX(31)] = 1'b1;
    poly_r[`INDEX2(31)] = 2'b10;

    poly_a[`INDEX(32)] = 1'b1;
    poly_r[`INDEX2(32)] = 2'b10;

    poly_a[`INDEX(33)] = 1'b1;
    poly_r[`INDEX2(33)] = 2'b10;

    poly_a[`INDEX(34)] = 1'b1;
    poly_r[`INDEX2(34)] = 2'b10;

    poly_a[`INDEX(35)] = 1'b1;
    poly_r[`INDEX2(35)] = 2'b10;

    poly_a[`INDEX(36)] = 1'b1;
    poly_r[`INDEX2(36)] = 2'b10;

    poly_a[`INDEX(37)] = 1'b1;
    poly_r[`INDEX2(37)] = 2'b10;

    poly_a[`INDEX(38)] = 1'b1;
    poly_r[`INDEX2(38)] = 2'b10;

    poly_a[`INDEX(39)] = 1'b1;
    poly_r[`INDEX2(39)] = 2'b10;

    poly_a[`INDEX(40)] = 1'b1;
    poly_r[`INDEX2(40)] = 2'b10;

    poly_a[`INDEX(41)] = 1'b1;
    poly_r[`INDEX2(41)] = 2'b10;

    poly_a[`INDEX(42)] = 1'b1;
    poly_r[`INDEX2(42)] = 2'b10;

    poly_a[`INDEX(43)] = 1'b1;
    poly_r[`INDEX2(43)] = 2'b10;

    poly_a[`INDEX(44)] = 1'b1;
    poly_r[`INDEX2(44)] = 2'b10;

    poly_a[`INDEX(45)] = 1'b1;
    poly_r[`INDEX2(45)] = 2'b10;

    poly_a[`INDEX(46)] = 1'b1;
    poly_r[`INDEX2(46)] = 2'b10;

    poly_a[`INDEX(47)] = 1'b1;
    poly_r[`INDEX2(47)] = 2'b10;

    poly_a[`INDEX(48)] = 1'b1;
    poly_r[`INDEX2(48)] = 2'b10;

    poly_a[`INDEX(49)] = 1'b1;
    poly_r[`INDEX2(49)] = 2'b10;

    poly_a[`INDEX(50)] = 1'b1;
    poly_r[`INDEX2(50)] = 2'b10;

    poly_a[`INDEX(51)] = 1'b1;
    poly_r[`INDEX2(51)] = 2'b10;

    poly_a[`INDEX(52)] = 1'b1;
    poly_r[`INDEX2(52)] = 2'b10;

    poly_a[`INDEX(53)] = 1'b1;
    poly_r[`INDEX2(53)] = 2'b10;

    poly_a[`INDEX(54)] = 1'b1;
    poly_r[`INDEX2(54)] = 2'b10;

    poly_a[`INDEX(55)] = 1'b1;
    poly_r[`INDEX2(55)] = 2'b10;

    poly_a[`INDEX(56)] = 1'b1;
    poly_r[`INDEX2(56)] = 2'b10;

    poly_a[`INDEX(57)] = 1'b1;
    poly_r[`INDEX2(57)] = 2'b10;

    poly_a[`INDEX(58)] = 1'b1;
    poly_r[`INDEX2(58)] = 2'b10;

    poly_a[`INDEX(59)] = 1'b1;
    poly_r[`INDEX2(59)] = 2'b10;

    poly_a[`INDEX(60)] = 1'b1;
    poly_r[`INDEX2(60)] = 2'b10;

    poly_a[`INDEX(61)] = 1'b1;
    poly_r[`INDEX2(61)] = 2'b10;

    poly_a[`INDEX(62)] = 1'b1;
    poly_r[`INDEX2(62)] = 2'b10;

    poly_a[`INDEX(63)] = 1'b1;
    poly_r[`INDEX2(63)] = 2'b10;

    poly_a[`INDEX(64)] = 1'b1;
    poly_r[`INDEX2(64)] = 2'b10;

    poly_a[`INDEX(65)] = 1'b1;
    poly_r[`INDEX2(65)] = 2'b10;

    poly_a[`INDEX(66)] = 1'b1;
    poly_r[`INDEX2(66)] = 2'b10;

    poly_a[`INDEX(67)] = 1'b1;
    poly_r[`INDEX2(67)] = 2'b10;

    poly_a[`INDEX(68)] = 1'b1;
    poly_r[`INDEX2(68)] = 2'b10;

    poly_a[`INDEX(69)] = 1'b1;
    poly_r[`INDEX2(69)] = 2'b10;

    poly_a[`INDEX(70)] = 1'b1;
    poly_r[`INDEX2(70)] = 2'b10;

    poly_a[`INDEX(71)] = 1'b1;
    poly_r[`INDEX2(71)] = 2'b10;

    poly_a[`INDEX(72)] = 1'b1;
    poly_r[`INDEX2(72)] = 2'b10;

    poly_a[`INDEX(73)] = 1'b1;
    poly_r[`INDEX2(73)] = 2'b10;

    poly_a[`INDEX(74)] = 1'b1;
    poly_r[`INDEX2(74)] = 2'b10;

    poly_a[`INDEX(75)] = 1'b1;
    poly_r[`INDEX2(75)] = 2'b10;

    poly_a[`INDEX(76)] = 1'b1;
    poly_r[`INDEX2(76)] = 2'b10;

    poly_a[`INDEX(77)] = 1'b1;
    poly_r[`INDEX2(77)] = 2'b10;

    poly_a[`INDEX(78)] = 1'b1;
    poly_r[`INDEX2(78)] = 2'b10;

    poly_a[`INDEX(79)] = 1'b1;
    poly_r[`INDEX2(79)] = 2'b10;

    poly_a[`INDEX(80)] = 1'b1;
    poly_r[`INDEX2(80)] = 2'b10;

    poly_a[`INDEX(81)] = 1'b1;
    poly_r[`INDEX2(81)] = 2'b10;

    poly_a[`INDEX(82)] = 1'b1;
    poly_r[`INDEX2(82)] = 2'b10;

    poly_a[`INDEX(83)] = 1'b1;
    poly_r[`INDEX2(83)] = 2'b10;

    poly_a[`INDEX(84)] = 1'b1;
    poly_r[`INDEX2(84)] = 2'b10;

    poly_a[`INDEX(85)] = 1'b1;
    poly_r[`INDEX2(85)] = 2'b10;

    poly_a[`INDEX(86)] = 1'b1;
    poly_r[`INDEX2(86)] = 2'b10;

    poly_a[`INDEX(87)] = 1'b1;
    poly_r[`INDEX2(87)] = 2'b10;

    poly_a[`INDEX(88)] = 1'b1;
    poly_r[`INDEX2(88)] = 2'b10;

    poly_a[`INDEX(89)] = 1'b1;
    poly_r[`INDEX2(89)] = 2'b10;

    poly_a[`INDEX(90)] = 1'b1;
    poly_r[`INDEX2(90)] = 2'b10;

    poly_a[`INDEX(91)] = 1'b1;
    poly_r[`INDEX2(91)] = 2'b10;

    poly_a[`INDEX(92)] = 1'b1;
    poly_r[`INDEX2(92)] = 2'b10;

    poly_a[`INDEX(93)] = 1'b1;
    poly_r[`INDEX2(93)] = 2'b10;

    poly_a[`INDEX(94)] = 1'b1;
    poly_r[`INDEX2(94)] = 2'b10;

    poly_a[`INDEX(95)] = 1'b1;
    poly_r[`INDEX2(95)] = 2'b10;

    poly_a[`INDEX(96)] = 1'b1;
    poly_r[`INDEX2(96)] = 2'b10;

    poly_a[`INDEX(97)] = 1'b1;
    poly_r[`INDEX2(97)] = 2'b10;

    poly_a[`INDEX(98)] = 1'b1;
    poly_r[`INDEX2(98)] = 2'b10;

    poly_a[`INDEX(99)] = 1'b1;
    poly_r[`INDEX2(99)] = 2'b10;

    poly_a[`INDEX(100)] = 1'b1;
    poly_r[`INDEX2(100)] = 2'b10;

    poly_a[`INDEX(101)] = 1'b1;
    poly_r[`INDEX2(101)] = 2'b10;

    poly_a[`INDEX(102)] = 1'b1;
    poly_r[`INDEX2(102)] = 2'b10;

    poly_a[`INDEX(103)] = 1'b1;
    poly_r[`INDEX2(103)] = 2'b10;

    poly_a[`INDEX(104)] = 1'b1;
    poly_r[`INDEX2(104)] = 2'b10;

    poly_a[`INDEX(105)] = 1'b1;
    poly_r[`INDEX2(105)] = 2'b10;

    poly_a[`INDEX(106)] = 1'b1;
    poly_r[`INDEX2(106)] = 2'b10;

    poly_a[`INDEX(107)] = 1'b1;
    poly_r[`INDEX2(107)] = 2'b10;

    poly_a[`INDEX(108)] = 1'b1;
    poly_r[`INDEX2(108)] = 2'b10;

    poly_a[`INDEX(109)] = 1'b1;
    poly_r[`INDEX2(109)] = 2'b10;

    poly_a[`INDEX(110)] = 1'b1;
    poly_r[`INDEX2(110)] = 2'b10;

    poly_a[`INDEX(111)] = 1'b1;
    poly_r[`INDEX2(111)] = 2'b10;

    poly_a[`INDEX(112)] = 1'b1;
    poly_r[`INDEX2(112)] = 2'b10;

    poly_a[`INDEX(113)] = 1'b1;
    poly_r[`INDEX2(113)] = 2'b10;

    poly_a[`INDEX(114)] = 1'b1;
    poly_r[`INDEX2(114)] = 2'b10;

    poly_a[`INDEX(115)] = 1'b1;
    poly_r[`INDEX2(115)] = 2'b10;

    poly_a[`INDEX(116)] = 1'b1;
    poly_r[`INDEX2(116)] = 2'b10;

    poly_a[`INDEX(117)] = 1'b1;
    poly_r[`INDEX2(117)] = 2'b10;

    poly_a[`INDEX(118)] = 1'b1;
    poly_r[`INDEX2(118)] = 2'b10;

    poly_a[`INDEX(119)] = 1'b1;
    poly_r[`INDEX2(119)] = 2'b10;

    poly_a[`INDEX(120)] = 1'b1;
    poly_r[`INDEX2(120)] = 2'b10;

    poly_a[`INDEX(121)] = 1'b1;
    poly_r[`INDEX2(121)] = 2'b10;

    poly_a[`INDEX(122)] = 1'b1;
    poly_r[`INDEX2(122)] = 2'b10;

    poly_a[`INDEX(123)] = 1'b1;
    poly_r[`INDEX2(123)] = 2'b10;

    poly_a[`INDEX(124)] = 1'b1;
    poly_r[`INDEX2(124)] = 2'b10;

    poly_a[`INDEX(125)] = 1'b1;
    poly_r[`INDEX2(125)] = 2'b10;

    poly_a[`INDEX(126)] = 1'b1;
    poly_r[`INDEX2(126)] = 2'b10;

    poly_a[`INDEX(127)] = 1'b1;
    poly_r[`INDEX2(127)] = 2'b10;

    poly_a[`INDEX(128)] = 1'b1;
    poly_r[`INDEX2(128)] = 2'b10;

    poly_a[`INDEX(129)] = 1'b1;
    poly_r[`INDEX2(129)] = 2'b10;

    poly_a[`INDEX(130)] = 1'b1;
    poly_r[`INDEX2(130)] = 2'b10;

    poly_a[`INDEX(131)] = 1'b1;
    poly_r[`INDEX2(131)] = 2'b10;

    poly_a[`INDEX(132)] = 1'b1;
    poly_r[`INDEX2(132)] = 2'b10;

    poly_a[`INDEX(133)] = 1'b1;
    poly_r[`INDEX2(133)] = 2'b10;

    poly_a[`INDEX(134)] = 1'b1;
    poly_r[`INDEX2(134)] = 2'b10;

    poly_a[`INDEX(135)] = 1'b1;
    poly_r[`INDEX2(135)] = 2'b10;

    poly_a[`INDEX(136)] = 1'b1;
    poly_r[`INDEX2(136)] = 2'b10;

    poly_a[`INDEX(137)] = 1'b1;
    poly_r[`INDEX2(137)] = 2'b10;

    poly_a[`INDEX(138)] = 1'b1;
    poly_r[`INDEX2(138)] = 2'b10;

    poly_a[`INDEX(139)] = 1'b1;
    poly_r[`INDEX2(139)] = 2'b10;

    poly_a[`INDEX(140)] = 1'b1;
    poly_r[`INDEX2(140)] = 2'b10;

    poly_a[`INDEX(141)] = 1'b1;
    poly_r[`INDEX2(141)] = 2'b10;

    poly_a[`INDEX(142)] = 1'b1;
    poly_r[`INDEX2(142)] = 2'b10;

    poly_a[`INDEX(143)] = 1'b1;
    poly_r[`INDEX2(143)] = 2'b10;

    poly_a[`INDEX(144)] = 1'b1;
    poly_r[`INDEX2(144)] = 2'b10;

    poly_a[`INDEX(145)] = 1'b1;
    poly_r[`INDEX2(145)] = 2'b10;

    poly_a[`INDEX(146)] = 1'b1;
    poly_r[`INDEX2(146)] = 2'b10;

    poly_a[`INDEX(147)] = 1'b1;
    poly_r[`INDEX2(147)] = 2'b10;

    poly_a[`INDEX(148)] = 1'b1;
    poly_r[`INDEX2(148)] = 2'b10;

    poly_a[`INDEX(149)] = 1'b1;
    poly_r[`INDEX2(149)] = 2'b10;

    poly_a[`INDEX(150)] = 1'b1;
    poly_r[`INDEX2(150)] = 2'b10;

    poly_a[`INDEX(151)] = 1'b1;
    poly_r[`INDEX2(151)] = 2'b10;

    poly_a[`INDEX(152)] = 1'b1;
    poly_r[`INDEX2(152)] = 2'b10;

    poly_a[`INDEX(153)] = 1'b1;
    poly_r[`INDEX2(153)] = 2'b10;

    poly_a[`INDEX(154)] = 1'b1;
    poly_r[`INDEX2(154)] = 2'b10;

    poly_a[`INDEX(155)] = 1'b1;
    poly_r[`INDEX2(155)] = 2'b10;

    poly_a[`INDEX(156)] = 1'b1;
    poly_r[`INDEX2(156)] = 2'b10;

    poly_a[`INDEX(157)] = 1'b1;
    poly_r[`INDEX2(157)] = 2'b10;

    poly_a[`INDEX(158)] = 1'b1;
    poly_r[`INDEX2(158)] = 2'b10;

    poly_a[`INDEX(159)] = 1'b1;
    poly_r[`INDEX2(159)] = 2'b10;

    poly_a[`INDEX(160)] = 1'b1;
    poly_r[`INDEX2(160)] = 2'b10;

    poly_a[`INDEX(161)] = 1'b1;
    poly_r[`INDEX2(161)] = 2'b10;

    poly_a[`INDEX(162)] = 1'b1;
    poly_r[`INDEX2(162)] = 2'b10;

    poly_a[`INDEX(163)] = 1'b1;
    poly_r[`INDEX2(163)] = 2'b10;

    poly_a[`INDEX(164)] = 1'b1;
    poly_r[`INDEX2(164)] = 2'b10;

    poly_a[`INDEX(165)] = 1'b1;
    poly_r[`INDEX2(165)] = 2'b10;

    poly_a[`INDEX(166)] = 1'b1;
    poly_r[`INDEX2(166)] = 2'b10;

    poly_a[`INDEX(167)] = 1'b1;
    poly_r[`INDEX2(167)] = 2'b10;

    poly_a[`INDEX(168)] = 1'b1;
    poly_r[`INDEX2(168)] = 2'b10;

    poly_a[`INDEX(169)] = 1'b1;
    poly_r[`INDEX2(169)] = 2'b10;

    poly_a[`INDEX(170)] = 1'b1;
    poly_r[`INDEX2(170)] = 2'b10;

    poly_a[`INDEX(171)] = 1'b1;
    poly_r[`INDEX2(171)] = 2'b10;

    poly_a[`INDEX(172)] = 1'b1;
    poly_r[`INDEX2(172)] = 2'b10;

    poly_a[`INDEX(173)] = 1'b1;
    poly_r[`INDEX2(173)] = 2'b10;

    poly_a[`INDEX(174)] = 1'b1;
    poly_r[`INDEX2(174)] = 2'b10;

    poly_a[`INDEX(175)] = 1'b1;
    poly_r[`INDEX2(175)] = 2'b10;

    poly_a[`INDEX(176)] = 1'b1;
    poly_r[`INDEX2(176)] = 2'b10;

    poly_a[`INDEX(177)] = 1'b1;
    poly_r[`INDEX2(177)] = 2'b10;

    poly_a[`INDEX(178)] = 1'b1;
    poly_r[`INDEX2(178)] = 2'b10;

    poly_a[`INDEX(179)] = 1'b1;
    poly_r[`INDEX2(179)] = 2'b10;

    poly_a[`INDEX(180)] = 1'b1;
    poly_r[`INDEX2(180)] = 2'b10;

    poly_a[`INDEX(181)] = 1'b1;
    poly_r[`INDEX2(181)] = 2'b10;

    poly_a[`INDEX(182)] = 1'b1;
    poly_r[`INDEX2(182)] = 2'b10;

    poly_a[`INDEX(183)] = 1'b1;
    poly_r[`INDEX2(183)] = 2'b10;

    poly_a[`INDEX(184)] = 1'b1;
    poly_r[`INDEX2(184)] = 2'b10;

    poly_a[`INDEX(185)] = 1'b1;
    poly_r[`INDEX2(185)] = 2'b10;

    poly_a[`INDEX(186)] = 1'b1;
    poly_r[`INDEX2(186)] = 2'b10;

    poly_a[`INDEX(187)] = 1'b1;
    poly_r[`INDEX2(187)] = 2'b10;

    poly_a[`INDEX(188)] = 1'b1;
    poly_r[`INDEX2(188)] = 2'b10;

    poly_a[`INDEX(189)] = 1'b1;
    poly_r[`INDEX2(189)] = 2'b10;

    poly_a[`INDEX(190)] = 1'b1;
    poly_r[`INDEX2(190)] = 2'b10;

    poly_a[`INDEX(191)] = 1'b1;
    poly_r[`INDEX2(191)] = 2'b10;

    poly_a[`INDEX(192)] = 1'b1;
    poly_r[`INDEX2(192)] = 2'b10;

    poly_a[`INDEX(193)] = 1'b1;
    poly_r[`INDEX2(193)] = 2'b10;

    poly_a[`INDEX(194)] = 1'b1;
    poly_r[`INDEX2(194)] = 2'b10;

    poly_a[`INDEX(195)] = 1'b1;
    poly_r[`INDEX2(195)] = 2'b10;

    poly_a[`INDEX(196)] = 1'b1;
    poly_r[`INDEX2(196)] = 2'b10;

    poly_a[`INDEX(197)] = 1'b1;
    poly_r[`INDEX2(197)] = 2'b10;

    poly_a[`INDEX(198)] = 1'b1;
    poly_r[`INDEX2(198)] = 2'b10;

    poly_a[`INDEX(199)] = 1'b1;
    poly_r[`INDEX2(199)] = 2'b10;

    poly_a[`INDEX(200)] = 1'b1;
    poly_r[`INDEX2(200)] = 2'b10;

    poly_a[`INDEX(201)] = 1'b1;
    poly_r[`INDEX2(201)] = 2'b10;

    poly_a[`INDEX(202)] = 1'b1;
    poly_r[`INDEX2(202)] = 2'b10;

    poly_a[`INDEX(203)] = 1'b1;
    poly_r[`INDEX2(203)] = 2'b10;

    poly_a[`INDEX(204)] = 1'b1;
    poly_r[`INDEX2(204)] = 2'b10;

    poly_a[`INDEX(205)] = 1'b1;
    poly_r[`INDEX2(205)] = 2'b10;

    poly_a[`INDEX(206)] = 1'b1;
    poly_r[`INDEX2(206)] = 2'b10;

    poly_a[`INDEX(207)] = 1'b1;
    poly_r[`INDEX2(207)] = 2'b10;

    poly_a[`INDEX(208)] = 1'b1;
    poly_r[`INDEX2(208)] = 2'b10;

    poly_a[`INDEX(209)] = 1'b1;
    poly_r[`INDEX2(209)] = 2'b10;

    poly_a[`INDEX(210)] = 1'b1;
    poly_r[`INDEX2(210)] = 2'b10;

    poly_a[`INDEX(211)] = 1'b1;
    poly_r[`INDEX2(211)] = 2'b10;

    poly_a[`INDEX(212)] = 1'b1;
    poly_r[`INDEX2(212)] = 2'b10;

    poly_a[`INDEX(213)] = 1'b1;
    poly_r[`INDEX2(213)] = 2'b10;

    poly_a[`INDEX(214)] = 1'b1;
    poly_r[`INDEX2(214)] = 2'b10;

    poly_a[`INDEX(215)] = 1'b1;
    poly_r[`INDEX2(215)] = 2'b10;

    poly_a[`INDEX(216)] = 1'b1;
    poly_r[`INDEX2(216)] = 2'b10;

    poly_a[`INDEX(217)] = 1'b1;
    poly_r[`INDEX2(217)] = 2'b10;

    poly_a[`INDEX(218)] = 1'b1;
    poly_r[`INDEX2(218)] = 2'b10;

    poly_a[`INDEX(219)] = 1'b1;
    poly_r[`INDEX2(219)] = 2'b10;

    poly_a[`INDEX(220)] = 1'b1;
    poly_r[`INDEX2(220)] = 2'b10;

    poly_a[`INDEX(221)] = 1'b1;
    poly_r[`INDEX2(221)] = 2'b10;

    poly_a[`INDEX(222)] = 1'b1;
    poly_r[`INDEX2(222)] = 2'b10;

    poly_a[`INDEX(223)] = 1'b1;
    poly_r[`INDEX2(223)] = 2'b10;

    poly_a[`INDEX(224)] = 1'b1;
    poly_r[`INDEX2(224)] = 2'b10;

    poly_a[`INDEX(225)] = 1'b1;
    poly_r[`INDEX2(225)] = 2'b10;

    poly_a[`INDEX(226)] = 1'b1;
    poly_r[`INDEX2(226)] = 2'b10;

    poly_a[`INDEX(227)] = 1'b1;
    poly_r[`INDEX2(227)] = 2'b10;

    poly_a[`INDEX(228)] = 1'b1;
    poly_r[`INDEX2(228)] = 2'b10;

    poly_a[`INDEX(229)] = 1'b1;
    poly_r[`INDEX2(229)] = 2'b10;

    poly_a[`INDEX(230)] = 1'b1;
    poly_r[`INDEX2(230)] = 2'b10;

    poly_a[`INDEX(231)] = 1'b1;
    poly_r[`INDEX2(231)] = 2'b10;

    poly_a[`INDEX(232)] = 1'b1;
    poly_r[`INDEX2(232)] = 2'b10;

    poly_a[`INDEX(233)] = 1'b1;
    poly_r[`INDEX2(233)] = 2'b10;

    poly_a[`INDEX(234)] = 1'b1;
    poly_r[`INDEX2(234)] = 2'b10;

    poly_a[`INDEX(235)] = 1'b1;
    poly_r[`INDEX2(235)] = 2'b10;

    poly_a[`INDEX(236)] = 1'b1;
    poly_r[`INDEX2(236)] = 2'b10;

    poly_a[`INDEX(237)] = 1'b1;
    poly_r[`INDEX2(237)] = 2'b10;

    poly_a[`INDEX(238)] = 1'b1;
    poly_r[`INDEX2(238)] = 2'b10;

    poly_a[`INDEX(239)] = 1'b1;
    poly_r[`INDEX2(239)] = 2'b10;

    poly_a[`INDEX(240)] = 1'b1;
    poly_r[`INDEX2(240)] = 2'b10;

    poly_a[`INDEX(241)] = 1'b1;
    poly_r[`INDEX2(241)] = 2'b10;

    poly_a[`INDEX(242)] = 1'b1;
    poly_r[`INDEX2(242)] = 2'b10;

    poly_a[`INDEX(243)] = 1'b1;
    poly_r[`INDEX2(243)] = 2'b10;

    poly_a[`INDEX(244)] = 1'b1;
    poly_r[`INDEX2(244)] = 2'b10;

    poly_a[`INDEX(245)] = 1'b1;
    poly_r[`INDEX2(245)] = 2'b10;

    poly_a[`INDEX(246)] = 1'b1;
    poly_r[`INDEX2(246)] = 2'b10;

    poly_a[`INDEX(247)] = 1'b1;
    poly_r[`INDEX2(247)] = 2'b10;

    poly_a[`INDEX(248)] = 1'b1;
    poly_r[`INDEX2(248)] = 2'b10;

    poly_a[`INDEX(249)] = 1'b1;
    poly_r[`INDEX2(249)] = 2'b10;

    poly_a[`INDEX(250)] = 1'b1;
    poly_r[`INDEX2(250)] = 2'b10;

    poly_a[`INDEX(251)] = 1'b1;
    poly_r[`INDEX2(251)] = 2'b10;

    poly_a[`INDEX(252)] = 1'b1;
    poly_r[`INDEX2(252)] = 2'b10;

    poly_a[`INDEX(253)] = 1'b1;
    poly_r[`INDEX2(253)] = 2'b10;

    poly_a[`INDEX(254)] = 1'b1;
    poly_r[`INDEX2(254)] = 2'b10;

    poly_a[`INDEX(255)] = 1'b1;
    poly_r[`INDEX2(255)] = 2'b10;

    poly_a[`INDEX(256)] = 1'b1;
    poly_r[`INDEX2(256)] = 2'b10;

    poly_a[`INDEX(257)] = 1'b1;
    poly_r[`INDEX2(257)] = 2'b10;

    poly_a[`INDEX(258)] = 1'b1;
    poly_r[`INDEX2(258)] = 2'b10;

    poly_a[`INDEX(259)] = 1'b1;
    poly_r[`INDEX2(259)] = 2'b10;

    poly_a[`INDEX(260)] = 1'b1;
    poly_r[`INDEX2(260)] = 2'b10;

    poly_a[`INDEX(261)] = 1'b1;
    poly_r[`INDEX2(261)] = 2'b10;

    poly_a[`INDEX(262)] = 1'b1;
    poly_r[`INDEX2(262)] = 2'b10;

    poly_a[`INDEX(263)] = 1'b1;
    poly_r[`INDEX2(263)] = 2'b10;

    poly_a[`INDEX(264)] = 1'b1;
    poly_r[`INDEX2(264)] = 2'b10;

    poly_a[`INDEX(265)] = 1'b1;
    poly_r[`INDEX2(265)] = 2'b10;

    poly_a[`INDEX(266)] = 1'b1;
    poly_r[`INDEX2(266)] = 2'b10;

    poly_a[`INDEX(267)] = 1'b1;
    poly_r[`INDEX2(267)] = 2'b10;

    poly_a[`INDEX(268)] = 1'b1;
    poly_r[`INDEX2(268)] = 2'b10;

    poly_a[`INDEX(269)] = 1'b1;
    poly_r[`INDEX2(269)] = 2'b10;

    poly_a[`INDEX(270)] = 1'b1;
    poly_r[`INDEX2(270)] = 2'b10;

    poly_a[`INDEX(271)] = 1'b1;
    poly_r[`INDEX2(271)] = 2'b10;

    poly_a[`INDEX(272)] = 1'b1;
    poly_r[`INDEX2(272)] = 2'b10;

    poly_a[`INDEX(273)] = 1'b1;
    poly_r[`INDEX2(273)] = 2'b10;

    poly_a[`INDEX(274)] = 1'b1;
    poly_r[`INDEX2(274)] = 2'b10;

    poly_a[`INDEX(275)] = 1'b1;
    poly_r[`INDEX2(275)] = 2'b10;

    poly_a[`INDEX(276)] = 1'b1;
    poly_r[`INDEX2(276)] = 2'b10;

    poly_a[`INDEX(277)] = 1'b1;
    poly_r[`INDEX2(277)] = 2'b10;

    poly_a[`INDEX(278)] = 1'b1;
    poly_r[`INDEX2(278)] = 2'b10;

    poly_a[`INDEX(279)] = 1'b1;
    poly_r[`INDEX2(279)] = 2'b10;

    poly_a[`INDEX(280)] = 1'b1;
    poly_r[`INDEX2(280)] = 2'b10;

    poly_a[`INDEX(281)] = 1'b1;
    poly_r[`INDEX2(281)] = 2'b10;

    poly_a[`INDEX(282)] = 1'b1;
    poly_r[`INDEX2(282)] = 2'b10;

    poly_a[`INDEX(283)] = 1'b1;
    poly_r[`INDEX2(283)] = 2'b10;

    poly_a[`INDEX(284)] = 1'b1;
    poly_r[`INDEX2(284)] = 2'b10;

    poly_a[`INDEX(285)] = 1'b1;
    poly_r[`INDEX2(285)] = 2'b10;

    poly_a[`INDEX(286)] = 1'b1;
    poly_r[`INDEX2(286)] = 2'b10;

    poly_a[`INDEX(287)] = 1'b1;
    poly_r[`INDEX2(287)] = 2'b10;

    poly_a[`INDEX(288)] = 1'b1;
    poly_r[`INDEX2(288)] = 2'b10;

    poly_a[`INDEX(289)] = 1'b1;
    poly_r[`INDEX2(289)] = 2'b10;

    poly_a[`INDEX(290)] = 1'b1;
    poly_r[`INDEX2(290)] = 2'b10;

    poly_a[`INDEX(291)] = 1'b1;
    poly_r[`INDEX2(291)] = 2'b10;

    poly_a[`INDEX(292)] = 1'b1;
    poly_r[`INDEX2(292)] = 2'b10;

    poly_a[`INDEX(293)] = 1'b1;
    poly_r[`INDEX2(293)] = 2'b10;

    poly_a[`INDEX(294)] = 1'b1;
    poly_r[`INDEX2(294)] = 2'b10;

    poly_a[`INDEX(295)] = 1'b1;
    poly_r[`INDEX2(295)] = 2'b10;

    poly_a[`INDEX(296)] = 1'b1;
    poly_r[`INDEX2(296)] = 2'b10;

    poly_a[`INDEX(297)] = 1'b1;
    poly_r[`INDEX2(297)] = 2'b10;

    poly_a[`INDEX(298)] = 1'b1;
    poly_r[`INDEX2(298)] = 2'b10;

    poly_a[`INDEX(299)] = 1'b1;
    poly_r[`INDEX2(299)] = 2'b10;

    poly_a[`INDEX(300)] = 1'b1;
    poly_r[`INDEX2(300)] = 2'b10;

    poly_a[`INDEX(301)] = 1'b1;
    poly_r[`INDEX2(301)] = 2'b10;

    poly_a[`INDEX(302)] = 1'b1;
    poly_r[`INDEX2(302)] = 2'b10;

    poly_a[`INDEX(303)] = 1'b1;
    poly_r[`INDEX2(303)] = 2'b10;

    poly_a[`INDEX(304)] = 1'b1;
    poly_r[`INDEX2(304)] = 2'b10;

    poly_a[`INDEX(305)] = 1'b1;
    poly_r[`INDEX2(305)] = 2'b10;

    poly_a[`INDEX(306)] = 1'b1;
    poly_r[`INDEX2(306)] = 2'b10;

    poly_a[`INDEX(307)] = 1'b1;
    poly_r[`INDEX2(307)] = 2'b10;

    poly_a[`INDEX(308)] = 1'b1;
    poly_r[`INDEX2(308)] = 2'b10;

    poly_a[`INDEX(309)] = 1'b1;
    poly_r[`INDEX2(309)] = 2'b10;

    poly_a[`INDEX(310)] = 1'b1;
    poly_r[`INDEX2(310)] = 2'b10;

    poly_a[`INDEX(311)] = 1'b1;
    poly_r[`INDEX2(311)] = 2'b10;

    poly_a[`INDEX(312)] = 1'b1;
    poly_r[`INDEX2(312)] = 2'b10;

    poly_a[`INDEX(313)] = 1'b1;
    poly_r[`INDEX2(313)] = 2'b10;

    poly_a[`INDEX(314)] = 1'b1;
    poly_r[`INDEX2(314)] = 2'b10;

    poly_a[`INDEX(315)] = 1'b1;
    poly_r[`INDEX2(315)] = 2'b10;

    poly_a[`INDEX(316)] = 1'b1;
    poly_r[`INDEX2(316)] = 2'b10;

    poly_a[`INDEX(317)] = 1'b1;
    poly_r[`INDEX2(317)] = 2'b10;

    poly_a[`INDEX(318)] = 1'b1;
    poly_r[`INDEX2(318)] = 2'b10;

    poly_a[`INDEX(319)] = 1'b1;
    poly_r[`INDEX2(319)] = 2'b10;

    poly_a[`INDEX(320)] = 1'b1;
    poly_r[`INDEX2(320)] = 2'b10;

    poly_a[`INDEX(321)] = 1'b1;
    poly_r[`INDEX2(321)] = 2'b10;

    poly_a[`INDEX(322)] = 1'b1;
    poly_r[`INDEX2(322)] = 2'b10;

    poly_a[`INDEX(323)] = 1'b1;
    poly_r[`INDEX2(323)] = 2'b10;

    poly_a[`INDEX(324)] = 1'b1;
    poly_r[`INDEX2(324)] = 2'b10;

    poly_a[`INDEX(325)] = 1'b1;
    poly_r[`INDEX2(325)] = 2'b10;

    poly_a[`INDEX(326)] = 1'b1;
    poly_r[`INDEX2(326)] = 2'b10;

    poly_a[`INDEX(327)] = 1'b1;
    poly_r[`INDEX2(327)] = 2'b10;

    poly_a[`INDEX(328)] = 1'b1;
    poly_r[`INDEX2(328)] = 2'b10;

    poly_a[`INDEX(329)] = 1'b1;
    poly_r[`INDEX2(329)] = 2'b10;

    poly_a[`INDEX(330)] = 1'b1;
    poly_r[`INDEX2(330)] = 2'b10;

    poly_a[`INDEX(331)] = 1'b1;
    poly_r[`INDEX2(331)] = 2'b10;

    poly_a[`INDEX(332)] = 1'b1;
    poly_r[`INDEX2(332)] = 2'b10;

    poly_a[`INDEX(333)] = 1'b1;
    poly_r[`INDEX2(333)] = 2'b10;

    poly_a[`INDEX(334)] = 1'b1;
    poly_r[`INDEX2(334)] = 2'b10;

    poly_a[`INDEX(335)] = 1'b1;
    poly_r[`INDEX2(335)] = 2'b10;

    poly_a[`INDEX(336)] = 1'b1;
    poly_r[`INDEX2(336)] = 2'b10;

    poly_a[`INDEX(337)] = 1'b1;
    poly_r[`INDEX2(337)] = 2'b10;

    poly_a[`INDEX(338)] = 1'b1;
    poly_r[`INDEX2(338)] = 2'b10;

    poly_a[`INDEX(339)] = 1'b1;
    poly_r[`INDEX2(339)] = 2'b10;

    poly_a[`INDEX(340)] = 1'b1;
    poly_r[`INDEX2(340)] = 2'b10;

    poly_a[`INDEX(341)] = 1'b1;
    poly_r[`INDEX2(341)] = 2'b10;

    poly_a[`INDEX(342)] = 1'b1;
    poly_r[`INDEX2(342)] = 2'b10;

    poly_a[`INDEX(343)] = 1'b1;
    poly_r[`INDEX2(343)] = 2'b10;

    poly_a[`INDEX(344)] = 1'b1;
    poly_r[`INDEX2(344)] = 2'b10;

    poly_a[`INDEX(345)] = 1'b1;
    poly_r[`INDEX2(345)] = 2'b10;

    poly_a[`INDEX(346)] = 1'b1;
    poly_r[`INDEX2(346)] = 2'b10;

    poly_a[`INDEX(347)] = 1'b1;
    poly_r[`INDEX2(347)] = 2'b10;

    poly_a[`INDEX(348)] = 1'b1;
    poly_r[`INDEX2(348)] = 2'b10;

    poly_a[`INDEX(349)] = 1'b1;
    poly_r[`INDEX2(349)] = 2'b10;

    poly_a[`INDEX(350)] = 1'b1;
    poly_r[`INDEX2(350)] = 2'b10;

    poly_a[`INDEX(351)] = 1'b1;
    poly_r[`INDEX2(351)] = 2'b10;

    poly_a[`INDEX(352)] = 1'b1;
    poly_r[`INDEX2(352)] = 2'b10;

    poly_a[`INDEX(353)] = 1'b1;
    poly_r[`INDEX2(353)] = 2'b10;

    poly_a[`INDEX(354)] = 1'b1;
    poly_r[`INDEX2(354)] = 2'b10;

    poly_a[`INDEX(355)] = 1'b1;
    poly_r[`INDEX2(355)] = 2'b10;

    poly_a[`INDEX(356)] = 1'b1;
    poly_r[`INDEX2(356)] = 2'b10;

    poly_a[`INDEX(357)] = 1'b1;
    poly_r[`INDEX2(357)] = 2'b10;

    poly_a[`INDEX(358)] = 1'b1;
    poly_r[`INDEX2(358)] = 2'b10;

    poly_a[`INDEX(359)] = 1'b1;
    poly_r[`INDEX2(359)] = 2'b10;

    poly_a[`INDEX(360)] = 1'b1;
    poly_r[`INDEX2(360)] = 2'b10;

    poly_a[`INDEX(361)] = 1'b1;
    poly_r[`INDEX2(361)] = 2'b10;

    poly_a[`INDEX(362)] = 1'b1;
    poly_r[`INDEX2(362)] = 2'b10;

    poly_a[`INDEX(363)] = 1'b1;
    poly_r[`INDEX2(363)] = 2'b10;

    poly_a[`INDEX(364)] = 1'b1;
    poly_r[`INDEX2(364)] = 2'b10;

    poly_a[`INDEX(365)] = 1'b1;
    poly_r[`INDEX2(365)] = 2'b10;

    poly_a[`INDEX(366)] = 1'b1;
    poly_r[`INDEX2(366)] = 2'b10;

    poly_a[`INDEX(367)] = 1'b1;
    poly_r[`INDEX2(367)] = 2'b10;

    poly_a[`INDEX(368)] = 1'b1;
    poly_r[`INDEX2(368)] = 2'b10;

    poly_a[`INDEX(369)] = 1'b1;
    poly_r[`INDEX2(369)] = 2'b10;

    poly_a[`INDEX(370)] = 1'b1;
    poly_r[`INDEX2(370)] = 2'b10;

    poly_a[`INDEX(371)] = 1'b1;
    poly_r[`INDEX2(371)] = 2'b10;

    poly_a[`INDEX(372)] = 1'b1;
    poly_r[`INDEX2(372)] = 2'b10;

    poly_a[`INDEX(373)] = 1'b1;
    poly_r[`INDEX2(373)] = 2'b10;

    poly_a[`INDEX(374)] = 1'b1;
    poly_r[`INDEX2(374)] = 2'b10;

    poly_a[`INDEX(375)] = 1'b1;
    poly_r[`INDEX2(375)] = 2'b10;

    poly_a[`INDEX(376)] = 1'b1;
    poly_r[`INDEX2(376)] = 2'b10;

    poly_a[`INDEX(377)] = 1'b1;
    poly_r[`INDEX2(377)] = 2'b10;

    poly_a[`INDEX(378)] = 1'b1;
    poly_r[`INDEX2(378)] = 2'b10;

    poly_a[`INDEX(379)] = 1'b1;
    poly_r[`INDEX2(379)] = 2'b10;

    poly_a[`INDEX(380)] = 1'b1;
    poly_r[`INDEX2(380)] = 2'b10;

    poly_a[`INDEX(381)] = 1'b1;
    poly_r[`INDEX2(381)] = 2'b10;

    poly_a[`INDEX(382)] = 1'b1;
    poly_r[`INDEX2(382)] = 2'b10;

    poly_a[`INDEX(383)] = 1'b1;
    poly_r[`INDEX2(383)] = 2'b10;

    poly_a[`INDEX(384)] = 1'b1;
    poly_r[`INDEX2(384)] = 2'b10;

    poly_a[`INDEX(385)] = 1'b1;
    poly_r[`INDEX2(385)] = 2'b10;

    poly_a[`INDEX(386)] = 1'b1;
    poly_r[`INDEX2(386)] = 2'b10;

    poly_a[`INDEX(387)] = 1'b1;
    poly_r[`INDEX2(387)] = 2'b10;

    poly_a[`INDEX(388)] = 1'b1;
    poly_r[`INDEX2(388)] = 2'b10;

    poly_a[`INDEX(389)] = 1'b1;
    poly_r[`INDEX2(389)] = 2'b10;

    poly_a[`INDEX(390)] = 1'b1;
    poly_r[`INDEX2(390)] = 2'b10;

    poly_a[`INDEX(391)] = 1'b1;
    poly_r[`INDEX2(391)] = 2'b10;

    poly_a[`INDEX(392)] = 1'b1;
    poly_r[`INDEX2(392)] = 2'b10;

    poly_a[`INDEX(393)] = 1'b1;
    poly_r[`INDEX2(393)] = 2'b10;

    poly_a[`INDEX(394)] = 1'b1;
    poly_r[`INDEX2(394)] = 2'b10;

    poly_a[`INDEX(395)] = 1'b1;
    poly_r[`INDEX2(395)] = 2'b10;

    poly_a[`INDEX(396)] = 1'b1;
    poly_r[`INDEX2(396)] = 2'b10;

    poly_a[`INDEX(397)] = 1'b1;
    poly_r[`INDEX2(397)] = 2'b10;

    poly_a[`INDEX(398)] = 1'b1;
    poly_r[`INDEX2(398)] = 2'b10;

    poly_a[`INDEX(399)] = 1'b1;
    poly_r[`INDEX2(399)] = 2'b10;

    poly_a[`INDEX(400)] = 1'b1;
    poly_r[`INDEX2(400)] = 2'b10;

    poly_a[`INDEX(401)] = 1'b1;
    poly_r[`INDEX2(401)] = 2'b10;

    poly_a[`INDEX(402)] = 1'b1;
    poly_r[`INDEX2(402)] = 2'b10;

    poly_a[`INDEX(403)] = 1'b1;
    poly_r[`INDEX2(403)] = 2'b10;

    poly_a[`INDEX(404)] = 1'b1;
    poly_r[`INDEX2(404)] = 2'b10;

    poly_a[`INDEX(405)] = 1'b1;
    poly_r[`INDEX2(405)] = 2'b10;

    poly_a[`INDEX(406)] = 1'b1;
    poly_r[`INDEX2(406)] = 2'b10;

    poly_a[`INDEX(407)] = 1'b1;
    poly_r[`INDEX2(407)] = 2'b10;

    poly_a[`INDEX(408)] = 1'b1;
    poly_r[`INDEX2(408)] = 2'b10;

    poly_a[`INDEX(409)] = 1'b1;
    poly_r[`INDEX2(409)] = 2'b10;

    poly_a[`INDEX(410)] = 1'b1;
    poly_r[`INDEX2(410)] = 2'b10;

    poly_a[`INDEX(411)] = 1'b1;
    poly_r[`INDEX2(411)] = 2'b10;

    poly_a[`INDEX(412)] = 1'b1;
    poly_r[`INDEX2(412)] = 2'b10;

    poly_a[`INDEX(413)] = 1'b1;
    poly_r[`INDEX2(413)] = 2'b10;

    poly_a[`INDEX(414)] = 1'b1;
    poly_r[`INDEX2(414)] = 2'b10;

    poly_a[`INDEX(415)] = 1'b1;
    poly_r[`INDEX2(415)] = 2'b10;

    poly_a[`INDEX(416)] = 1'b1;
    poly_r[`INDEX2(416)] = 2'b10;

    poly_a[`INDEX(417)] = 1'b1;
    poly_r[`INDEX2(417)] = 2'b10;

    poly_a[`INDEX(418)] = 1'b1;
    poly_r[`INDEX2(418)] = 2'b10;

    poly_a[`INDEX(419)] = 1'b1;
    poly_r[`INDEX2(419)] = 2'b10;

    poly_a[`INDEX(420)] = 1'b1;
    poly_r[`INDEX2(420)] = 2'b10;

    poly_a[`INDEX(421)] = 1'b1;
    poly_r[`INDEX2(421)] = 2'b10;

    poly_a[`INDEX(422)] = 1'b1;
    poly_r[`INDEX2(422)] = 2'b10;

    poly_a[`INDEX(423)] = 1'b1;
    poly_r[`INDEX2(423)] = 2'b10;

    poly_a[`INDEX(424)] = 1'b1;
    poly_r[`INDEX2(424)] = 2'b10;

    poly_a[`INDEX(425)] = 1'b1;
    poly_r[`INDEX2(425)] = 2'b10;

    poly_a[`INDEX(426)] = 1'b1;
    poly_r[`INDEX2(426)] = 2'b10;

    poly_a[`INDEX(427)] = 1'b1;
    poly_r[`INDEX2(427)] = 2'b10;

    poly_a[`INDEX(428)] = 1'b1;
    poly_r[`INDEX2(428)] = 2'b10;

    poly_a[`INDEX(429)] = 1'b1;
    poly_r[`INDEX2(429)] = 2'b10;

    poly_a[`INDEX(430)] = 1'b1;
    poly_r[`INDEX2(430)] = 2'b10;

    poly_a[`INDEX(431)] = 1'b1;
    poly_r[`INDEX2(431)] = 2'b10;

    poly_a[`INDEX(432)] = 1'b1;
    poly_r[`INDEX2(432)] = 2'b10;

    poly_a[`INDEX(433)] = 1'b1;
    poly_r[`INDEX2(433)] = 2'b10;

    poly_a[`INDEX(434)] = 1'b1;
    poly_r[`INDEX2(434)] = 2'b10;

    poly_a[`INDEX(435)] = 1'b1;
    poly_r[`INDEX2(435)] = 2'b10;

    poly_a[`INDEX(436)] = 1'b1;
    poly_r[`INDEX2(436)] = 2'b10;

    poly_a[`INDEX(437)] = 1'b1;
    poly_r[`INDEX2(437)] = 2'b10;

    poly_a[`INDEX(438)] = 1'b1;
    poly_r[`INDEX2(438)] = 2'b10;

    poly_a[`INDEX(439)] = 1'b1;
    poly_r[`INDEX2(439)] = 2'b10;

    poly_a[`INDEX(440)] = 1'b1;
    poly_r[`INDEX2(440)] = 2'b10;

    poly_a[`INDEX(441)] = 1'b1;
    poly_r[`INDEX2(441)] = 2'b10;

    poly_a[`INDEX(442)] = 1'b1;
    poly_r[`INDEX2(442)] = 2'b10;

    poly_a[`INDEX(443)] = 1'b1;
    poly_r[`INDEX2(443)] = 2'b10;

    poly_a[`INDEX(444)] = 1'b1;
    poly_r[`INDEX2(444)] = 2'b10;

    poly_a[`INDEX(445)] = 1'b1;
    poly_r[`INDEX2(445)] = 2'b10;

    poly_a[`INDEX(446)] = 1'b1;
    poly_r[`INDEX2(446)] = 2'b10;

    poly_a[`INDEX(447)] = 1'b1;
    poly_r[`INDEX2(447)] = 2'b10;

    poly_a[`INDEX(448)] = 1'b1;
    poly_r[`INDEX2(448)] = 2'b10;

    poly_a[`INDEX(449)] = 1'b1;
    poly_r[`INDEX2(449)] = 2'b10;

    poly_a[`INDEX(450)] = 1'b1;
    poly_r[`INDEX2(450)] = 2'b10;

    poly_a[`INDEX(451)] = 1'b1;
    poly_r[`INDEX2(451)] = 2'b10;

    poly_a[`INDEX(452)] = 1'b1;
    poly_r[`INDEX2(452)] = 2'b10;

    poly_a[`INDEX(453)] = 1'b1;
    poly_r[`INDEX2(453)] = 2'b10;

    poly_a[`INDEX(454)] = 1'b1;
    poly_r[`INDEX2(454)] = 2'b10;

    poly_a[`INDEX(455)] = 1'b1;
    poly_r[`INDEX2(455)] = 2'b10;

    poly_a[`INDEX(456)] = 1'b1;
    poly_r[`INDEX2(456)] = 2'b10;

    poly_a[`INDEX(457)] = 1'b1;
    poly_r[`INDEX2(457)] = 2'b10;

    poly_a[`INDEX(458)] = 1'b1;
    poly_r[`INDEX2(458)] = 2'b10;

    poly_a[`INDEX(459)] = 1'b1;
    poly_r[`INDEX2(459)] = 2'b10;

    poly_a[`INDEX(460)] = 1'b1;
    poly_r[`INDEX2(460)] = 2'b10;

    poly_a[`INDEX(461)] = 1'b1;
    poly_r[`INDEX2(461)] = 2'b10;

    poly_a[`INDEX(462)] = 1'b1;
    poly_r[`INDEX2(462)] = 2'b10;

    poly_a[`INDEX(463)] = 1'b1;
    poly_r[`INDEX2(463)] = 2'b10;

    poly_a[`INDEX(464)] = 1'b1;
    poly_r[`INDEX2(464)] = 2'b10;

    poly_a[`INDEX(465)] = 1'b1;
    poly_r[`INDEX2(465)] = 2'b10;

    poly_a[`INDEX(466)] = 1'b1;
    poly_r[`INDEX2(466)] = 2'b10;

    poly_a[`INDEX(467)] = 1'b1;
    poly_r[`INDEX2(467)] = 2'b10;

    poly_a[`INDEX(468)] = 1'b1;
    poly_r[`INDEX2(468)] = 2'b10;

    poly_a[`INDEX(469)] = 1'b1;
    poly_r[`INDEX2(469)] = 2'b10;

    poly_a[`INDEX(470)] = 1'b1;
    poly_r[`INDEX2(470)] = 2'b10;

    poly_a[`INDEX(471)] = 1'b1;
    poly_r[`INDEX2(471)] = 2'b10;

    poly_a[`INDEX(472)] = 1'b1;
    poly_r[`INDEX2(472)] = 2'b10;

    poly_a[`INDEX(473)] = 1'b1;
    poly_r[`INDEX2(473)] = 2'b10;

    poly_a[`INDEX(474)] = 1'b1;
    poly_r[`INDEX2(474)] = 2'b10;

    poly_a[`INDEX(475)] = 1'b1;
    poly_r[`INDEX2(475)] = 2'b10;

    poly_a[`INDEX(476)] = 1'b1;
    poly_r[`INDEX2(476)] = 2'b10;

    poly_a[`INDEX(477)] = 1'b1;
    poly_r[`INDEX2(477)] = 2'b10;

    poly_a[`INDEX(478)] = 1'b1;
    poly_r[`INDEX2(478)] = 2'b10;

    poly_a[`INDEX(479)] = 1'b1;
    poly_r[`INDEX2(479)] = 2'b10;

    poly_a[`INDEX(480)] = 1'b1;
    poly_r[`INDEX2(480)] = 2'b10;

    poly_a[`INDEX(481)] = 1'b1;
    poly_r[`INDEX2(481)] = 2'b10;

    poly_a[`INDEX(482)] = 1'b1;
    poly_r[`INDEX2(482)] = 2'b10;

    poly_a[`INDEX(483)] = 1'b1;
    poly_r[`INDEX2(483)] = 2'b10;

    poly_a[`INDEX(484)] = 1'b1;
    poly_r[`INDEX2(484)] = 2'b10;

    poly_a[`INDEX(485)] = 1'b1;
    poly_r[`INDEX2(485)] = 2'b10;

    poly_a[`INDEX(486)] = 1'b1;
    poly_r[`INDEX2(486)] = 2'b10;

    poly_a[`INDEX(487)] = 1'b1;
    poly_r[`INDEX2(487)] = 2'b10;

    poly_a[`INDEX(488)] = 1'b1;
    poly_r[`INDEX2(488)] = 2'b10;

    poly_a[`INDEX(489)] = 1'b1;
    poly_r[`INDEX2(489)] = 2'b10;

    poly_a[`INDEX(490)] = 1'b1;
    poly_r[`INDEX2(490)] = 2'b10;

    poly_a[`INDEX(491)] = 1'b1;
    poly_r[`INDEX2(491)] = 2'b10;

    poly_a[`INDEX(492)] = 1'b1;
    poly_r[`INDEX2(492)] = 2'b10;

    poly_a[`INDEX(493)] = 1'b1;
    poly_r[`INDEX2(493)] = 2'b10;

    poly_a[`INDEX(494)] = 1'b1;
    poly_r[`INDEX2(494)] = 2'b10;

    poly_a[`INDEX(495)] = 1'b1;
    poly_r[`INDEX2(495)] = 2'b10;

    poly_a[`INDEX(496)] = 1'b1;
    poly_r[`INDEX2(496)] = 2'b10;

    poly_a[`INDEX(497)] = 1'b1;
    poly_r[`INDEX2(497)] = 2'b10;

    poly_a[`INDEX(498)] = 1'b1;
    poly_r[`INDEX2(498)] = 2'b10;

    poly_a[`INDEX(499)] = 1'b1;
    poly_r[`INDEX2(499)] = 2'b10;

    poly_a[`INDEX(500)] = 1'b1;
    poly_r[`INDEX2(500)] = 2'b10;

    poly_a[`INDEX(501)] = 1'b1;
    poly_r[`INDEX2(501)] = 2'b10;

    poly_a[`INDEX(502)] = 1'b1;
    poly_r[`INDEX2(502)] = 2'b10;

    poly_a[`INDEX(503)] = 1'b1;
    poly_r[`INDEX2(503)] = 2'b10;

    poly_a[`INDEX(504)] = 1'b1;
    poly_r[`INDEX2(504)] = 2'b10;

    poly_a[`INDEX(505)] = 1'b1;
    poly_r[`INDEX2(505)] = 2'b10;

    poly_a[`INDEX(506)] = 1'b1;
    poly_r[`INDEX2(506)] = 2'b10;

    poly_a[`INDEX(507)] = 1'b1;
    poly_r[`INDEX2(507)] = 2'b10;

    poly_a[`INDEX(508)] = 1'b1;
    poly_r[`INDEX2(508)] = 2'b10;

    poly_a[`INDEX(509)] = 1'b1;
    poly_r[`INDEX2(509)] = 2'b10;

    poly_a[`INDEX(510)] = 1'b1;
    poly_r[`INDEX2(510)] = 2'b10;

    poly_a[`INDEX(511)] = 1'b1;
    poly_r[`INDEX2(511)] = 2'b10;
# 1000

    poly_a[`INDEX(0)] = 1'b1;
    poly_r[`INDEX2(0)] = 2'b01;

    poly_a[`INDEX(1)] = 1'b1;
    poly_r[`INDEX2(1)] = 2'b01;

    poly_a[`INDEX(2)] = 1'b1;
    poly_r[`INDEX2(2)] = 2'b01;

    poly_a[`INDEX(3)] = 1'b1;
    poly_r[`INDEX2(3)] = 2'b01;

    poly_a[`INDEX(4)] = 1'b1;
    poly_r[`INDEX2(4)] = 2'b01;

    poly_a[`INDEX(5)] = 1'b1;
    poly_r[`INDEX2(5)] = 2'b01;

    poly_a[`INDEX(6)] = 1'b1;
    poly_r[`INDEX2(6)] = 2'b01;

    poly_a[`INDEX(7)] = 1'b1;
    poly_r[`INDEX2(7)] = 2'b01;

    poly_a[`INDEX(8)] = 1'b1;
    poly_r[`INDEX2(8)] = 2'b01;

    poly_a[`INDEX(9)] = 1'b1;
    poly_r[`INDEX2(9)] = 2'b01;

    poly_a[`INDEX(10)] = 1'b1;
    poly_r[`INDEX2(10)] = 2'b01;

    poly_a[`INDEX(11)] = 1'b1;
    poly_r[`INDEX2(11)] = 2'b01;

    poly_a[`INDEX(12)] = 1'b1;
    poly_r[`INDEX2(12)] = 2'b01;

    poly_a[`INDEX(13)] = 1'b1;
    poly_r[`INDEX2(13)] = 2'b01;

    poly_a[`INDEX(14)] = 1'b1;
    poly_r[`INDEX2(14)] = 2'b01;

    poly_a[`INDEX(15)] = 1'b1;
    poly_r[`INDEX2(15)] = 2'b01;

    poly_a[`INDEX(16)] = 1'b1;
    poly_r[`INDEX2(16)] = 2'b01;

    poly_a[`INDEX(17)] = 1'b1;
    poly_r[`INDEX2(17)] = 2'b01;

    poly_a[`INDEX(18)] = 1'b1;
    poly_r[`INDEX2(18)] = 2'b01;

    poly_a[`INDEX(19)] = 1'b1;
    poly_r[`INDEX2(19)] = 2'b01;

    poly_a[`INDEX(20)] = 1'b1;
    poly_r[`INDEX2(20)] = 2'b01;

    poly_a[`INDEX(21)] = 1'b1;
    poly_r[`INDEX2(21)] = 2'b01;

    poly_a[`INDEX(22)] = 1'b1;
    poly_r[`INDEX2(22)] = 2'b01;

    poly_a[`INDEX(23)] = 1'b1;
    poly_r[`INDEX2(23)] = 2'b01;

    poly_a[`INDEX(24)] = 1'b1;
    poly_r[`INDEX2(24)] = 2'b01;

    poly_a[`INDEX(25)] = 1'b1;
    poly_r[`INDEX2(25)] = 2'b01;

    poly_a[`INDEX(26)] = 1'b1;
    poly_r[`INDEX2(26)] = 2'b01;

    poly_a[`INDEX(27)] = 1'b1;
    poly_r[`INDEX2(27)] = 2'b01;

    poly_a[`INDEX(28)] = 1'b1;
    poly_r[`INDEX2(28)] = 2'b01;

    poly_a[`INDEX(29)] = 1'b1;
    poly_r[`INDEX2(29)] = 2'b01;

    poly_a[`INDEX(30)] = 1'b1;
    poly_r[`INDEX2(30)] = 2'b01;

    poly_a[`INDEX(31)] = 1'b1;
    poly_r[`INDEX2(31)] = 2'b01;

    poly_a[`INDEX(32)] = 1'b1;
    poly_r[`INDEX2(32)] = 2'b01;

    poly_a[`INDEX(33)] = 1'b1;
    poly_r[`INDEX2(33)] = 2'b01;

    poly_a[`INDEX(34)] = 1'b1;
    poly_r[`INDEX2(34)] = 2'b01;

    poly_a[`INDEX(35)] = 1'b1;
    poly_r[`INDEX2(35)] = 2'b01;

    poly_a[`INDEX(36)] = 1'b1;
    poly_r[`INDEX2(36)] = 2'b01;

    poly_a[`INDEX(37)] = 1'b1;
    poly_r[`INDEX2(37)] = 2'b01;

    poly_a[`INDEX(38)] = 1'b1;
    poly_r[`INDEX2(38)] = 2'b01;

    poly_a[`INDEX(39)] = 1'b1;
    poly_r[`INDEX2(39)] = 2'b01;

    poly_a[`INDEX(40)] = 1'b1;
    poly_r[`INDEX2(40)] = 2'b01;

    poly_a[`INDEX(41)] = 1'b1;
    poly_r[`INDEX2(41)] = 2'b01;

    poly_a[`INDEX(42)] = 1'b1;
    poly_r[`INDEX2(42)] = 2'b01;

    poly_a[`INDEX(43)] = 1'b1;
    poly_r[`INDEX2(43)] = 2'b01;

    poly_a[`INDEX(44)] = 1'b1;
    poly_r[`INDEX2(44)] = 2'b01;

    poly_a[`INDEX(45)] = 1'b1;
    poly_r[`INDEX2(45)] = 2'b01;

    poly_a[`INDEX(46)] = 1'b1;
    poly_r[`INDEX2(46)] = 2'b01;

    poly_a[`INDEX(47)] = 1'b1;
    poly_r[`INDEX2(47)] = 2'b01;

    poly_a[`INDEX(48)] = 1'b1;
    poly_r[`INDEX2(48)] = 2'b01;

    poly_a[`INDEX(49)] = 1'b1;
    poly_r[`INDEX2(49)] = 2'b01;

    poly_a[`INDEX(50)] = 1'b1;
    poly_r[`INDEX2(50)] = 2'b01;

    poly_a[`INDEX(51)] = 1'b1;
    poly_r[`INDEX2(51)] = 2'b01;

    poly_a[`INDEX(52)] = 1'b1;
    poly_r[`INDEX2(52)] = 2'b01;

    poly_a[`INDEX(53)] = 1'b1;
    poly_r[`INDEX2(53)] = 2'b01;

    poly_a[`INDEX(54)] = 1'b1;
    poly_r[`INDEX2(54)] = 2'b01;

    poly_a[`INDEX(55)] = 1'b1;
    poly_r[`INDEX2(55)] = 2'b01;

    poly_a[`INDEX(56)] = 1'b1;
    poly_r[`INDEX2(56)] = 2'b01;

    poly_a[`INDEX(57)] = 1'b1;
    poly_r[`INDEX2(57)] = 2'b01;

    poly_a[`INDEX(58)] = 1'b1;
    poly_r[`INDEX2(58)] = 2'b01;

    poly_a[`INDEX(59)] = 1'b1;
    poly_r[`INDEX2(59)] = 2'b01;

    poly_a[`INDEX(60)] = 1'b1;
    poly_r[`INDEX2(60)] = 2'b01;

    poly_a[`INDEX(61)] = 1'b1;
    poly_r[`INDEX2(61)] = 2'b01;

    poly_a[`INDEX(62)] = 1'b1;
    poly_r[`INDEX2(62)] = 2'b01;

    poly_a[`INDEX(63)] = 1'b1;
    poly_r[`INDEX2(63)] = 2'b01;

    poly_a[`INDEX(64)] = 1'b1;
    poly_r[`INDEX2(64)] = 2'b01;

    poly_a[`INDEX(65)] = 1'b1;
    poly_r[`INDEX2(65)] = 2'b01;

    poly_a[`INDEX(66)] = 1'b1;
    poly_r[`INDEX2(66)] = 2'b01;

    poly_a[`INDEX(67)] = 1'b1;
    poly_r[`INDEX2(67)] = 2'b01;

    poly_a[`INDEX(68)] = 1'b1;
    poly_r[`INDEX2(68)] = 2'b01;

    poly_a[`INDEX(69)] = 1'b1;
    poly_r[`INDEX2(69)] = 2'b01;

    poly_a[`INDEX(70)] = 1'b1;
    poly_r[`INDEX2(70)] = 2'b01;

    poly_a[`INDEX(71)] = 1'b1;
    poly_r[`INDEX2(71)] = 2'b01;

    poly_a[`INDEX(72)] = 1'b1;
    poly_r[`INDEX2(72)] = 2'b01;

    poly_a[`INDEX(73)] = 1'b1;
    poly_r[`INDEX2(73)] = 2'b01;

    poly_a[`INDEX(74)] = 1'b1;
    poly_r[`INDEX2(74)] = 2'b01;

    poly_a[`INDEX(75)] = 1'b1;
    poly_r[`INDEX2(75)] = 2'b01;

    poly_a[`INDEX(76)] = 1'b1;
    poly_r[`INDEX2(76)] = 2'b01;

    poly_a[`INDEX(77)] = 1'b1;
    poly_r[`INDEX2(77)] = 2'b01;

    poly_a[`INDEX(78)] = 1'b1;
    poly_r[`INDEX2(78)] = 2'b01;

    poly_a[`INDEX(79)] = 1'b1;
    poly_r[`INDEX2(79)] = 2'b01;

    poly_a[`INDEX(80)] = 1'b1;
    poly_r[`INDEX2(80)] = 2'b01;

    poly_a[`INDEX(81)] = 1'b1;
    poly_r[`INDEX2(81)] = 2'b01;

    poly_a[`INDEX(82)] = 1'b1;
    poly_r[`INDEX2(82)] = 2'b01;

    poly_a[`INDEX(83)] = 1'b1;
    poly_r[`INDEX2(83)] = 2'b01;

    poly_a[`INDEX(84)] = 1'b1;
    poly_r[`INDEX2(84)] = 2'b01;

    poly_a[`INDEX(85)] = 1'b1;
    poly_r[`INDEX2(85)] = 2'b01;

    poly_a[`INDEX(86)] = 1'b1;
    poly_r[`INDEX2(86)] = 2'b01;

    poly_a[`INDEX(87)] = 1'b1;
    poly_r[`INDEX2(87)] = 2'b01;

    poly_a[`INDEX(88)] = 1'b1;
    poly_r[`INDEX2(88)] = 2'b01;

    poly_a[`INDEX(89)] = 1'b1;
    poly_r[`INDEX2(89)] = 2'b01;

    poly_a[`INDEX(90)] = 1'b1;
    poly_r[`INDEX2(90)] = 2'b01;

    poly_a[`INDEX(91)] = 1'b1;
    poly_r[`INDEX2(91)] = 2'b01;

    poly_a[`INDEX(92)] = 1'b1;
    poly_r[`INDEX2(92)] = 2'b01;

    poly_a[`INDEX(93)] = 1'b1;
    poly_r[`INDEX2(93)] = 2'b01;

    poly_a[`INDEX(94)] = 1'b1;
    poly_r[`INDEX2(94)] = 2'b01;

    poly_a[`INDEX(95)] = 1'b1;
    poly_r[`INDEX2(95)] = 2'b01;

    poly_a[`INDEX(96)] = 1'b1;
    poly_r[`INDEX2(96)] = 2'b01;

    poly_a[`INDEX(97)] = 1'b1;
    poly_r[`INDEX2(97)] = 2'b01;

    poly_a[`INDEX(98)] = 1'b1;
    poly_r[`INDEX2(98)] = 2'b01;

    poly_a[`INDEX(99)] = 1'b1;
    poly_r[`INDEX2(99)] = 2'b01;

    poly_a[`INDEX(100)] = 1'b1;
    poly_r[`INDEX2(100)] = 2'b01;

    poly_a[`INDEX(101)] = 1'b1;
    poly_r[`INDEX2(101)] = 2'b01;

    poly_a[`INDEX(102)] = 1'b1;
    poly_r[`INDEX2(102)] = 2'b01;

    poly_a[`INDEX(103)] = 1'b1;
    poly_r[`INDEX2(103)] = 2'b01;

    poly_a[`INDEX(104)] = 1'b1;
    poly_r[`INDEX2(104)] = 2'b01;

    poly_a[`INDEX(105)] = 1'b1;
    poly_r[`INDEX2(105)] = 2'b01;

    poly_a[`INDEX(106)] = 1'b1;
    poly_r[`INDEX2(106)] = 2'b01;

    poly_a[`INDEX(107)] = 1'b1;
    poly_r[`INDEX2(107)] = 2'b01;

    poly_a[`INDEX(108)] = 1'b1;
    poly_r[`INDEX2(108)] = 2'b01;

    poly_a[`INDEX(109)] = 1'b1;
    poly_r[`INDEX2(109)] = 2'b01;

    poly_a[`INDEX(110)] = 1'b1;
    poly_r[`INDEX2(110)] = 2'b01;

    poly_a[`INDEX(111)] = 1'b1;
    poly_r[`INDEX2(111)] = 2'b01;

    poly_a[`INDEX(112)] = 1'b1;
    poly_r[`INDEX2(112)] = 2'b01;

    poly_a[`INDEX(113)] = 1'b1;
    poly_r[`INDEX2(113)] = 2'b01;

    poly_a[`INDEX(114)] = 1'b1;
    poly_r[`INDEX2(114)] = 2'b01;

    poly_a[`INDEX(115)] = 1'b1;
    poly_r[`INDEX2(115)] = 2'b01;

    poly_a[`INDEX(116)] = 1'b1;
    poly_r[`INDEX2(116)] = 2'b01;

    poly_a[`INDEX(117)] = 1'b1;
    poly_r[`INDEX2(117)] = 2'b01;

    poly_a[`INDEX(118)] = 1'b1;
    poly_r[`INDEX2(118)] = 2'b01;

    poly_a[`INDEX(119)] = 1'b1;
    poly_r[`INDEX2(119)] = 2'b01;

    poly_a[`INDEX(120)] = 1'b1;
    poly_r[`INDEX2(120)] = 2'b01;

    poly_a[`INDEX(121)] = 1'b1;
    poly_r[`INDEX2(121)] = 2'b01;

    poly_a[`INDEX(122)] = 1'b1;
    poly_r[`INDEX2(122)] = 2'b01;

    poly_a[`INDEX(123)] = 1'b1;
    poly_r[`INDEX2(123)] = 2'b01;

    poly_a[`INDEX(124)] = 1'b1;
    poly_r[`INDEX2(124)] = 2'b01;

    poly_a[`INDEX(125)] = 1'b1;
    poly_r[`INDEX2(125)] = 2'b01;

    poly_a[`INDEX(126)] = 1'b1;
    poly_r[`INDEX2(126)] = 2'b01;

    poly_a[`INDEX(127)] = 1'b1;
    poly_r[`INDEX2(127)] = 2'b01;

    poly_a[`INDEX(128)] = 1'b1;
    poly_r[`INDEX2(128)] = 2'b01;

    poly_a[`INDEX(129)] = 1'b1;
    poly_r[`INDEX2(129)] = 2'b01;

    poly_a[`INDEX(130)] = 1'b1;
    poly_r[`INDEX2(130)] = 2'b01;

    poly_a[`INDEX(131)] = 1'b1;
    poly_r[`INDEX2(131)] = 2'b01;

    poly_a[`INDEX(132)] = 1'b1;
    poly_r[`INDEX2(132)] = 2'b01;

    poly_a[`INDEX(133)] = 1'b1;
    poly_r[`INDEX2(133)] = 2'b01;

    poly_a[`INDEX(134)] = 1'b1;
    poly_r[`INDEX2(134)] = 2'b01;

    poly_a[`INDEX(135)] = 1'b1;
    poly_r[`INDEX2(135)] = 2'b01;

    poly_a[`INDEX(136)] = 1'b1;
    poly_r[`INDEX2(136)] = 2'b01;

    poly_a[`INDEX(137)] = 1'b1;
    poly_r[`INDEX2(137)] = 2'b01;

    poly_a[`INDEX(138)] = 1'b1;
    poly_r[`INDEX2(138)] = 2'b01;

    poly_a[`INDEX(139)] = 1'b1;
    poly_r[`INDEX2(139)] = 2'b01;

    poly_a[`INDEX(140)] = 1'b1;
    poly_r[`INDEX2(140)] = 2'b01;

    poly_a[`INDEX(141)] = 1'b1;
    poly_r[`INDEX2(141)] = 2'b01;

    poly_a[`INDEX(142)] = 1'b1;
    poly_r[`INDEX2(142)] = 2'b01;

    poly_a[`INDEX(143)] = 1'b1;
    poly_r[`INDEX2(143)] = 2'b01;

    poly_a[`INDEX(144)] = 1'b1;
    poly_r[`INDEX2(144)] = 2'b01;

    poly_a[`INDEX(145)] = 1'b1;
    poly_r[`INDEX2(145)] = 2'b01;

    poly_a[`INDEX(146)] = 1'b1;
    poly_r[`INDEX2(146)] = 2'b01;

    poly_a[`INDEX(147)] = 1'b1;
    poly_r[`INDEX2(147)] = 2'b01;

    poly_a[`INDEX(148)] = 1'b1;
    poly_r[`INDEX2(148)] = 2'b01;

    poly_a[`INDEX(149)] = 1'b1;
    poly_r[`INDEX2(149)] = 2'b01;

    poly_a[`INDEX(150)] = 1'b1;
    poly_r[`INDEX2(150)] = 2'b01;

    poly_a[`INDEX(151)] = 1'b1;
    poly_r[`INDEX2(151)] = 2'b01;

    poly_a[`INDEX(152)] = 1'b1;
    poly_r[`INDEX2(152)] = 2'b01;

    poly_a[`INDEX(153)] = 1'b1;
    poly_r[`INDEX2(153)] = 2'b01;

    poly_a[`INDEX(154)] = 1'b1;
    poly_r[`INDEX2(154)] = 2'b01;

    poly_a[`INDEX(155)] = 1'b1;
    poly_r[`INDEX2(155)] = 2'b01;

    poly_a[`INDEX(156)] = 1'b1;
    poly_r[`INDEX2(156)] = 2'b01;

    poly_a[`INDEX(157)] = 1'b1;
    poly_r[`INDEX2(157)] = 2'b01;

    poly_a[`INDEX(158)] = 1'b1;
    poly_r[`INDEX2(158)] = 2'b01;

    poly_a[`INDEX(159)] = 1'b1;
    poly_r[`INDEX2(159)] = 2'b01;

    poly_a[`INDEX(160)] = 1'b1;
    poly_r[`INDEX2(160)] = 2'b01;

    poly_a[`INDEX(161)] = 1'b1;
    poly_r[`INDEX2(161)] = 2'b01;

    poly_a[`INDEX(162)] = 1'b1;
    poly_r[`INDEX2(162)] = 2'b01;

    poly_a[`INDEX(163)] = 1'b1;
    poly_r[`INDEX2(163)] = 2'b01;

    poly_a[`INDEX(164)] = 1'b1;
    poly_r[`INDEX2(164)] = 2'b01;

    poly_a[`INDEX(165)] = 1'b1;
    poly_r[`INDEX2(165)] = 2'b01;

    poly_a[`INDEX(166)] = 1'b1;
    poly_r[`INDEX2(166)] = 2'b01;

    poly_a[`INDEX(167)] = 1'b1;
    poly_r[`INDEX2(167)] = 2'b01;

    poly_a[`INDEX(168)] = 1'b1;
    poly_r[`INDEX2(168)] = 2'b01;

    poly_a[`INDEX(169)] = 1'b1;
    poly_r[`INDEX2(169)] = 2'b01;

    poly_a[`INDEX(170)] = 1'b1;
    poly_r[`INDEX2(170)] = 2'b01;

    poly_a[`INDEX(171)] = 1'b1;
    poly_r[`INDEX2(171)] = 2'b01;

    poly_a[`INDEX(172)] = 1'b1;
    poly_r[`INDEX2(172)] = 2'b01;

    poly_a[`INDEX(173)] = 1'b1;
    poly_r[`INDEX2(173)] = 2'b01;

    poly_a[`INDEX(174)] = 1'b1;
    poly_r[`INDEX2(174)] = 2'b01;

    poly_a[`INDEX(175)] = 1'b1;
    poly_r[`INDEX2(175)] = 2'b01;

    poly_a[`INDEX(176)] = 1'b1;
    poly_r[`INDEX2(176)] = 2'b01;

    poly_a[`INDEX(177)] = 1'b1;
    poly_r[`INDEX2(177)] = 2'b01;

    poly_a[`INDEX(178)] = 1'b1;
    poly_r[`INDEX2(178)] = 2'b01;

    poly_a[`INDEX(179)] = 1'b1;
    poly_r[`INDEX2(179)] = 2'b01;

    poly_a[`INDEX(180)] = 1'b1;
    poly_r[`INDEX2(180)] = 2'b01;

    poly_a[`INDEX(181)] = 1'b1;
    poly_r[`INDEX2(181)] = 2'b01;

    poly_a[`INDEX(182)] = 1'b1;
    poly_r[`INDEX2(182)] = 2'b01;

    poly_a[`INDEX(183)] = 1'b1;
    poly_r[`INDEX2(183)] = 2'b01;

    poly_a[`INDEX(184)] = 1'b1;
    poly_r[`INDEX2(184)] = 2'b01;

    poly_a[`INDEX(185)] = 1'b1;
    poly_r[`INDEX2(185)] = 2'b01;

    poly_a[`INDEX(186)] = 1'b1;
    poly_r[`INDEX2(186)] = 2'b01;

    poly_a[`INDEX(187)] = 1'b1;
    poly_r[`INDEX2(187)] = 2'b01;

    poly_a[`INDEX(188)] = 1'b1;
    poly_r[`INDEX2(188)] = 2'b01;

    poly_a[`INDEX(189)] = 1'b1;
    poly_r[`INDEX2(189)] = 2'b01;

    poly_a[`INDEX(190)] = 1'b1;
    poly_r[`INDEX2(190)] = 2'b01;

    poly_a[`INDEX(191)] = 1'b1;
    poly_r[`INDEX2(191)] = 2'b01;

    poly_a[`INDEX(192)] = 1'b1;
    poly_r[`INDEX2(192)] = 2'b01;

    poly_a[`INDEX(193)] = 1'b1;
    poly_r[`INDEX2(193)] = 2'b01;

    poly_a[`INDEX(194)] = 1'b1;
    poly_r[`INDEX2(194)] = 2'b01;

    poly_a[`INDEX(195)] = 1'b1;
    poly_r[`INDEX2(195)] = 2'b01;

    poly_a[`INDEX(196)] = 1'b1;
    poly_r[`INDEX2(196)] = 2'b01;

    poly_a[`INDEX(197)] = 1'b1;
    poly_r[`INDEX2(197)] = 2'b01;

    poly_a[`INDEX(198)] = 1'b1;
    poly_r[`INDEX2(198)] = 2'b01;

    poly_a[`INDEX(199)] = 1'b1;
    poly_r[`INDEX2(199)] = 2'b01;

    poly_a[`INDEX(200)] = 1'b1;
    poly_r[`INDEX2(200)] = 2'b01;

    poly_a[`INDEX(201)] = 1'b1;
    poly_r[`INDEX2(201)] = 2'b01;

    poly_a[`INDEX(202)] = 1'b1;
    poly_r[`INDEX2(202)] = 2'b01;

    poly_a[`INDEX(203)] = 1'b1;
    poly_r[`INDEX2(203)] = 2'b01;

    poly_a[`INDEX(204)] = 1'b1;
    poly_r[`INDEX2(204)] = 2'b01;

    poly_a[`INDEX(205)] = 1'b1;
    poly_r[`INDEX2(205)] = 2'b01;

    poly_a[`INDEX(206)] = 1'b1;
    poly_r[`INDEX2(206)] = 2'b01;

    poly_a[`INDEX(207)] = 1'b1;
    poly_r[`INDEX2(207)] = 2'b01;

    poly_a[`INDEX(208)] = 1'b1;
    poly_r[`INDEX2(208)] = 2'b01;

    poly_a[`INDEX(209)] = 1'b1;
    poly_r[`INDEX2(209)] = 2'b01;

    poly_a[`INDEX(210)] = 1'b1;
    poly_r[`INDEX2(210)] = 2'b01;

    poly_a[`INDEX(211)] = 1'b1;
    poly_r[`INDEX2(211)] = 2'b01;

    poly_a[`INDEX(212)] = 1'b1;
    poly_r[`INDEX2(212)] = 2'b01;

    poly_a[`INDEX(213)] = 1'b1;
    poly_r[`INDEX2(213)] = 2'b01;

    poly_a[`INDEX(214)] = 1'b1;
    poly_r[`INDEX2(214)] = 2'b01;

    poly_a[`INDEX(215)] = 1'b1;
    poly_r[`INDEX2(215)] = 2'b01;

    poly_a[`INDEX(216)] = 1'b1;
    poly_r[`INDEX2(216)] = 2'b01;

    poly_a[`INDEX(217)] = 1'b1;
    poly_r[`INDEX2(217)] = 2'b01;

    poly_a[`INDEX(218)] = 1'b1;
    poly_r[`INDEX2(218)] = 2'b01;

    poly_a[`INDEX(219)] = 1'b1;
    poly_r[`INDEX2(219)] = 2'b01;

    poly_a[`INDEX(220)] = 1'b1;
    poly_r[`INDEX2(220)] = 2'b01;

    poly_a[`INDEX(221)] = 1'b1;
    poly_r[`INDEX2(221)] = 2'b01;

    poly_a[`INDEX(222)] = 1'b1;
    poly_r[`INDEX2(222)] = 2'b01;

    poly_a[`INDEX(223)] = 1'b1;
    poly_r[`INDEX2(223)] = 2'b01;

    poly_a[`INDEX(224)] = 1'b1;
    poly_r[`INDEX2(224)] = 2'b01;

    poly_a[`INDEX(225)] = 1'b1;
    poly_r[`INDEX2(225)] = 2'b01;

    poly_a[`INDEX(226)] = 1'b1;
    poly_r[`INDEX2(226)] = 2'b01;

    poly_a[`INDEX(227)] = 1'b1;
    poly_r[`INDEX2(227)] = 2'b01;

    poly_a[`INDEX(228)] = 1'b1;
    poly_r[`INDEX2(228)] = 2'b01;

    poly_a[`INDEX(229)] = 1'b1;
    poly_r[`INDEX2(229)] = 2'b01;

    poly_a[`INDEX(230)] = 1'b1;
    poly_r[`INDEX2(230)] = 2'b01;

    poly_a[`INDEX(231)] = 1'b1;
    poly_r[`INDEX2(231)] = 2'b01;

    poly_a[`INDEX(232)] = 1'b1;
    poly_r[`INDEX2(232)] = 2'b01;

    poly_a[`INDEX(233)] = 1'b1;
    poly_r[`INDEX2(233)] = 2'b01;

    poly_a[`INDEX(234)] = 1'b1;
    poly_r[`INDEX2(234)] = 2'b01;

    poly_a[`INDEX(235)] = 1'b1;
    poly_r[`INDEX2(235)] = 2'b01;

    poly_a[`INDEX(236)] = 1'b1;
    poly_r[`INDEX2(236)] = 2'b01;

    poly_a[`INDEX(237)] = 1'b1;
    poly_r[`INDEX2(237)] = 2'b01;

    poly_a[`INDEX(238)] = 1'b1;
    poly_r[`INDEX2(238)] = 2'b01;

    poly_a[`INDEX(239)] = 1'b1;
    poly_r[`INDEX2(239)] = 2'b01;

    poly_a[`INDEX(240)] = 1'b1;
    poly_r[`INDEX2(240)] = 2'b01;

    poly_a[`INDEX(241)] = 1'b1;
    poly_r[`INDEX2(241)] = 2'b01;

    poly_a[`INDEX(242)] = 1'b1;
    poly_r[`INDEX2(242)] = 2'b01;

    poly_a[`INDEX(243)] = 1'b1;
    poly_r[`INDEX2(243)] = 2'b01;

    poly_a[`INDEX(244)] = 1'b1;
    poly_r[`INDEX2(244)] = 2'b01;

    poly_a[`INDEX(245)] = 1'b1;
    poly_r[`INDEX2(245)] = 2'b01;

    poly_a[`INDEX(246)] = 1'b1;
    poly_r[`INDEX2(246)] = 2'b01;

    poly_a[`INDEX(247)] = 1'b1;
    poly_r[`INDEX2(247)] = 2'b01;

    poly_a[`INDEX(248)] = 1'b1;
    poly_r[`INDEX2(248)] = 2'b01;

    poly_a[`INDEX(249)] = 1'b1;
    poly_r[`INDEX2(249)] = 2'b01;

    poly_a[`INDEX(250)] = 1'b1;
    poly_r[`INDEX2(250)] = 2'b01;

    poly_a[`INDEX(251)] = 1'b1;
    poly_r[`INDEX2(251)] = 2'b01;

    poly_a[`INDEX(252)] = 1'b1;
    poly_r[`INDEX2(252)] = 2'b01;

    poly_a[`INDEX(253)] = 1'b1;
    poly_r[`INDEX2(253)] = 2'b01;

    poly_a[`INDEX(254)] = 1'b1;
    poly_r[`INDEX2(254)] = 2'b01;

    poly_a[`INDEX(255)] = 1'b1;
    poly_r[`INDEX2(255)] = 2'b01;

    poly_a[`INDEX(256)] = 1'b1;
    poly_r[`INDEX2(256)] = 2'b01;

    poly_a[`INDEX(257)] = 1'b1;
    poly_r[`INDEX2(257)] = 2'b01;

    poly_a[`INDEX(258)] = 1'b1;
    poly_r[`INDEX2(258)] = 2'b01;

    poly_a[`INDEX(259)] = 1'b1;
    poly_r[`INDEX2(259)] = 2'b01;

    poly_a[`INDEX(260)] = 1'b1;
    poly_r[`INDEX2(260)] = 2'b01;

    poly_a[`INDEX(261)] = 1'b1;
    poly_r[`INDEX2(261)] = 2'b01;

    poly_a[`INDEX(262)] = 1'b1;
    poly_r[`INDEX2(262)] = 2'b01;

    poly_a[`INDEX(263)] = 1'b1;
    poly_r[`INDEX2(263)] = 2'b01;

    poly_a[`INDEX(264)] = 1'b1;
    poly_r[`INDEX2(264)] = 2'b01;

    poly_a[`INDEX(265)] = 1'b1;
    poly_r[`INDEX2(265)] = 2'b01;

    poly_a[`INDEX(266)] = 1'b1;
    poly_r[`INDEX2(266)] = 2'b01;

    poly_a[`INDEX(267)] = 1'b1;
    poly_r[`INDEX2(267)] = 2'b01;

    poly_a[`INDEX(268)] = 1'b1;
    poly_r[`INDEX2(268)] = 2'b01;

    poly_a[`INDEX(269)] = 1'b1;
    poly_r[`INDEX2(269)] = 2'b01;

    poly_a[`INDEX(270)] = 1'b1;
    poly_r[`INDEX2(270)] = 2'b01;

    poly_a[`INDEX(271)] = 1'b1;
    poly_r[`INDEX2(271)] = 2'b01;

    poly_a[`INDEX(272)] = 1'b1;
    poly_r[`INDEX2(272)] = 2'b01;

    poly_a[`INDEX(273)] = 1'b1;
    poly_r[`INDEX2(273)] = 2'b01;

    poly_a[`INDEX(274)] = 1'b1;
    poly_r[`INDEX2(274)] = 2'b01;

    poly_a[`INDEX(275)] = 1'b1;
    poly_r[`INDEX2(275)] = 2'b01;

    poly_a[`INDEX(276)] = 1'b1;
    poly_r[`INDEX2(276)] = 2'b01;

    poly_a[`INDEX(277)] = 1'b1;
    poly_r[`INDEX2(277)] = 2'b01;

    poly_a[`INDEX(278)] = 1'b1;
    poly_r[`INDEX2(278)] = 2'b01;

    poly_a[`INDEX(279)] = 1'b1;
    poly_r[`INDEX2(279)] = 2'b01;

    poly_a[`INDEX(280)] = 1'b1;
    poly_r[`INDEX2(280)] = 2'b01;

    poly_a[`INDEX(281)] = 1'b1;
    poly_r[`INDEX2(281)] = 2'b01;

    poly_a[`INDEX(282)] = 1'b1;
    poly_r[`INDEX2(282)] = 2'b01;

    poly_a[`INDEX(283)] = 1'b1;
    poly_r[`INDEX2(283)] = 2'b01;

    poly_a[`INDEX(284)] = 1'b1;
    poly_r[`INDEX2(284)] = 2'b01;

    poly_a[`INDEX(285)] = 1'b1;
    poly_r[`INDEX2(285)] = 2'b01;

    poly_a[`INDEX(286)] = 1'b1;
    poly_r[`INDEX2(286)] = 2'b01;

    poly_a[`INDEX(287)] = 1'b1;
    poly_r[`INDEX2(287)] = 2'b01;

    poly_a[`INDEX(288)] = 1'b1;
    poly_r[`INDEX2(288)] = 2'b01;

    poly_a[`INDEX(289)] = 1'b1;
    poly_r[`INDEX2(289)] = 2'b01;

    poly_a[`INDEX(290)] = 1'b1;
    poly_r[`INDEX2(290)] = 2'b01;

    poly_a[`INDEX(291)] = 1'b1;
    poly_r[`INDEX2(291)] = 2'b01;

    poly_a[`INDEX(292)] = 1'b1;
    poly_r[`INDEX2(292)] = 2'b01;

    poly_a[`INDEX(293)] = 1'b1;
    poly_r[`INDEX2(293)] = 2'b01;

    poly_a[`INDEX(294)] = 1'b1;
    poly_r[`INDEX2(294)] = 2'b01;

    poly_a[`INDEX(295)] = 1'b1;
    poly_r[`INDEX2(295)] = 2'b01;

    poly_a[`INDEX(296)] = 1'b1;
    poly_r[`INDEX2(296)] = 2'b01;

    poly_a[`INDEX(297)] = 1'b1;
    poly_r[`INDEX2(297)] = 2'b01;

    poly_a[`INDEX(298)] = 1'b1;
    poly_r[`INDEX2(298)] = 2'b01;

    poly_a[`INDEX(299)] = 1'b1;
    poly_r[`INDEX2(299)] = 2'b01;

    poly_a[`INDEX(300)] = 1'b1;
    poly_r[`INDEX2(300)] = 2'b01;

    poly_a[`INDEX(301)] = 1'b1;
    poly_r[`INDEX2(301)] = 2'b01;

    poly_a[`INDEX(302)] = 1'b1;
    poly_r[`INDEX2(302)] = 2'b01;

    poly_a[`INDEX(303)] = 1'b1;
    poly_r[`INDEX2(303)] = 2'b01;

    poly_a[`INDEX(304)] = 1'b1;
    poly_r[`INDEX2(304)] = 2'b01;

    poly_a[`INDEX(305)] = 1'b1;
    poly_r[`INDEX2(305)] = 2'b01;

    poly_a[`INDEX(306)] = 1'b1;
    poly_r[`INDEX2(306)] = 2'b01;

    poly_a[`INDEX(307)] = 1'b1;
    poly_r[`INDEX2(307)] = 2'b01;

    poly_a[`INDEX(308)] = 1'b1;
    poly_r[`INDEX2(308)] = 2'b01;

    poly_a[`INDEX(309)] = 1'b1;
    poly_r[`INDEX2(309)] = 2'b01;

    poly_a[`INDEX(310)] = 1'b1;
    poly_r[`INDEX2(310)] = 2'b01;

    poly_a[`INDEX(311)] = 1'b1;
    poly_r[`INDEX2(311)] = 2'b01;

    poly_a[`INDEX(312)] = 1'b1;
    poly_r[`INDEX2(312)] = 2'b01;

    poly_a[`INDEX(313)] = 1'b1;
    poly_r[`INDEX2(313)] = 2'b01;

    poly_a[`INDEX(314)] = 1'b1;
    poly_r[`INDEX2(314)] = 2'b01;

    poly_a[`INDEX(315)] = 1'b1;
    poly_r[`INDEX2(315)] = 2'b01;

    poly_a[`INDEX(316)] = 1'b1;
    poly_r[`INDEX2(316)] = 2'b01;

    poly_a[`INDEX(317)] = 1'b1;
    poly_r[`INDEX2(317)] = 2'b01;

    poly_a[`INDEX(318)] = 1'b1;
    poly_r[`INDEX2(318)] = 2'b01;

    poly_a[`INDEX(319)] = 1'b1;
    poly_r[`INDEX2(319)] = 2'b01;

    poly_a[`INDEX(320)] = 1'b1;
    poly_r[`INDEX2(320)] = 2'b01;

    poly_a[`INDEX(321)] = 1'b1;
    poly_r[`INDEX2(321)] = 2'b01;

    poly_a[`INDEX(322)] = 1'b1;
    poly_r[`INDEX2(322)] = 2'b01;

    poly_a[`INDEX(323)] = 1'b1;
    poly_r[`INDEX2(323)] = 2'b01;

    poly_a[`INDEX(324)] = 1'b1;
    poly_r[`INDEX2(324)] = 2'b01;

    poly_a[`INDEX(325)] = 1'b1;
    poly_r[`INDEX2(325)] = 2'b01;

    poly_a[`INDEX(326)] = 1'b1;
    poly_r[`INDEX2(326)] = 2'b01;

    poly_a[`INDEX(327)] = 1'b1;
    poly_r[`INDEX2(327)] = 2'b01;

    poly_a[`INDEX(328)] = 1'b1;
    poly_r[`INDEX2(328)] = 2'b01;

    poly_a[`INDEX(329)] = 1'b1;
    poly_r[`INDEX2(329)] = 2'b01;

    poly_a[`INDEX(330)] = 1'b1;
    poly_r[`INDEX2(330)] = 2'b01;

    poly_a[`INDEX(331)] = 1'b1;
    poly_r[`INDEX2(331)] = 2'b01;

    poly_a[`INDEX(332)] = 1'b1;
    poly_r[`INDEX2(332)] = 2'b01;

    poly_a[`INDEX(333)] = 1'b1;
    poly_r[`INDEX2(333)] = 2'b01;

    poly_a[`INDEX(334)] = 1'b1;
    poly_r[`INDEX2(334)] = 2'b01;

    poly_a[`INDEX(335)] = 1'b1;
    poly_r[`INDEX2(335)] = 2'b01;

    poly_a[`INDEX(336)] = 1'b1;
    poly_r[`INDEX2(336)] = 2'b01;

    poly_a[`INDEX(337)] = 1'b1;
    poly_r[`INDEX2(337)] = 2'b01;

    poly_a[`INDEX(338)] = 1'b1;
    poly_r[`INDEX2(338)] = 2'b01;

    poly_a[`INDEX(339)] = 1'b1;
    poly_r[`INDEX2(339)] = 2'b01;

    poly_a[`INDEX(340)] = 1'b1;
    poly_r[`INDEX2(340)] = 2'b01;

    poly_a[`INDEX(341)] = 1'b1;
    poly_r[`INDEX2(341)] = 2'b01;

    poly_a[`INDEX(342)] = 1'b1;
    poly_r[`INDEX2(342)] = 2'b01;

    poly_a[`INDEX(343)] = 1'b1;
    poly_r[`INDEX2(343)] = 2'b01;

    poly_a[`INDEX(344)] = 1'b1;
    poly_r[`INDEX2(344)] = 2'b01;

    poly_a[`INDEX(345)] = 1'b1;
    poly_r[`INDEX2(345)] = 2'b01;

    poly_a[`INDEX(346)] = 1'b1;
    poly_r[`INDEX2(346)] = 2'b01;

    poly_a[`INDEX(347)] = 1'b1;
    poly_r[`INDEX2(347)] = 2'b01;

    poly_a[`INDEX(348)] = 1'b1;
    poly_r[`INDEX2(348)] = 2'b01;

    poly_a[`INDEX(349)] = 1'b1;
    poly_r[`INDEX2(349)] = 2'b01;

    poly_a[`INDEX(350)] = 1'b1;
    poly_r[`INDEX2(350)] = 2'b01;

    poly_a[`INDEX(351)] = 1'b1;
    poly_r[`INDEX2(351)] = 2'b01;

    poly_a[`INDEX(352)] = 1'b1;
    poly_r[`INDEX2(352)] = 2'b01;

    poly_a[`INDEX(353)] = 1'b1;
    poly_r[`INDEX2(353)] = 2'b01;

    poly_a[`INDEX(354)] = 1'b1;
    poly_r[`INDEX2(354)] = 2'b01;

    poly_a[`INDEX(355)] = 1'b1;
    poly_r[`INDEX2(355)] = 2'b01;

    poly_a[`INDEX(356)] = 1'b1;
    poly_r[`INDEX2(356)] = 2'b01;

    poly_a[`INDEX(357)] = 1'b1;
    poly_r[`INDEX2(357)] = 2'b01;

    poly_a[`INDEX(358)] = 1'b1;
    poly_r[`INDEX2(358)] = 2'b01;

    poly_a[`INDEX(359)] = 1'b1;
    poly_r[`INDEX2(359)] = 2'b01;

    poly_a[`INDEX(360)] = 1'b1;
    poly_r[`INDEX2(360)] = 2'b01;

    poly_a[`INDEX(361)] = 1'b1;
    poly_r[`INDEX2(361)] = 2'b01;

    poly_a[`INDEX(362)] = 1'b1;
    poly_r[`INDEX2(362)] = 2'b01;

    poly_a[`INDEX(363)] = 1'b1;
    poly_r[`INDEX2(363)] = 2'b01;

    poly_a[`INDEX(364)] = 1'b1;
    poly_r[`INDEX2(364)] = 2'b01;

    poly_a[`INDEX(365)] = 1'b1;
    poly_r[`INDEX2(365)] = 2'b01;

    poly_a[`INDEX(366)] = 1'b1;
    poly_r[`INDEX2(366)] = 2'b01;

    poly_a[`INDEX(367)] = 1'b1;
    poly_r[`INDEX2(367)] = 2'b01;

    poly_a[`INDEX(368)] = 1'b1;
    poly_r[`INDEX2(368)] = 2'b01;

    poly_a[`INDEX(369)] = 1'b1;
    poly_r[`INDEX2(369)] = 2'b01;

    poly_a[`INDEX(370)] = 1'b1;
    poly_r[`INDEX2(370)] = 2'b01;

    poly_a[`INDEX(371)] = 1'b1;
    poly_r[`INDEX2(371)] = 2'b01;

    poly_a[`INDEX(372)] = 1'b1;
    poly_r[`INDEX2(372)] = 2'b01;

    poly_a[`INDEX(373)] = 1'b1;
    poly_r[`INDEX2(373)] = 2'b01;

    poly_a[`INDEX(374)] = 1'b1;
    poly_r[`INDEX2(374)] = 2'b01;

    poly_a[`INDEX(375)] = 1'b1;
    poly_r[`INDEX2(375)] = 2'b01;

    poly_a[`INDEX(376)] = 1'b1;
    poly_r[`INDEX2(376)] = 2'b01;

    poly_a[`INDEX(377)] = 1'b1;
    poly_r[`INDEX2(377)] = 2'b01;

    poly_a[`INDEX(378)] = 1'b1;
    poly_r[`INDEX2(378)] = 2'b01;

    poly_a[`INDEX(379)] = 1'b1;
    poly_r[`INDEX2(379)] = 2'b01;

    poly_a[`INDEX(380)] = 1'b1;
    poly_r[`INDEX2(380)] = 2'b01;

    poly_a[`INDEX(381)] = 1'b1;
    poly_r[`INDEX2(381)] = 2'b01;

    poly_a[`INDEX(382)] = 1'b1;
    poly_r[`INDEX2(382)] = 2'b01;

    poly_a[`INDEX(383)] = 1'b1;
    poly_r[`INDEX2(383)] = 2'b01;

    poly_a[`INDEX(384)] = 1'b1;
    poly_r[`INDEX2(384)] = 2'b01;

    poly_a[`INDEX(385)] = 1'b1;
    poly_r[`INDEX2(385)] = 2'b01;

    poly_a[`INDEX(386)] = 1'b1;
    poly_r[`INDEX2(386)] = 2'b01;

    poly_a[`INDEX(387)] = 1'b1;
    poly_r[`INDEX2(387)] = 2'b01;

    poly_a[`INDEX(388)] = 1'b1;
    poly_r[`INDEX2(388)] = 2'b01;

    poly_a[`INDEX(389)] = 1'b1;
    poly_r[`INDEX2(389)] = 2'b01;

    poly_a[`INDEX(390)] = 1'b1;
    poly_r[`INDEX2(390)] = 2'b01;

    poly_a[`INDEX(391)] = 1'b1;
    poly_r[`INDEX2(391)] = 2'b01;

    poly_a[`INDEX(392)] = 1'b1;
    poly_r[`INDEX2(392)] = 2'b01;

    poly_a[`INDEX(393)] = 1'b1;
    poly_r[`INDEX2(393)] = 2'b01;

    poly_a[`INDEX(394)] = 1'b1;
    poly_r[`INDEX2(394)] = 2'b01;

    poly_a[`INDEX(395)] = 1'b1;
    poly_r[`INDEX2(395)] = 2'b01;

    poly_a[`INDEX(396)] = 1'b1;
    poly_r[`INDEX2(396)] = 2'b01;

    poly_a[`INDEX(397)] = 1'b1;
    poly_r[`INDEX2(397)] = 2'b01;

    poly_a[`INDEX(398)] = 1'b1;
    poly_r[`INDEX2(398)] = 2'b01;

    poly_a[`INDEX(399)] = 1'b1;
    poly_r[`INDEX2(399)] = 2'b01;

    poly_a[`INDEX(400)] = 1'b1;
    poly_r[`INDEX2(400)] = 2'b01;

    poly_a[`INDEX(401)] = 1'b1;
    poly_r[`INDEX2(401)] = 2'b01;

    poly_a[`INDEX(402)] = 1'b1;
    poly_r[`INDEX2(402)] = 2'b01;

    poly_a[`INDEX(403)] = 1'b1;
    poly_r[`INDEX2(403)] = 2'b01;

    poly_a[`INDEX(404)] = 1'b1;
    poly_r[`INDEX2(404)] = 2'b01;

    poly_a[`INDEX(405)] = 1'b1;
    poly_r[`INDEX2(405)] = 2'b01;

    poly_a[`INDEX(406)] = 1'b1;
    poly_r[`INDEX2(406)] = 2'b01;

    poly_a[`INDEX(407)] = 1'b1;
    poly_r[`INDEX2(407)] = 2'b01;

    poly_a[`INDEX(408)] = 1'b1;
    poly_r[`INDEX2(408)] = 2'b01;

    poly_a[`INDEX(409)] = 1'b1;
    poly_r[`INDEX2(409)] = 2'b01;

    poly_a[`INDEX(410)] = 1'b1;
    poly_r[`INDEX2(410)] = 2'b01;

    poly_a[`INDEX(411)] = 1'b1;
    poly_r[`INDEX2(411)] = 2'b01;

    poly_a[`INDEX(412)] = 1'b1;
    poly_r[`INDEX2(412)] = 2'b01;

    poly_a[`INDEX(413)] = 1'b1;
    poly_r[`INDEX2(413)] = 2'b01;

    poly_a[`INDEX(414)] = 1'b1;
    poly_r[`INDEX2(414)] = 2'b01;

    poly_a[`INDEX(415)] = 1'b1;
    poly_r[`INDEX2(415)] = 2'b01;

    poly_a[`INDEX(416)] = 1'b1;
    poly_r[`INDEX2(416)] = 2'b01;

    poly_a[`INDEX(417)] = 1'b1;
    poly_r[`INDEX2(417)] = 2'b01;

    poly_a[`INDEX(418)] = 1'b1;
    poly_r[`INDEX2(418)] = 2'b01;

    poly_a[`INDEX(419)] = 1'b1;
    poly_r[`INDEX2(419)] = 2'b01;

    poly_a[`INDEX(420)] = 1'b1;
    poly_r[`INDEX2(420)] = 2'b01;

    poly_a[`INDEX(421)] = 1'b1;
    poly_r[`INDEX2(421)] = 2'b01;

    poly_a[`INDEX(422)] = 1'b1;
    poly_r[`INDEX2(422)] = 2'b01;

    poly_a[`INDEX(423)] = 1'b1;
    poly_r[`INDEX2(423)] = 2'b01;

    poly_a[`INDEX(424)] = 1'b1;
    poly_r[`INDEX2(424)] = 2'b01;

    poly_a[`INDEX(425)] = 1'b1;
    poly_r[`INDEX2(425)] = 2'b01;

    poly_a[`INDEX(426)] = 1'b1;
    poly_r[`INDEX2(426)] = 2'b01;

    poly_a[`INDEX(427)] = 1'b1;
    poly_r[`INDEX2(427)] = 2'b01;

    poly_a[`INDEX(428)] = 1'b1;
    poly_r[`INDEX2(428)] = 2'b01;

    poly_a[`INDEX(429)] = 1'b1;
    poly_r[`INDEX2(429)] = 2'b01;

    poly_a[`INDEX(430)] = 1'b1;
    poly_r[`INDEX2(430)] = 2'b01;

    poly_a[`INDEX(431)] = 1'b1;
    poly_r[`INDEX2(431)] = 2'b01;

    poly_a[`INDEX(432)] = 1'b1;
    poly_r[`INDEX2(432)] = 2'b01;

    poly_a[`INDEX(433)] = 1'b1;
    poly_r[`INDEX2(433)] = 2'b01;

    poly_a[`INDEX(434)] = 1'b1;
    poly_r[`INDEX2(434)] = 2'b01;

    poly_a[`INDEX(435)] = 1'b1;
    poly_r[`INDEX2(435)] = 2'b01;

    poly_a[`INDEX(436)] = 1'b1;
    poly_r[`INDEX2(436)] = 2'b01;

    poly_a[`INDEX(437)] = 1'b1;
    poly_r[`INDEX2(437)] = 2'b01;

    poly_a[`INDEX(438)] = 1'b1;
    poly_r[`INDEX2(438)] = 2'b01;

    poly_a[`INDEX(439)] = 1'b1;
    poly_r[`INDEX2(439)] = 2'b01;

    poly_a[`INDEX(440)] = 1'b1;
    poly_r[`INDEX2(440)] = 2'b01;

    poly_a[`INDEX(441)] = 1'b1;
    poly_r[`INDEX2(441)] = 2'b01;

    poly_a[`INDEX(442)] = 1'b1;
    poly_r[`INDEX2(442)] = 2'b01;

    poly_a[`INDEX(443)] = 1'b1;
    poly_r[`INDEX2(443)] = 2'b01;

    poly_a[`INDEX(444)] = 1'b1;
    poly_r[`INDEX2(444)] = 2'b01;

    poly_a[`INDEX(445)] = 1'b1;
    poly_r[`INDEX2(445)] = 2'b01;

    poly_a[`INDEX(446)] = 1'b1;
    poly_r[`INDEX2(446)] = 2'b01;

    poly_a[`INDEX(447)] = 1'b1;
    poly_r[`INDEX2(447)] = 2'b01;

    poly_a[`INDEX(448)] = 1'b1;
    poly_r[`INDEX2(448)] = 2'b01;

    poly_a[`INDEX(449)] = 1'b1;
    poly_r[`INDEX2(449)] = 2'b01;

    poly_a[`INDEX(450)] = 1'b1;
    poly_r[`INDEX2(450)] = 2'b01;

    poly_a[`INDEX(451)] = 1'b1;
    poly_r[`INDEX2(451)] = 2'b01;

    poly_a[`INDEX(452)] = 1'b1;
    poly_r[`INDEX2(452)] = 2'b01;

    poly_a[`INDEX(453)] = 1'b1;
    poly_r[`INDEX2(453)] = 2'b01;

    poly_a[`INDEX(454)] = 1'b1;
    poly_r[`INDEX2(454)] = 2'b01;

    poly_a[`INDEX(455)] = 1'b1;
    poly_r[`INDEX2(455)] = 2'b01;

    poly_a[`INDEX(456)] = 1'b1;
    poly_r[`INDEX2(456)] = 2'b01;

    poly_a[`INDEX(457)] = 1'b1;
    poly_r[`INDEX2(457)] = 2'b01;

    poly_a[`INDEX(458)] = 1'b1;
    poly_r[`INDEX2(458)] = 2'b01;

    poly_a[`INDEX(459)] = 1'b1;
    poly_r[`INDEX2(459)] = 2'b01;

    poly_a[`INDEX(460)] = 1'b1;
    poly_r[`INDEX2(460)] = 2'b01;

    poly_a[`INDEX(461)] = 1'b1;
    poly_r[`INDEX2(461)] = 2'b01;

    poly_a[`INDEX(462)] = 1'b1;
    poly_r[`INDEX2(462)] = 2'b01;

    poly_a[`INDEX(463)] = 1'b1;
    poly_r[`INDEX2(463)] = 2'b01;

    poly_a[`INDEX(464)] = 1'b1;
    poly_r[`INDEX2(464)] = 2'b01;

    poly_a[`INDEX(465)] = 1'b1;
    poly_r[`INDEX2(465)] = 2'b01;

    poly_a[`INDEX(466)] = 1'b1;
    poly_r[`INDEX2(466)] = 2'b01;

    poly_a[`INDEX(467)] = 1'b1;
    poly_r[`INDEX2(467)] = 2'b01;

    poly_a[`INDEX(468)] = 1'b1;
    poly_r[`INDEX2(468)] = 2'b01;

    poly_a[`INDEX(469)] = 1'b1;
    poly_r[`INDEX2(469)] = 2'b01;

    poly_a[`INDEX(470)] = 1'b1;
    poly_r[`INDEX2(470)] = 2'b01;

    poly_a[`INDEX(471)] = 1'b1;
    poly_r[`INDEX2(471)] = 2'b01;

    poly_a[`INDEX(472)] = 1'b1;
    poly_r[`INDEX2(472)] = 2'b01;

    poly_a[`INDEX(473)] = 1'b1;
    poly_r[`INDEX2(473)] = 2'b01;

    poly_a[`INDEX(474)] = 1'b1;
    poly_r[`INDEX2(474)] = 2'b01;

    poly_a[`INDEX(475)] = 1'b1;
    poly_r[`INDEX2(475)] = 2'b01;

    poly_a[`INDEX(476)] = 1'b1;
    poly_r[`INDEX2(476)] = 2'b01;

    poly_a[`INDEX(477)] = 1'b1;
    poly_r[`INDEX2(477)] = 2'b01;

    poly_a[`INDEX(478)] = 1'b1;
    poly_r[`INDEX2(478)] = 2'b01;

    poly_a[`INDEX(479)] = 1'b1;
    poly_r[`INDEX2(479)] = 2'b01;

    poly_a[`INDEX(480)] = 1'b1;
    poly_r[`INDEX2(480)] = 2'b01;

    poly_a[`INDEX(481)] = 1'b1;
    poly_r[`INDEX2(481)] = 2'b01;

    poly_a[`INDEX(482)] = 1'b1;
    poly_r[`INDEX2(482)] = 2'b01;

    poly_a[`INDEX(483)] = 1'b1;
    poly_r[`INDEX2(483)] = 2'b01;

    poly_a[`INDEX(484)] = 1'b1;
    poly_r[`INDEX2(484)] = 2'b01;

    poly_a[`INDEX(485)] = 1'b1;
    poly_r[`INDEX2(485)] = 2'b01;

    poly_a[`INDEX(486)] = 1'b1;
    poly_r[`INDEX2(486)] = 2'b01;

    poly_a[`INDEX(487)] = 1'b1;
    poly_r[`INDEX2(487)] = 2'b01;

    poly_a[`INDEX(488)] = 1'b1;
    poly_r[`INDEX2(488)] = 2'b01;

    poly_a[`INDEX(489)] = 1'b1;
    poly_r[`INDEX2(489)] = 2'b01;

    poly_a[`INDEX(490)] = 1'b1;
    poly_r[`INDEX2(490)] = 2'b01;

    poly_a[`INDEX(491)] = 1'b1;
    poly_r[`INDEX2(491)] = 2'b01;

    poly_a[`INDEX(492)] = 1'b1;
    poly_r[`INDEX2(492)] = 2'b01;

    poly_a[`INDEX(493)] = 1'b1;
    poly_r[`INDEX2(493)] = 2'b01;

    poly_a[`INDEX(494)] = 1'b1;
    poly_r[`INDEX2(494)] = 2'b01;

    poly_a[`INDEX(495)] = 1'b1;
    poly_r[`INDEX2(495)] = 2'b01;

    poly_a[`INDEX(496)] = 1'b1;
    poly_r[`INDEX2(496)] = 2'b01;

    poly_a[`INDEX(497)] = 1'b1;
    poly_r[`INDEX2(497)] = 2'b01;

    poly_a[`INDEX(498)] = 1'b1;
    poly_r[`INDEX2(498)] = 2'b01;

    poly_a[`INDEX(499)] = 1'b1;
    poly_r[`INDEX2(499)] = 2'b01;

    poly_a[`INDEX(500)] = 1'b1;
    poly_r[`INDEX2(500)] = 2'b01;

    poly_a[`INDEX(501)] = 1'b1;
    poly_r[`INDEX2(501)] = 2'b01;

    poly_a[`INDEX(502)] = 1'b1;
    poly_r[`INDEX2(502)] = 2'b01;

    poly_a[`INDEX(503)] = 1'b1;
    poly_r[`INDEX2(503)] = 2'b01;

    poly_a[`INDEX(504)] = 1'b1;
    poly_r[`INDEX2(504)] = 2'b01;

    poly_a[`INDEX(505)] = 1'b1;
    poly_r[`INDEX2(505)] = 2'b01;

    poly_a[`INDEX(506)] = 1'b1;
    poly_r[`INDEX2(506)] = 2'b01;

    poly_a[`INDEX(507)] = 1'b1;
    poly_r[`INDEX2(507)] = 2'b01;

    poly_a[`INDEX(508)] = 1'b1;
    poly_r[`INDEX2(508)] = 2'b01;

    poly_a[`INDEX(509)] = 1'b1;
    poly_r[`INDEX2(509)] = 2'b01;

    poly_a[`INDEX(510)] = 1'b1;
    poly_r[`INDEX2(510)] = 2'b01;

    poly_a[`INDEX(511)] = 1'b1;
    poly_r[`INDEX2(511)] = 2'b01;
end
endmodule
