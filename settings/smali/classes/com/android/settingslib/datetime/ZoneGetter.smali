.class public Lcom/android/settingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 71
    invoke-static {p0}, Lcom/android/settingslib/datetime/ZoneGetter;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "content"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Landroid/text/style/TtsSpan;

    .line 246
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 247
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 249
    return-void
.end method

.method private static createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/util/Map;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "gmtOffsetText"    # Ljava/lang/CharSequence;
    .param p2, "displayName"    # Ljava/lang/CharSequence;
    .param p3, "offsetMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "name"

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "display_label"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "gmt"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "offset_label"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object v0
.end method

.method private static formatDigits(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # I
    .param p1, "minDigits"    # I
    .param p2, "localizedDigits"    # Ljava/lang/String;

    .line 253
    div-int/lit8 v0, p0, 0xa

    .line 254
    .local v0, "tens":I
    rem-int/lit8 v1, p0, 0xa

    .line 255
    .local v1, "units":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0xa

    if-ge p0, v3, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 257
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 26
    .param p0, "tzFormatter"    # Landroid/icu/text/TimeZoneFormat;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "now"    # Ljava/util/Date;

    .line 276
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 278
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "gmtPattern":Ljava/lang/String;
    const-string v2, "{0}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 281
    .local v2, "placeholderIndex":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 283
    const-string v4, "GMT"

    .line 284
    .local v4, "gmtPatternPrefix":Ljava/lang/String;
    const-string v5, ""

    .local v5, "gmtPatternSuffix":Ljava/lang/String;
    goto :goto_0

    .line 286
    .end local v4
    .end local v5
    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 287
    .restart local v4
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 290
    .restart local v5
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 291
    new-instance v6, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v6, v4}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v6}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v6

    .line 291
    invoke-static {v0, v4, v6}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 295
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object/from16 v8, p2

    invoke-virtual {v8, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 296
    .local v6, "offsetMillis":I
    if-gez v6, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v3

    .line 298
    .local v9, "negative":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 299
    neg-int v6, v6

    .line 300
    sget-object v10, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .local v10, "patternType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    goto :goto_2

    .line 302
    .end local v10
    :cond_3
    sget-object v10, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 304
    .restart local v10
    :goto_2
    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v12

    .line 305
    .local v12, "gmtOffsetPattern":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v13

    .line 307
    .local v13, "localizedDigits":Ljava/lang/String;
    int-to-long v14, v6

    const-wide/32 v16, 0x36ee80

    div-long v14, v14, v16

    long-to-int v14, v14

    .line 308
    .local v14, "offsetHours":I
    move-object/from16 v19, v4

    int-to-long v3, v6

    .end local v4
    .local v19, "gmtPatternPrefix":Ljava/lang/String;
    const-wide/32 v15, 0xea60

    div-long/2addr v3, v15

    long-to-int v3, v3

    .line 309
    .local v3, "offsetMinutes":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    .line 311
    .local v4, "offsetMinutesRemaining":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v15, v7, :cond_a

    .line 312
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 313
    .local v7, "c":C
    move-object/from16 v20, v1

    const/16 v1, 0x2b

    .end local v1
    .local v20, "gmtPattern":Ljava/lang/String;
    if-eq v7, v1, :cond_9

    const/16 v1, 0x2d

    if-eq v7, v1, :cond_9

    const/16 v1, 0x2212

    if-ne v7, v1, :cond_4

    .line 314
    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v25, v9

    goto/16 :goto_7

    .line 316
    :cond_4
    const/16 v1, 0x48

    if-eq v7, v1, :cond_6

    const/16 v1, 0x6d

    if-ne v7, v1, :cond_5

    goto :goto_4

    .line 336
    :cond_5
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 311
    .end local v7
    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v25, v9

    goto :goto_8

    .line 318
    .restart local v7
    :cond_6
    :goto_4
    add-int/lit8 v1, v15, 0x1

    move/from16 v21, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2
    .local v21, "placeholderIndex":I
    if-ge v1, v2, :cond_7

    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_7

    .line 319
    const/4 v1, 0x2

    .line 320
    .local v1, "numDigits":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 322
    .end local v1
    :cond_7
    const/4 v1, 0x1

    .line 326
    .restart local v1
    :goto_5
    const/16 v2, 0x48

    if-ne v7, v2, :cond_8

    .line 327
    move v2, v14

    .line 328
    .local v2, "number":I
    const-string v16, "hour"

    .local v16, "unit":Ljava/lang/String;
    goto :goto_6

    .line 330
    .end local v2
    .end local v16
    :cond_8
    move v2, v4

    .line 331
    .restart local v2
    const-string v16, "minute"

    .restart local v16
    :goto_6
    move-object/from16 v22, v16

    .line 333
    .end local v16
    .local v22, "unit":Ljava/lang/String;
    move/from16 v23, v3

    invoke-static {v2, v1, v13}, Lcom/android/settingslib/datetime/ZoneGetter;->formatDigits(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3
    .local v23, "offsetMinutes":I
    move/from16 v24, v1

    new-instance v1, Landroid/text/style/TtsSpan$MeasureBuilder;

    .end local v1
    .local v24, "numDigits":I
    invoke-direct {v1}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    move/from16 v25, v9

    int-to-long v8, v2

    .line 334
    .end local v9
    .local v25, "negative":Z
    invoke-virtual {v1, v8, v9}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v1

    move-object/from16 v8, v22

    invoke-virtual {v1, v8}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v1

    .end local v22
    .local v8, "unit":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 333
    invoke-static {v0, v3, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 335
    .end local v2
    .end local v8
    .end local v24
    goto :goto_8

    .line 314
    .end local v21
    .end local v23
    .end local v25
    .local v2, "placeholderIndex":I
    .restart local v3
    .restart local v9
    :cond_9
    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v25, v9

    .end local v2
    .end local v3
    .end local v9
    .restart local v21
    .restart local v23
    .restart local v25
    :goto_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "sign":Ljava/lang/String;
    new-instance v2, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v2, v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 316
    .end local v1
    nop

    .line 311
    .end local v7
    :goto_8
    const/4 v1, 0x1

    add-int/2addr v15, v1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v9, v25

    move-object/from16 v8, p2

    goto/16 :goto_3

    .line 340
    .end local v15
    .end local v20
    .end local v21
    .end local v23
    .end local v25
    .local v1, "gmtPattern":Ljava/lang/String;
    .restart local v2
    .restart local v3
    .restart local v9
    :cond_a
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v25, v9

    .end local v1
    .end local v2
    .end local v3
    .end local v9
    .restart local v20
    .restart local v21
    .restart local v23
    .restart local v25
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 341
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, v5}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 341
    invoke-static {v0, v5, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 345
    :cond_b
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 348
    .local v1, "gmtText":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v2

    .line 349
    .local v2, "bidiFormatter":Landroid/support/v4/text/BidiFormatter;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_c

    move/from16 v18, v7

    goto :goto_9

    :cond_c
    const/16 v18, 0x0

    :goto_9
    move/from16 v3, v18

    .line 350
    .local v3, "isRtl":Z
    nop

    .line 351
    if-eqz v3, :cond_d

    sget-object v7, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_a

    :cond_d
    sget-object v7, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 350
    :goto_a
    invoke-virtual {v2, v1, v7}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 352
    return-object v1
.end method

.method private static getTimeZoneDisplayName(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "data"    # Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    .param p1, "timeZoneNames"    # Landroid/icu/text/TimeZoneNames;
    .param p2, "useExemplarLocationForLocalNames"    # Z
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "olsonId"    # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 207
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    invoke-interface {v1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 208
    .local v1, "isLocalZoneId":Z
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 211
    .local v2, "preferLongName":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 212
    invoke-static {p1, p3, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .local v3, "displayName":Ljava/lang/String;
    goto :goto_2

    .line 219
    .end local v3
    :cond_1
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "canonicalZoneId":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 221
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 223
    :cond_2
    invoke-virtual {p1, v3}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "displayName":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 230
    .end local v3
    :cond_3
    move-object v3, v4

    goto :goto_2

    .line 226
    .restart local v3
    :cond_4
    :goto_1
    invoke-static {p1, p3, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .end local v4
    .local v3, "displayName":Ljava/lang/String;
    :goto_2
    return-object v3
.end method

.method public static getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 96
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    .line 97
    .local v1, "tzFormatter":Landroid/icu/text/TimeZoneFormat;
    invoke-static {v1, v0, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 98
    .local v2, "gmtText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    .line 99
    .local v3, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {v3, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "zoneNameString":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 101
    return-object v2

    .line 105
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    const-string v7, " "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method

.method private static getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # Landroid/icu/text/TimeZoneNames;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .line 239
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 240
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 241
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getZonesList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 110
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 111
    .local v1, "now":Ljava/util/Date;
    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    .line 112
    .local v2, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    new-instance v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;

    invoke-direct {v3, p0}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;-><init>(Landroid/content/Context;)V

    .line 115
    .local v3, "data":Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    nop

    .line 116
    invoke-static {v3, v2}, Lcom/android/settingslib/datetime/ZoneGetter;->shouldUseExemplarLocationForLocalNames(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;)Z

    move-result v4

    .line 119
    .local v4, "useExemplarLocationForLocalNames":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v5, "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v6, v7, :cond_1

    .line 121
    iget-object v7, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aget-object v7, v7, v6

    .line 122
    .local v7, "tz":Ljava/util/TimeZone;
    iget-object v8, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    aget-object v8, v8, v6

    .line 124
    .local v8, "gmtOffsetText":Ljava/lang/CharSequence;
    iget-object v9, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-static {v3, v2, v4, v7, v9}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneDisplayName(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 126
    .local v9, "displayName":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    move-object v9, v8

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    .line 131
    .local v10, "offsetMillis":I
    nop

    .line 132
    invoke-static {v7, v8, v9, v10}, Lcom/android/settingslib/datetime/ZoneGetter;->createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/util/Map;

    move-result-object v11

    .line 133
    .local v11, "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    .end local v6
    :cond_1
    return-object v5
.end method

.method private static readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$xml;->timezones:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .local v1, "xrp":Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 153
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 154
    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 157
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6

    .line 158
    :goto_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 159
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 160
    nop

    .line 173
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 160
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object v0

    .line 162
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_2

    .line 164
    :cond_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "timezone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "olsonId":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v3
    :cond_4
    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_5

    .line 169
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_3

    .line 171
    :cond_5
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 173
    :cond_6
    if-eqz v1, :cond_9

    :try_start_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v3

    goto :goto_4

    .line 152
    :catch_0
    move-exception v2

    :try_start_5
    throw v2

    .line 173
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_1
    move-exception v4

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    :goto_5
    throw v3

    .line 175
    .end local v1
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v1

    .line 176
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "ZoneGetter"

    const-string v3, "Unable to read timezones.xml file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1
    goto :goto_7

    .line 173
    :catch_3
    move-exception v1

    .line 174
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "ZoneGetter"

    const-string v3, "Ill-formatted timezones.xml file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v1
    :cond_9
    :goto_6
    nop

    .line 178
    :goto_7
    return-object v0
.end method

.method private static shouldUseExemplarLocationForLocalNames(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;)Z
    .locals 8
    .param p0, "data"    # Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    .param p1, "timeZoneNames"    # Landroid/icu/text/TimeZoneNames;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v0, "localZoneNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 185
    .local v1, "now":Ljava/util/Date;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v3, v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 187
    .local v4, "olsonId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    iget-object v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aget-object v5, v5, v3

    .line 189
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-static {p1, v5, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "displayName":Ljava/lang/CharSequence;
    if-nez v6, :cond_0

    .line 191
    iget-object v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    aget-object v6, v7, v3

    .line 193
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 194
    .local v7, "nameIsUnique":Z
    if-nez v7, :cond_1

    .line 195
    const/4 v2, 0x1

    return v2

    .line 185
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    .end local v3
    :cond_2
    return v2
.end method
