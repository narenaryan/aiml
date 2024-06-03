@prompt
    @context
        You are an experienced stock trader.
    @end

    @objective
        Analyze the following NVIDIA CSV stock data and provide recommendations. This is daily data for past year.

        Date,Open,High,Low,Close,Adj Close,Volume
        2023-06-05,389.089996,395.649994,387.070007,391.709991,391.584412,39609400
        2023-06-06,388.299988,391.600006,381.480011,386.540009,386.416077,38872900
        2023-06-07,389.149994,394.989990,373.559998,374.750000,374.668610,51199800
        2023-06-08,377.239990,388.640015,375.049988,385.100006,385.016388,41777200
        2023-06-09,390.369995,397.109985,385.670013,387.700012,387.615814,42722000
        2023-06-12,392.000000,395.299988,386.179993,394.820007,394.734253,38870100
        2023-06-13,401.859985,411.010010,397.399994,410.220001,410.130890,61320800
        2023-06-14,408.239990,430.000000,405.519989,429.970001,429.876587,74046500
        2023-06-15,426.019989,432.890015,421.470001,426.529999,426.437347,56862200
        2023-06-16,434.500000,437.209991,426.609985,426.920013,426.827301,65475500
        2023-06-20,429.980011,439.899994,426.739990,438.079987,437.984863,45115300
        2023-06-21,435.010010,436.149994,420.799988,430.450012,430.356506,55160300
        2023-06-22,422.529999,434.260010,422.339996,430.250000,430.156586,41773700
        2023-06-23,424.640015,428.089996,420.149994,422.089996,421.998322,35632300
        2023-06-26,424.609985,427.640015,401.000000,406.320007,406.231750,59432200
        2023-06-27,407.989990,419.399994,404.480011,418.760010,418.669067,46217500
        2023-06-28,406.600006,418.450012,405.179993,411.170013,411.080719,58263900
        2023-06-29,415.579987,416.000000,406.000000,408.220001,408.131348,38051400
        2023-06-30,416.799988,425.500000,415.010010,423.019989,422.928101,50053400
        2023-07-03,425.170013,428.980011,422.019989,424.130005,424.037872,19820900
        2023-07-05,421.350006,431.769989,420.850006,423.170013,423.078125,32361800
        2023-07-06,418.440002,421.790009,413.459991,421.029999,420.938568,30358200
        2023-07-07,423.220001,432.140015,421.799988,425.029999,424.937714,35525300
        2023-07-10,426.570007,428.109985,416.489990,421.799988,421.708374,35390800
        2023-07-11,424.809998,427.579987,420.670013,424.049988,423.957886,29824400
        2023-07-12,430.329987,439.350006,427.769989,439.019989,438.924622,48127700
        2023-07-13,445.179993,461.549988,444.920013,459.769989,459.670135,47820400
        2023-07-14,465.829987,480.880005,450.600006,454.690002,454.591248,77066400
        2023-07-17,462.890015,464.959991,452.619995,464.609985,464.509094,51048800
        2023-07-18,467.010010,478.959991,457.339996,474.940002,474.836853,57019000
        2023-07-19,474.640015,478.179993,467.420013,470.769989,470.667725,42750200
        2023-07-20,465.070007,470.869995,450.619995,455.200012,455.101135,53786500
        2023-07-21,457.880005,458.660004,441.000000,443.089996,442.993774,96283200
        2023-07-24,447.309998,451.089996,440.399994,446.119995,446.023102,38251600
        2023-07-25,449.410004,461.829987,449.230011,456.790009,456.690796,34808100
        2023-07-26,460.209991,460.529999,446.299988,454.519989,454.421265,36423700
        2023-07-27,465.190002,473.950012,457.500000,459.000000,458.900330,45597600
        2023-07-28,466.679993,470.269989,463.809998,467.500000,467.398438,33119400
        2023-07-31,467.540009,471.299988,465.059998,467.290009,467.188538,25105500
        2023-08-01,464.600006,469.000000,460.269989,465.070007,464.968994,23785800
        2023-08-02,458.309998,458.399994,433.869995,442.690002,442.593872,53014200
        2023-08-03,438.000000,451.179993,438.000000,445.149994,445.053314,32417600
        2023-08-04,449.850006,456.420013,443.929993,446.799988,446.702942,36225800
        2023-08-07,451.109985,455.399994,445.630005,454.170013,454.071381,32215400
        2023-08-08,448.529999,452.420013,440.559998,446.640015,446.542999,35384300
        2023-08-09,442.739990,443.119995,421.339996,425.540009,425.447571,58644900
        2023-08-10,421.600006,435.739990,418.350006,423.880005,423.787964,49270500
        2023-08-11,417.510010,420.179993,406.390015,408.549988,408.461243,53200900
        2023-08-14,404.859985,438.000000,403.109985,437.529999,437.434998,69028600
        2023-08-15,445.600006,452.679993,437.100006,439.399994,439.304565,67651200
        2023-08-16,445.200012,446.750000,434.059998,434.859985,434.765533,52745100
        2023-08-17,439.700012,440.619995,430.010010,433.440002,433.345856,45239500
        2023-08-18,426.350006,435.779999,416.600006,432.989990,432.895966,58262200
        2023-08-21,444.940002,470.649994,442.220001,469.670013,469.567993,69257300
        2023-08-22,481.350006,481.869995,453.329987,456.679993,456.580811,75720700
        2023-08-23,458.660004,472.000000,452.079987,471.160004,471.057678,77904600
        2023-08-24,502.160004,502.660004,471.589996,471.630005,471.527557,115604400
        2023-08-25,470.119995,478.049988,450.239990,460.179993,460.080048,92534100
        2023-08-28,464.820007,469.799988,448.880005,468.350006,468.248291,68519200
        2023-08-29,466.660004,490.809998,463.910004,487.839996,487.734039,70139700
        2023-08-30,490.440002,499.269989,484.250000,492.640015,492.533020,73520600
        2023-08-31,493.799988,497.440002,489.579987,493.549988,493.442780,52857000
        2023-09-01,497.619995,498.000000,481.420013,485.089996,484.984650,46319100
        2023-09-05,482.230011,488.510010,478.600006,485.480011,485.374603,38265300
        2023-09-06,484.410004,485.489990,465.799988,470.609985,470.546539,46867000
        2023-09-07,455.250000,463.440002,451.519989,462.410004,462.347656,43333000
        2023-09-08,459.420013,466.059998,452.709991,455.720001,455.658569,47306900
        2023-09-11,461.480011,461.630005,443.119995,451.779999,451.719116,47396600
        2023-09-12,447.380005,456.730011,445.309998,448.700012,448.639496,34925600
        2023-09-13,446.000000,459.299988,445.029999,454.850006,454.788696,39835500
        2023-09-14,459.500000,459.869995,451.309998,455.809998,455.748535,37009700
        2023-09-15,453.410004,455.989990,438.079987,439.000000,438.940796,50571300
        2023-09-18,427.480011,442.420013,420.000000,439.660004,439.600708,50027100
        2023-09-19,438.329987,439.660004,430.019989,435.200012,435.141327,37306400
        2023-09-20,436.000000,439.029999,422.230011,422.390015,422.333069,36710800
        2023-09-21,415.829987,421.000000,409.799988,410.170013,410.114716,44893000
        2023-09-22,415.720001,421.149994,412.309998,416.100006,416.043884,47923600
        2023-09-25,415.910004,425.359985,411.769989,422.220001,422.163086,41909100
        2023-09-26,420.010010,428.200012,416.549988,419.109985,419.053497,40228200
        2023-09-27,423.299988,428.720001,416.290009,424.679993,424.622742,44493500
        2023-09-28,424.600006,434.459991,421.149994,430.890015,430.831940,42466300
        2023-09-29,438.269989,441.440002,433.070007,434.989990,434.931335,39722100
        2023-10-02,440.299988,451.750000,438.609985,447.820007,447.759644,43329800
        2023-10-03,448.079987,451.299988,432.459991,435.170013,435.111328,47085000
        2023-10-04,437.420013,441.429993,432.920013,440.410004,440.350616,36182100
        2023-10-05,440.500000,449.000000,438.880005,446.880005,446.819763,39348300
        2023-10-06,441.929993,457.890015,440.260010,457.619995,457.558319,43339700
        2023-10-09,448.420013,456.049988,443.679993,452.730011,452.668976,40967500
        2023-10-10,453.100006,462.589996,450.880005,457.980011,457.918274,36858200
        2023-10-11,461.959991,468.589996,460.500000,468.059998,467.996918,37813700
        2023-10-12,467.769989,476.089996,463.299988,469.450012,469.386719,48132500
        2023-10-13,469.600006,471.160004,452.799988,454.609985,454.548676,47411500
        2023-10-16,450.630005,462.250000,449.119995,460.950012,460.887848,37509900
        2023-10-17,440.000000,447.540009,424.799988,439.380005,439.320770,81233300
        2023-10-18,425.910004,432.190002,418.250000,421.959991,421.903076,62729400
        2023-10-19,428.109985,432.970001,418.820007,421.010010,420.953247,50123300
        2023-10-20,418.899994,424.700012,410.779999,413.869995,413.814209,47638100
        2023-10-23,412.290009,432.480011,409.450012,429.750000,429.692047,47853000
        2023-10-24,430.769989,436.970001,426.910004,436.630005,436.571136,40146300
        2023-10-25,433.980011,436.500000,415.549988,417.790009,417.733673,39837900
        2023-10-26,418.529999,422.559998,398.799988,403.260010,403.205627,54100100
        2023-10-27,411.299988,412.059998,400.149994,405.000000,404.945374,41678400
        2023-10-30,410.869995,417.660004,404.809998,411.609985,411.554474,38802800
        2023-10-31,404.500000,408.790009,392.299988,407.799988,407.744995,51796900
        2023-11-01,408.839996,423.809998,408.690002,423.250000,423.192932,43759300
        2023-11-02,433.279999,438.839996,428.940002,435.059998,435.001343,40917200
        2023-11-03,440.200012,453.089996,437.230011,450.049988,449.989319,42385500
        2023-11-06,452.850006,459.350006,448.989990,457.510010,457.448334,40073300
        2023-11-07,457.190002,462.179993,451.579987,459.549988,459.488037,34316500
        2023-11-08,461.000000,468.670013,459.679993,465.739990,465.677185,34671900
        2023-11-09,474.670013,482.299988,467.500000,469.500000,469.436676,54049600
        2023-11-10,475.000000,484.720001,472.829987,483.350006,483.284851,42124500
        2023-11-13,483.200012,491.160004,480.989990,486.200012,486.134460,38413600
        2023-11-14,496.799988,498.339996,490.399994,496.559998,496.493073,41695400
        2023-11-15,499.350006,499.600006,482.000000,488.880005,488.814117,47549700
        2023-11-16,486.790009,495.250000,483.299988,494.799988,494.733276,33975600
        2023-11-17,495.239990,497.170013,490.070007,492.980011,492.913544,32520500
        2023-11-20,493.119995,505.480011,491.809998,504.089996,504.022034,41412000
        2023-11-21,501.260010,505.170013,492.220001,499.440002,499.372650,56574700
        2023-11-22,498.519989,503.350006,476.899994,487.160004,487.094330,89942000
        2023-11-24,484.700012,489.209991,477.450012,477.760010,477.695618,29464500
        2023-11-27,478.000000,485.299988,476.519989,482.420013,482.354950,39566200
        2023-11-28,482.359985,483.230011,474.730011,478.209991,478.145508,40149100
        2023-11-29,483.790009,487.619995,478.600006,481.399994,481.335083,38200500
        2023-11-30,480.239990,481.100006,464.220001,467.700012,467.636963,52624700
        2023-12-01,465.250000,472.000000,461.869995,467.649994,467.586945,36880900
        2023-12-04,460.769989,460.769989,450.100006,455.100006,455.038635,43754300
        2023-12-05,454.660004,466.000000,452.709991,465.660004,465.638153,37171800
        2023-12-06,472.149994,473.869995,454.119995,455.029999,455.008667,38059000
        2023-12-07,457.000000,466.290009,456.040009,465.959991,465.938141,35082300
        2023-12-08,465.950012,477.410004,465.500000,475.059998,475.037720,35880300
        2023-12-11,474.910004,475.309998,458.299988,466.269989,466.248108,50972800
        2023-12-12,460.459991,476.660004,460.459991,476.570007,476.547638,37238700
        2023-12-13,476.290009,485.940002,476.079987,480.880005,480.857452,44779200
        2023-12-14,483.899994,486.700012,474.220001,483.500000,483.477325,39123200
        2023-12-15,481.940002,494.040009,481.200012,488.899994,488.877075,47947800
        2023-12-18,494.000000,504.329987,491.500000,500.769989,500.746490,41258700
        2023-12-19,494.239990,497.000000,488.950012,496.040009,496.016754,46444400
        2023-12-20,496.549988,499.989990,480.980011,481.109985,481.087402,39789400
        2023-12-21,488.109985,490.950012,484.190002,489.899994,489.877014,30042500
        2023-12-22,491.950012,493.829987,484.670013,488.299988,488.277069,25213900
        2023-12-26,489.679993,496.000000,489.600006,492.790009,492.766907,24420000
        2023-12-27,495.109985,496.799988,490.850006,494.170013,494.146820,23364800
        2023-12-28,496.429993,498.839996,494.119995,495.220001,495.196777,24658700
        2023-12-29,498.130005,499.970001,487.510010,495.220001,495.196777,38869000
        2024-01-02,492.440002,492.950012,475.950012,481.679993,481.657410,41125400
        2024-01-03,474.850006,481.839996,473.200012,475.690002,475.667694,32089600
        2024-01-04,477.670013,485.000000,475.079987,479.980011,479.957489,30653500
        2024-01-05,484.619995,495.470001,483.059998,490.970001,490.946960,41456800
        2024-01-08,495.119995,522.750000,494.790009,522.530029,522.505493,64251000
        2024-01-09,524.010010,543.250000,516.900024,531.400024,531.375122,77310000
        2024-01-10,536.159973,546.000000,534.890015,543.500000,543.474487,53379600
        2024-01-11,549.989990,553.460022,535.599976,548.219971,548.194275,59675900
        2024-01-12,546.200012,549.700012,543.299988,547.099976,547.074341,35247900
        2024-01-16,550.179993,568.349976,549.000000,563.820007,563.793579,44958000
        2024-01-17,563.469971,564.710022,547.400024,560.530029,560.503723,47439400
        2024-01-18,572.599976,576.000000,561.070007,571.070007,571.043213,49165000
        2024-01-19,579.890015,595.000000,572.250000,594.909973,594.882080,54210300
        2024-01-22,600.489990,603.309998,590.700012,596.539978,596.512024,45295500
        2024-01-23,595.700012,599.099976,585.849976,598.729980,598.701904,29465400
        2024-01-24,603.039978,628.489990,599.380005,613.619995,613.591187,56027100
        2024-01-25,623.500000,627.190002,608.500000,616.169983,616.141052,48277700
        2024-01-26,609.599976,617.830017,605.729980,610.309998,610.281372,39030900
        2024-01-29,612.320007,624.890015,609.070007,624.650024,624.620728,34873300
        2024-01-30,629.000000,634.929993,622.599976,627.739990,627.710571,41073500
        2024-01-31,614.400024,622.690002,607.000000,615.270020,615.241150,45379500
        2024-02-01,621.000000,631.909973,616.500000,630.270020,630.240479,36914600
        2024-02-02,639.739990,666.000000,636.900024,661.599976,661.568970,47578000
        2024-02-05,682.250000,694.969971,672.049988,693.320007,693.287476,68007800
        2024-02-06,696.299988,697.539978,663.000000,682.229980,682.197998,68311100
        2024-02-07,683.190002,702.200012,676.000000,700.989990,700.957092,49557500
        2024-02-08,700.739990,707.940002,694.549988,696.409973,696.377319,41442200
        2024-02-09,705.330017,721.849976,702.119995,721.330017,721.296204,43663700
        2024-02-12,726.000000,746.109985,712.500000,722.479980,722.446106,61371000
        2024-02-13,704.000000,734.500000,696.200012,721.280029,721.246216,60258000
        2024-02-14,732.020020,742.359985,719.380005,739.000000,738.965332,50491700
        2024-02-15,738.690002,739.750000,724.000000,726.580017,726.545959,42012200
        2024-02-16,741.000000,744.020020,725.010010,726.130005,726.095947,49391800
        2024-02-20,719.469971,719.559998,677.340027,694.520020,694.487427,70483300
        2024-02-21,680.059998,688.880005,662.479980,674.719971,674.688293,69029800
        2024-02-22,750.250000,785.750000,742.200012,785.380005,785.343140,86510000
        2024-02-23,807.900024,823.940002,775.700012,788.169983,788.132996,82938800
        2024-02-26,797.000000,806.460022,785.049988,790.919983,790.882874,50397300
        2024-02-27,793.809998,794.799988,771.619995,787.010010,786.973083,39170500
        2024-02-28,776.200012,789.330017,771.250000,776.630005,776.593567,39311000
        2024-02-29,790.940002,799.900024,783.500000,791.119995,791.082886,50728900
        2024-03-01,800.000000,823.000000,794.349976,822.789978,822.751404,47677700
        2024-03-04,841.299988,876.950012,837.190002,852.369995,852.330017,61561600
        2024-03-05,852.700012,860.969971,834.169983,859.640015,859.640015,52063900
        2024-03-06,880.219971,897.239990,870.299988,887.000000,887.000000,58252000
        2024-03-07,901.580017,927.669983,896.020020,926.690002,926.690002,60811900
        2024-03-08,951.380005,974.000000,865.059998,875.280029,875.280029,113299600
        2024-03-11,864.289978,887.969971,841.659973,857.739990,857.739990,67836400
        2024-03-12,880.489990,919.599976,861.500000,919.130005,919.130005,66807500
        2024-03-13,910.549988,915.039978,884.349976,908.880005,908.880005,63571300
        2024-03-14,895.770020,906.460022,866.000000,879.440002,879.440002,60231800
        2024-03-15,869.299988,895.460022,862.570007,878.369995,878.369995,64019300
        2024-03-18,903.880005,924.049988,870.849976,884.549988,884.549988,66897600
        2024-03-19,867.000000,905.440002,850.099976,893.979980,893.979980,67217100
        2024-03-20,897.969971,904.099976,882.229980,903.719971,903.719971,47906300
        2024-03-21,923.000000,926.479980,904.049988,914.349976,914.349976,48037200
        2024-03-22,911.409973,947.780029,908.340027,942.890015,942.890015,58521500
        2024-03-25,939.409973,967.659973,935.099976,950.020020,950.020020,55213600
        2024-03-26,958.510010,963.750000,925.020020,925.609985,925.609985,51364800
        2024-03-27,931.119995,932.400024,891.229980,902.500000,902.500000,58606700
        2024-03-28,900.000000,913.000000,891.929993,903.559998,903.559998,43521200
        2024-04-01,902.989990,922.250000,892.039978,903.630005,903.630005,45244100
        2024-04-02,884.479980,900.940002,876.200012,894.520020,894.520020,43306400
        2024-04-03,884.840027,903.739990,884.000000,889.640015,889.640015,37006700
        2024-04-04,904.059998,906.340027,858.799988,859.049988,859.049988,43496500
        2024-04-05,868.659973,884.809998,859.260010,880.080017,880.080017,39885700
        2024-04-08,887.000000,888.299988,867.320007,871.330017,871.330017,28322000
        2024-04-09,874.419983,876.349976,830.219971,853.539978,853.539978,50354700
        2024-04-10,839.260010,874.000000,837.090027,870.390015,870.390015,43192900
        2024-04-11,874.200012,907.390015,869.260010,906.159973,906.159973,43163700
        2024-04-12,896.989990,901.750000,875.299988,881.859985,881.859985,42488900
        2024-04-15,890.979980,906.130005,859.289978,860.010010,860.010010,44307700
        2024-04-16,864.330017,881.179993,860.640015,874.150024,874.150024,37045300
        2024-04-17,883.400024,887.750000,839.500000,840.349976,840.349976,49540000
        2024-04-18,849.700012,861.900024,824.020020,846.710022,846.710022,44726000
        2024-04-19,831.500000,843.239990,756.059998,762.000000,762.000000,87190500
        2024-04-22,781.039978,800.729980,764.000000,795.179993,795.179993,59634100
        2024-04-23,807.690002,827.690002,802.640015,824.229980,824.229980,43855900
        2024-04-24,839.500000,840.820007,791.830017,796.770020,796.770020,51220800
        2024-04-25,788.679993,833.229980,782.229980,826.320007,826.320007,42464100
        2024-04-26,838.179993,883.309998,833.869995,877.349976,877.349976,55101100
        2024-04-29,875.950012,879.919983,852.659973,877.570007,877.570007,38897100
        2024-04-30,872.400024,888.190002,863.000000,864.020020,864.020020,36370900
        2024-05-01,850.770020,860.000000,812.549988,830.409973,830.409973,55986300
        2024-05-02,844.489990,862.369995,832.000000,858.169983,858.169983,37789800
        2024-05-03,877.890015,892.809998,870.400024,887.890015,887.890015,39834100
        2024-05-06,893.900024,922.200012,890.549988,921.400024,921.400024,37620300
        2024-05-07,910.979980,917.809998,890.109985,905.539978,905.539978,43734200
        2024-05-08,894.830017,911.940002,894.200012,904.119995,904.119995,32572100
        2024-05-09,905.289978,910.719971,882.309998,887.469971,887.469971,37801300
        2024-05-10,903.049988,914.010010,892.270020,898.780029,898.780029,33532500
        2024-05-13,904.780029,909.979980,885.289978,903.989990,903.989990,28968000
        2024-05-14,895.989990,916.510010,889.340027,913.559998,913.559998,29650700
        2024-05-15,924.719971,948.619995,915.989990,946.299988,946.299988,41773500
        2024-05-16,949.099976,958.190002,941.030029,943.590027,943.590027,32395200
        2024-05-17,943.690002,947.400024,918.059998,924.789978,924.789978,35969100
        2024-05-20,937.500000,952.000000,934.400024,947.799988,947.799988,31876400
        2024-05-21,935.989990,954.000000,931.799988,953.859985,953.859985,32894600
        2024-05-22,954.590027,960.200012,932.489990,949.500000,949.500000,54864800
        2024-05-23,1020.280029,1063.199951,1015.200012,1037.989990,1037.989990,83506500
        2024-05-24,1044.489990,1064.750000,1030.000000,1064.689941,1064.689941,42650200
        2024-05-28,1102.439941,1149.390015,1098.829956,1139.010010,1139.010010,65272800
        2024-05-29,1130.500000,1154.920044,1109.010010,1148.250000,1148.250000,55744200
        2024-05-30,1146.500000,1158.189941,1096.630005,1105.000000,1105.000000,48735000
        2024-05-31,1125.199951,1127.170044,1069.400024,1096.329956,1096.329956,61183200
    @end

    @category
        Trading & Stock Markets
    @end
@end