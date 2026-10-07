.class public Lcom/readboy/provider/semester/util/LunarSolarConverter;
.super Ljava/lang/Object;
.source "LunarSolarConverter.java"


# static fields
.field public static lunar_month_days:[I

.field public static solar_1_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const/16 v0, 0x13b

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/readboy/provider/semester/util/LunarSolarConverter;->lunar_month_days:[I

    .line 16
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/readboy/provider/semester/util/LunarSolarConverter;->solar_1_1:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x75f
        0x1694
        0x16aa
        0x4ad5
        0xab6
        0xc4b7
        0x4ae
        0xa56
        0xb52a
        0x1d2a
        0xd54
        0x75aa
        0x156a
        0x1096d
        0x95c
        0x14ae
        0xaa4d
        0x1a4c
        0x1b2a
        0x8d55
        0xad4
        0x135a
        0x495d
        0x95c
        0xd49b
        0x149a
        0x1a4a
        0xbaa5
        0x16a8
        0x1ad4
        0x52da
        0x12b6
        0xe937
        0x92e
        0x1496
        0xb64b
        0xd4a
        0xda8
        0x95b5
        0x56c
        0x12ae
        0x492f
        0x92e
        0xcc96
        0x1a94
        0x1d4a
        0xada9
        0xb5a
        0x56c
        0x726e
        0x125c
        0xf92d
        0x192a
        0x1a94
        0xdb4a
        0x16aa
        0xad4
        0x955b
        0x4ba
        0x125a
        0x592b
        0x152a
        0xf695
        0xd94
        0x16aa
        0xaab5
        0x9b4
        0x14b6
        0x6a57
        0xa56
        0x1152a
        0x1d2a
        0xd54
        0xd5aa
        0x156a
        0x96c
        0x94ae
        0x14ae
        0xa4c
        0x7d26
        0x1b2a
        0xeb55
        0xad4
        0x12da
        0xa95d
        0x95a
        0x149a
        0x9a4d
        0x1a4a
        0x11aa5
        0x16a8
        0x16d4
        0xd2da
        0x12b6
        0x936
        0x9497
        0x1496
        0x1564b
        0xd4a
        0xda8
        0xd5b4
        0x156c
        0x12ae
        0xa92f
        0x92e
        0xc96
        0x6d4a
        0x1d4a
        0x10d65
        0xb58
        0x156c
        0xb26d
        0x125c
        0x192c
        0x9a95
        0x1a94
        0x1b4a
        0x4b55
        0xad4
        0xf55b
        0x4ba
        0x125a
        0xb92b
        0x152a
        0x1694
        0x96aa
        0x15aa
        0x12ab5
        0x974
        0x14b6
        0xca57
        0xa56
        0x1526
        0x8e95
        0xd54
        0x15aa
        0x49b5
        0x96c
        0xd4ae
        0x149c
        0x1a4c
        0xbd26
        0x1aa6
        0xb54
        0x6d6a
        0x12da
        0x1695d
        0x95a
        0x149a
        0xda4b
        0x1a4a
        0x1aa4
        0xbb54
        0x16b4
        0xada
        0x495b
        0x936
        0xf497
        0x1496
        0x154a
        0xb6a5
        0xda4
        0x15b4
        0x6ab6
        0x126e
        0x1092f
        0x92e
        0xc96
        0xcd4a
        0x1d4a
        0xd64
        0x956c
        0x155c
        0x125c
        0x792e
        0x192c
        0xfa95
        0x1a94
        0x1b4a
        0xab55
        0xad4
        0x14da
        0x8a5d
        0xa5a
        0x1152b
        0x152a
        0x1694
        0xd6aa
        0x15aa
        0xab4
        0x94ba
        0x14b6
        0xa56
        0x7527
        0xd26
        0xee53
        0xd54
        0x15aa
        0xa9b5
        0x96c
        0x14ae
        0x8a4e
        0x1a4c
        0x11d26
        0x1aa4
        0x1b54
        0xcd6a
        0xada
        0x95c
        0x949d
        0x149a
        0x1a2a
        0x5b25
        0x1aa4
        0xfb52
        0x16b4
        0xaba
        0xa95b
        0x936
        0x1496
        0x9a4b
        0x154a
        0x136a5
        0xda4
        0x15ac
        0xcab6
        0x126e
        0x92e
        0x8c97
        0xa96
        0xd4a
        0x6da5
        0xd54
        0xf56a
        0x155a
        0xa5c
        0xb92e
        0x152c
        0x1a94
        0x9d4a
        0x1b2a
        0x16b55
        0xad4
        0x14da
        0xca5d
        0xa5a
        0x151a
        0xba95
        0x1654
        0x16aa
        0x4ad5
        0xab4
        0xf4ba
        0x14b6
        0xa56
        0xb517
        0xd16
        0xe52
        0x96aa
        0xd6a
        0x165b5
        0x96c
        0x14ae
        0xca2e
        0x1a2c
        0x1d16
        0xad52
        0x1b52
        0xb6a
        0x656d
        0x55c
        0xf45d
        0x145a
        0x1a2a
        0xda95
        0x16a4
        0x1ad2
        0x8b5a
        0xab6
        0x1455b
        0x8b6
        0x1456
        0xd52b
        0x152a
        0x1694
        0xb6aa
        0x15aa
        0xab6
        0x64b7
        0x8ae
        0xec57
        0xa56
        0xd2a
        0xcd95
        0xb54
        0x156a
        0x8a6d
        0x95c
        0x14ae
        0x4a56
        0x1a54
        0xdd2a
        0x1aaa
        0xb54
        0xb56a
        0x14da
        0x95c
        0x74ab
        0x149a
        0xfa4b
        0x1652
        0x16aa
        0xcad5
        0x5b4
        0x12ba
    .end array-data

    :array_1
    .array-data 4
        0x75f
        0xec04c
        0xec23f
        0xec435
        0xec649
        0xec83e
        0xeca51
        0xecc46
        0xece3a
        0xed04d
        0xed242
        0xed436
        0xed64a
        0xed83f
        0xeda53
        0xedc48
        0xede3d
        0xee050
        0xee244
        0xee439
        0xee64d
        0xee842
        0xeea36
        0xeec4a
        0xeee3e
        0xef052
        0xef246
        0xef43a
        0xef64e
        0xef843
        0xefa37
        0xefc4b
        0xefe41
        0xf0054
        0xf0248
        0xf043c
        0xf0650
        0xf0845
        0xf0a38
        0xf0c4d
        0xf0e42
        0xf1037
        0xf124a
        0xf143e
        0xf1651
        0xf1846
        0xf1a3a
        0xf1c4e
        0xf1e44
        0xf2038
        0xf224b
        0xf243f
        0xf2653
        0xf2848
        0xf2a3b
        0xf2c4f
        0xf2e45
        0xf3039
        0xf324d
        0xf3442
        0xf3636
        0xf384a
        0xf3a3d
        0xf3c51
        0xf3e46
        0xf403b
        0xf424e
        0xf4443
        0xf4638
        0xf484c
        0xf4a3f
        0xf4c52
        0xf4e48
        0xf503c
        0xf524f
        0xf5445
        0xf5639
        0xf584d
        0xf5a42
        0xf5c35
        0xf5e49
        0xf603e
        0xf6251
        0xf6446
        0xf663b
        0xf684f
        0xf6a43
        0xf6c37
        0xf6e4b
        0xf703f
        0xf7252
        0xf7447
        0xf763c
        0xf7850
        0xf7a45
        0xf7c39
        0xf7e4d
        0xf8042
        0xf8254
        0xf8449
        0xf863d
        0xf8851
        0xf8a46
        0xf8c3b
        0xf8e4f
        0xf9044
        0xf9237
        0xf944a
        0xf963f
        0xf9853
        0xf9a47
        0xf9c3c
        0xf9e50
        0xfa045
        0xfa238
        0xfa44c
        0xfa641
        0xfa836
        0xfaa49
        0xfac3d
        0xfae52
        0xfb047
        0xfb23a
        0xfb44e
        0xfb643
        0xfb837
        0xfba4a
        0xfbc3f
        0xfbe53
        0xfc048
        0xfc23c
        0xfc450
        0xfc645
        0xfc839
        0xfca4c
        0xfcc41
        0xfce36
        0xfd04a
        0xfd23d
        0xfd451
        0xfd646
        0xfd83a
        0xfda4d
        0xfdc43
        0xfde37
        0xfe04b
        0xfe23f
        0xfe453
        0xfe648
        0xfe83c
        0xfea4f
        0xfec44
        0xfee38
        0xff04c
        0xff241
        0xff436
        0xff64a
        0xff83e
        0xffa51
        0xffc46
        0xffe3a
        0x10004e
        0x100242
        0x100437
        0x10064b
        0x100841
        0x100a53
        0x100c48
        0x100e3c
        0x10104f
        0x101244
        0x101438
        0x10164c
        0x101842
        0x101a35
        0x101c49
        0x101e3d
        0x102051
        0x102245
        0x10243a
        0x10264e
        0x102843
        0x102a37
        0x102c4b
        0x102e3f
        0x103053
        0x103247
        0x10343b
        0x10364f
        0x103845
        0x103a38
        0x103c4c
        0x103e42
        0x104036
        0x104249
        0x10443d
        0x104651
        0x104846
        0x104a3a
        0x104c4e
        0x104e43
        0x105038
        0x10524a
        0x10543e
        0x105652
        0x105847
        0x105a3b
        0x105c4f
        0x105e45
        0x106039
        0x10624c
        0x106441
        0x106635
        0x106849
        0x106a3d
        0x106c51
        0x106e47
        0x10703c
        0x10724f
        0x107444
        0x107638
        0x10784c
        0x107a3f
        0x107c53
        0x107e48
        0x10803d
        0x108250
        0x108446
        0x10863a
        0x10884e
        0x108a42
        0x108c36
        0x108e4a
        0x10903e
        0x109251
        0x109447
        0x10963b
        0x10984f
        0x109a43
        0x109c37
        0x109e4b
        0x10a041
        0x10a253
        0x10a448
        0x10a63d
        0x10a851
        0x10aa45
        0x10ac39
        0x10ae4d
        0x10b042
        0x10b236
        0x10b44a
        0x10b63e
        0x10b852
        0x10ba47
        0x10bc3b
        0x10be4f
        0x10c044
        0x10c237
        0x10c44b
        0x10c641
        0x10c854
        0x10ca48
        0x10cc3d
        0x10ce50
        0x10d045
        0x10d239
        0x10d44c
        0x10d642
        0x10d837
        0x10da4a
        0x10dc3e
        0x10de52
        0x10e047
        0x10e23a
        0x10e44e
        0x10e643
        0x10e838
        0x10ea4b
        0x10ec41
        0x10ee54
        0x10f049
        0x10f23c
        0x10f450
        0x10f645
        0x10f839
        0x10fa4c
        0x10fc42
        0x10fe37
        0x11004b
        0x11023e
        0x110452
        0x110647
        0x11083b
        0x110a4e
        0x110c43
        0x110e38
        0x11104c
        0x11123f
        0x111435
        0x111648
        0x11183c
        0x111a4f
        0x111c45
        0x111e39
        0x11204d
        0x112242
        0x112436
        0x11264a
        0x11283e
        0x112a51
        0x112c46
        0x112e3b
        0x11304f
        0x113244
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetBitInt(III)I
    .locals 2
    .param p0, "data"    # I
    .param p1, "length"    # I
    .param p2, "shift"    # I

    .line 19
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    shl-int v0, v1, p2

    and-int/2addr v0, p0

    shr-int/2addr v0, p2

    return v0
.end method

.method public static LunarToSolar(Lcom/readboy/provider/semester/bean/Lunar;)Lcom/readboy/provider/semester/bean/Solar;
    .locals 12
    .param p0, "lunar"    # Lcom/readboy/provider/semester/bean/Lunar;

    .line 66
    sget-object v0, Lcom/readboy/provider/semester/util/LunarSolarConverter;->lunar_month_days:[I

    iget v1, p0, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    sget-object v2, Lcom/readboy/provider/semester/util/LunarSolarConverter;->lunar_month_days:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 67
    .local v0, "days":I
    const/4 v1, 0x4

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v2

    .line 68
    .local v2, "leap":I
    const/4 v4, 0x0

    .line 69
    .local v4, "offset":I
    move v5, v2

    .line 70
    .local v5, "loopend":I
    iget-boolean v6, p0, Lcom/readboy/provider/semester/bean/Lunar;->isLeap:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 71
    iget v6, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    if-le v6, v2, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget v5, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    iget v6, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    add-int/lit8 v5, v6, -0x1

    .line 77
    :cond_2
    :goto_1
    move v6, v4

    move v4, v3

    .local v4, "i":I
    .local v6, "offset":I
    :goto_2
    const/16 v8, 0xc

    if-ge v4, v5, :cond_4

    .line 78
    sub-int/2addr v8, v4

    invoke-static {v0, v7, v8}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v8

    if-ne v8, v7, :cond_3

    const/16 v8, 0x1e

    goto :goto_3

    :cond_3
    const/16 v8, 0x1d

    :goto_3
    add-int/2addr v6, v8

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 80
    .end local v4
    :cond_4
    iget v4, p0, Lcom/readboy/provider/semester/bean/Lunar;->dayOfMonth:I

    add-int/2addr v6, v4

    .line 82
    sget-object v4, Lcom/readboy/provider/semester/util/LunarSolarConverter;->solar_1_1:[I

    iget v7, p0, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    sget-object v9, Lcom/readboy/provider/semester/util/LunarSolarConverter;->solar_1_1:[I

    aget v9, v9, v3

    sub-int/2addr v7, v9

    aget v4, v4, v7

    .line 84
    .local v4, "solar11":I
    const/16 v7, 0x9

    invoke-static {v4, v8, v7}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v7

    .line 85
    .local v7, "y":I
    const/4 v8, 0x5

    invoke-static {v4, v1, v8}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v1

    .line 86
    .local v1, "m":I
    invoke-static {v4, v8, v3}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v3

    .line 88
    .local v3, "d":I
    invoke-static {v7, v1, v3}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->SolarToInt(III)J

    move-result-wide v8

    int-to-long v10, v6

    add-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->SolarFromInt(J)Lcom/readboy/provider/semester/bean/Solar;

    move-result-object v8

    return-object v8
.end method

.method private static SolarFromInt(J)Lcom/readboy/provider/semester/bean/Solar;
    .locals 15
    .param p0, "g"    # J

    .line 43
    const-wide/16 v0, 0x2710

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x39bc

    add-long/2addr v0, v2

    const-wide/32 v2, 0x37bb49

    div-long/2addr v0, v2

    .line 44
    .local v0, "y":J
    const-wide/16 v2, 0x16d

    mul-long v4, v2, v0

    const-wide/16 v6, 0x4

    div-long v8, v0, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x64

    div-long v10, v0, v8

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x190

    div-long v12, v0, v10

    add-long/2addr v4, v12

    sub-long v4, p0, v4

    .line 45
    .local v4, "ddd":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    const-wide/16 v13, 0x1

    if-gez v12, :cond_0

    .line 46
    sub-long/2addr v0, v13

    .line 47
    mul-long/2addr v2, v0

    div-long v6, v0, v6

    add-long/2addr v2, v6

    div-long v6, v0, v8

    sub-long/2addr v2, v6

    div-long v6, v0, v10

    add-long/2addr v2, v6

    sub-long v4, p0, v2

    .line 49
    :cond_0
    mul-long/2addr v8, v4

    const-wide/16 v2, 0x34

    add-long/2addr v8, v2

    const-wide/16 v2, 0xbf4

    div-long/2addr v8, v2

    .line 50
    .local v8, "mi":J
    const-wide/16 v2, 0x2

    add-long v6, v8, v2

    const-wide/16 v10, 0xc

    rem-long/2addr v6, v10

    add-long/2addr v6, v13

    .line 51
    .local v6, "mm":J
    add-long/2addr v2, v8

    div-long/2addr v2, v10

    add-long/2addr v0, v2

    .line 52
    const-wide/16 v2, 0x132

    mul-long/2addr v2, v8

    const-wide/16 v10, 0x5

    add-long/2addr v2, v10

    const-wide/16 v10, 0xa

    div-long/2addr v2, v10

    sub-long v2, v4, v2

    add-long/2addr v2, v13

    .line 53
    .local v2, "dd":J
    new-instance v10, Lcom/readboy/provider/semester/bean/Solar;

    invoke-direct {v10}, Lcom/readboy/provider/semester/bean/Solar;-><init>()V

    .line 54
    .local v10, "solar":Lcom/readboy/provider/semester/bean/Solar;
    long-to-int v11, v0

    iput v11, v10, Lcom/readboy/provider/semester/bean/Solar;->year:I

    .line 55
    long-to-int v11, v6

    iput v11, v10, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    .line 56
    long-to-int v11, v2

    iput v11, v10, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    .line 57
    return-object v10
.end method

.method private static SolarToInt(III)J
    .locals 3
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # I

    .line 24
    add-int/lit8 v0, p1, 0x9

    rem-int/lit8 v0, v0, 0xc

    .line 25
    .end local p1
    .local v0, "m":I
    div-int/lit8 p1, v0, 0xa

    sub-int/2addr p0, p1

    .line 26
    const/16 p1, 0x16d

    mul-int/2addr p1, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr p1, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr p1, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr p1, v1

    mul-int/lit16 v1, v0, 0x132

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    add-int/2addr p1, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr p1, v1

    int-to-long v1, p1

    return-wide v1
.end method

.method public static SolarToLunar(Lcom/readboy/provider/semester/bean/Solar;)Lcom/readboy/provider/semester/bean/Lunar;
    .locals 24
    .param p0, "solar"    # Lcom/readboy/provider/semester/bean/Solar;

    .line 92
    move-object/from16 v0, p0

    new-instance v1, Lcom/readboy/provider/semester/bean/Lunar;

    invoke-direct {v1}, Lcom/readboy/provider/semester/bean/Lunar;-><init>()V

    .line 93
    .local v1, "lunar":Lcom/readboy/provider/semester/bean/Lunar;
    iget v2, v0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    sget-object v3, Lcom/readboy/provider/semester/util/LunarSolarConverter;->solar_1_1:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    .line 94
    .local v2, "index":I
    iget v3, v0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    const/16 v5, 0x9

    shl-int/2addr v3, v5

    iget v6, v0, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    const/4 v7, 0x5

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    iget v6, v0, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    or-int/2addr v3, v6

    .line 96
    .local v3, "data":I
    const/4 v6, 0x0

    .line 97
    .local v6, "solar11":I
    sget-object v8, Lcom/readboy/provider/semester/util/LunarSolarConverter;->solar_1_1:[I

    aget v8, v8, v2

    if-le v8, v3, :cond_0

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 100
    :cond_0
    sget-object v8, Lcom/readboy/provider/semester/util/LunarSolarConverter;->solar_1_1:[I

    aget v6, v8, v2

    .line 101
    const/16 v8, 0xc

    invoke-static {v6, v8, v5}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v5

    .line 102
    .local v5, "y":I
    const/4 v9, 0x4

    invoke-static {v6, v9, v7}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v10

    .line 103
    .local v10, "m":I
    invoke-static {v6, v7, v4}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v7

    .line 104
    .local v7, "d":I
    iget v11, v0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    iget v12, v0, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    iget v13, v0, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    invoke-static {v11, v12, v13}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->SolarToInt(III)J

    move-result-wide v11

    .line 105
    invoke-static {v5, v10, v7}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->SolarToInt(III)J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 107
    .local v11, "offset":J
    sget-object v13, Lcom/readboy/provider/semester/util/LunarSolarConverter;->lunar_month_days:[I

    aget v13, v13, v2

    .line 108
    .local v13, "days":I
    const/16 v14, 0xd

    invoke-static {v13, v9, v14}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v9

    .line 110
    .local v9, "leap":I
    sget-object v15, Lcom/readboy/provider/semester/util/LunarSolarConverter;->solar_1_1:[I

    aget v15, v15, v4

    add-int/2addr v15, v2

    .line 111
    .local v15, "lunarY":I
    const/16 v16, 0x1

    .line 112
    .local v16, "lunarM":I
    const/16 v17, 0x1

    .line 113
    .local v17, "lunarD":I
    const-wide/16 v18, 0x1

    add-long v11, v11, v18

    .line 115
    move/from16 v20, v5

    move-wide/from16 v22, v11

    move v11, v4

    move-wide/from16 v4, v22

    move/from16 v12, v16

    .end local v5
    .end local v16
    .local v4, "offset":J
    .local v11, "i":I
    .local v12, "lunarM":I
    .local v20, "y":I
    :goto_0
    const/4 v8, 0x1

    if-ge v11, v14, :cond_2

    .line 116
    const/16 v16, 0xc

    rsub-int/lit8 v14, v11, 0xc

    invoke-static {v13, v8, v14}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v14

    if-ne v14, v8, :cond_1

    const/16 v14, 0x1e

    goto :goto_1

    :cond_1
    const/16 v14, 0x1d

    .line 117
    .local v14, "dm":I
    :goto_1
    move/from16 v21, v9

    int-to-long v8, v14

    .end local v9
    .local v21, "leap":I
    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 118
    add-int/lit8 v12, v12, 0x1

    .line 119
    int-to-long v8, v14

    sub-long/2addr v4, v8

    .line 115
    .end local v14
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    move/from16 v9, v21

    const/16 v14, 0xd

    goto :goto_0

    .line 124
    .end local v11
    .end local v21
    .restart local v9
    :cond_2
    move/from16 v21, v9

    .end local v9
    .restart local v21
    :cond_3
    long-to-int v8, v4

    .line 125
    .end local v17
    .local v8, "lunarD":I
    iput v15, v1, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    .line 126
    iput v12, v1, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    .line 127
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/readboy/provider/semester/bean/Lunar;->isLeap:Z

    .line 128
    if-eqz v21, :cond_4

    move/from16 v9, v21

    if-le v12, v9, :cond_5

    .line 129
    .end local v21
    .restart local v9
    add-int/lit8 v11, v12, -0x1

    iput v11, v1, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    .line 130
    add-int/lit8 v11, v9, 0x1

    if-ne v12, v11, :cond_5

    .line 131
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/readboy/provider/semester/bean/Lunar;->isLeap:Z

    goto :goto_2

    .line 135
    .end local v9
    .restart local v21
    :cond_4
    move/from16 v9, v21

    .end local v21
    .restart local v9
    :cond_5
    :goto_2
    iput v8, v1, Lcom/readboy/provider/semester/bean/Lunar;->dayOfMonth:I

    .line 136
    return-object v1
.end method

.method public static getLeap(Lcom/readboy/provider/semester/bean/Lunar;)I
    .locals 4
    .param p0, "lunar"    # Lcom/readboy/provider/semester/bean/Lunar;

    .line 61
    sget-object v0, Lcom/readboy/provider/semester/util/LunarSolarConverter;->lunar_month_days:[I

    iget v1, p0, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    sget-object v2, Lcom/readboy/provider/semester/util/LunarSolarConverter;->lunar_month_days:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 62
    .local v0, "days":I
    const/4 v1, 0x4

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->GetBitInt(III)I

    move-result v1

    return v1
.end method

.method public static lunarYearToGanZhi(I)Ljava/lang/String;
    .locals 13
    .param p0, "lunarYear"    # I

    .line 36
    const-string v0, "\u7532"

    const-string v1, "\u4e59"

    const-string v2, "\u4e19"

    const-string v3, "\u4e01"

    const-string v4, "\u620a"

    const-string v5, "\u5df1"

    const-string v6, "\u5e9a"

    const-string v7, "\u8f9b"

    const-string v8, "\u58ec"

    const-string v9, "\u7678"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "tianGan":[Ljava/lang/String;
    const-string v1, "\u5b50"

    const-string v2, "\u4e11"

    const-string v3, "\u5bc5"

    const-string v4, "\u536f"

    const-string v5, "\u8fb0"

    const-string v6, "\u5df3"

    const-string v7, "\u5348"

    const-string v8, "\u672a"

    const-string v9, "\u7533"

    const-string v10, "\u9149"

    const-string v11, "\u620c"

    const-string v12, "\u4ea5"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "diZhi":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p0, -0x4

    rem-int/lit8 v3, v3, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p0, -0x4

    rem-int/lit8 v3, v3, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5e74"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
