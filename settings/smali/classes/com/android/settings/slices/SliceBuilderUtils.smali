.class public Lcom/android/settings/slices/SliceBuilderUtils;
.super Ljava/lang/Object;
.source "SliceBuilderUtils.java"


# direct methods
.method private static buildIntentSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .param p2, "controller"    # Lcom/android/settings/core/BasePreferenceController;

    .line 259
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 260
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    .line 261
    .local v1, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 262
    .local v2, "subtitleText":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    .line 263
    .local v3, "color":I
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object v4

    .line 265
    .local v4, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v7, -0x1

    invoke-direct {v5, p0, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 266
    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;

    invoke-direct {v6, p1, v2, v0, v1}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;-><init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;)V

    .line 267
    invoke-virtual {v5, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    .line 272
    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    .line 273
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v5

    .line 265
    return-object v5
.end method

.method public static buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;

    .line 80
    const-string v0, "SliceBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating slice for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 82
    .local v0, "controller":Lcom/android/settings/core/BasePreferenceController;
    nop

    .line 83
    const/16 v1, 0x356

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 86
    .local v1, "sliceNamePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 87
    const/16 v4, 0x55b

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 89
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v2, 0x0

    return-object v2

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 95
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildUnavailableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slice type passed was invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :pswitch_0    # 0x2
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliderSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2

    .line 102
    :pswitch_1    # 0x1
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildToggleSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2

    .line 100
    :pswitch_2    # 0x0
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildIntentSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private static buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;
    .locals 5
    .param p0, "data"    # Lcom/android/settings/slices/SliceData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/slices/SliceData;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "keywordString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 347
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "keywordArray":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;

    .line 349
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 350
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 351
    .local v3, "strippedKeywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    .end local v2
    .end local v3
    :cond_1
    return-object v0
.end method

.method private static buildSliderSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .param p2, "controller"    # Lcom/android/settings/core/BasePreferenceController;

    move-object/from16 v0, p0

    .line 278
    move-object/from16 v1, p2

    move-object v8, v1

    check-cast v8, Lcom/android/settings/core/SliderPreferenceController;

    .line 279
    .local v8, "sliderController":Lcom/android/settings/core/SliderPreferenceController;
    invoke-static/range {p0 .. p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSliderAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 280
    .local v9, "actionIntent":Landroid/app/PendingIntent;
    invoke-static/range {p0 .. p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 281
    .local v10, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v11

    .line 282
    .local v11, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    move-object/from16 v12, p1

    invoke-static {v0, v1, v12}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 283
    .local v13, "subtitleText":Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v14

    .line 284
    .local v14, "color":I
    new-instance v5, Landroidx/slice/builders/SliceAction;

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v10, v11, v2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 286
    .local v5, "primaryAction":Landroidx/slice/builders/SliceAction;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object v15

    .line 288
    .local v15, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v6, -0x1

    invoke-direct {v2, v0, v3, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 289
    invoke-virtual {v2, v14}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    new-instance v6, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;

    move-object v2, v6

    move-object v3, v12

    move-object v4, v13

    move-object v0, v6

    move-object v6, v8

    move-object v1, v7

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;-><init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Lcom/android/settings/core/SliderPreferenceController;Landroid/app/PendingIntent;)V

    .line 290
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 297
    invoke-virtual {v0, v15}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    .line 288
    return-object v0
.end method

.method private static buildToggleSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .param p2, "controller"    # Lcom/android/settings/core/BasePreferenceController;

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 235
    move-object/from16 v8, p2

    invoke-static/range {p0 .. p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 236
    .local v9, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v10

    .line 237
    .local v10, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    invoke-static {v0, v8, v7}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 238
    .local v11, "subtitleText":Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v12

    .line 239
    .local v12, "color":I
    move-object v13, v8

    check-cast v13, Lcom/android/settings/core/TogglePreferenceController;

    .line 241
    .local v13, "toggleController":Lcom/android/settings/core/TogglePreferenceController;
    nop

    .line 242
    invoke-virtual {v13}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v1

    .line 241
    invoke-static {v0, v7, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->getToggleAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v14

    .line 243
    .local v14, "sliceAction":Landroidx/slice/builders/SliceAction;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object v15

    .line 245
    .local v15, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 246
    invoke-virtual {v1, v12}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v6

    new-instance v5, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;

    move-object v1, v5

    move-object v2, v7

    move-object v3, v11

    move-object v4, v9

    move-object v0, v5

    move-object v5, v10

    move-object v7, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;-><init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;)V

    .line 247
    invoke-virtual {v7, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, v15}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method private static buildUnavailableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/android/settings/slices/SliceData;

    .line 358
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "title":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object v1

    .line 360
    .local v1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    .line 361
    .local v2, "color":I
    const v3, 0x7f120549

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 362
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v4

    invoke-static {p0, v4}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v4

    .line 363
    .local v4, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    new-instance v5, Landroidx/slice/builders/SliceAction;

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 366
    .local v5, "primaryAction":Landroidx/slice/builders/SliceAction;
    new-instance v6, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v7

    const-wide/16 v8, -0x1

    invoke-direct {v6, p0, v7, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 367
    invoke-virtual {v6, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;

    invoke-direct {v7, v0, v4, v3, v5}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;-><init>(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;)V

    .line 368
    invoke-virtual {v6, v7}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v6

    .line 373
    invoke-virtual {v6, v1}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object v6

    .line 374
    invoke-virtual {v6}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v6

    .line 366
    return-object v6
.end method

.method public static getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/android/settings/slices/SliceData;

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string v1, "com.android.settings.slice.extra.key"

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "com.android.settings.slice.extra.platform"

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->isPlatformDefined()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 225
    .local v0, "contentUri":Landroid/net/Uri;
    nop

    .line 226
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    return-object v1
.end method

.method public static getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;

    .line 180
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getPathData(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "split":[Ljava/lang/String;
    array-length v3, v1

    if-eq v3, v2, :cond_0

    .line 145
    const/4 v2, 0x0

    return-object v2

    .line 148
    :cond_0
    const-string v2, "intent"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 151
    .local v2, "isIntent":Z
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;

    .line 160
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {p0, v0, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controllerClassName"    # Ljava/lang/String;
    .param p2, "controllerKey"    # Ljava/lang/String;

    .line 304
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 305
    :catch_0
    move-exception v0

    .line 309
    invoke-static {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    return-object v0
.end method

.method public static getSliceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controllerClassName"    # Ljava/lang/String;
    .param p2, "controllerKey"    # Ljava/lang/String;

    .line 117
    invoke-static {p0, p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 119
    .local v0, "controller":Lcom/android/settings/core/BasePreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getSliceType()I

    move-result v1

    return v1
.end method

.method private static getSliderAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;

    .line 320
    const-string v0, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/settingslib/core/AbstractPreferenceController;
    .param p2, "sliceData"    # Lcom/android/settings/slices/SliceData;

    .line 189
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    .local v0, "summaryText":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    return-object v0

    .line 195
    :cond_0
    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 198
    invoke-static {p0, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    return-object v0

    .line 203
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {p0, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    return-object v0

    .line 208
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method private static getToggleAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Z)Landroidx/slice/builders/SliceAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .param p2, "isChecked"    # Z

    .line 314
    const-string v0, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 316
    .local v0, "actionIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroidx/slice/builders/SliceAction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    return-object v1
.end method

.method public static getUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isPlatformSlice"    # Z

    .line 212
    if-eqz p1, :cond_0

    .line 213
    const-string v0, "android.settings.slices"

    goto :goto_0

    .line 214
    :cond_0
    const-string v0, "com.android.settings.slices"

    .line 215
    .local v0, "authority":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 216
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 215
    return-object v1
.end method

.method private static isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 324
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    const v1, 0x7f120e34

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    .local v1, "placeHolder":Ljava/lang/CharSequence;
    const v2, 0x7f120e37

    .line 330
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 332
    .local v2, "doublePlaceHolder":Ljava/lang/CharSequence;
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    nop

    .line 332
    :cond_1
    return v0

    .line 325
    .end local v1
    .end local v2
    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic lambda$buildIntentSlice$1(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 3
    .param p0, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .param p1, "subtitleText"    # Ljava/lang/CharSequence;
    .param p2, "contentIntent"    # Landroid/app/PendingIntent;
    .param p3, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p4, "rowBuilder"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 267
    nop

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/SliceAction;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p3, v2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 267
    return-void
.end method

.method static synthetic lambda$buildSliceKeywords$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    return-object v0
.end method

.method static synthetic lambda$buildSliderSlice$2(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Lcom/android/settings/core/SliderPreferenceController;Landroid/app/PendingIntent;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 2
    .param p0, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .param p1, "subtitleText"    # Ljava/lang/CharSequence;
    .param p2, "primaryAction"    # Landroidx/slice/builders/SliceAction;
    .param p3, "sliderController"    # Lcom/android/settings/core/SliderPreferenceController;
    .param p4, "actionIntent"    # Landroid/app/PendingIntent;
    .param p5, "builder"    # Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 290
    nop

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v0

    .line 294
    invoke-virtual {p3}, Lcom/android/settings/core/SliderPreferenceController;->getMaxSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v0

    .line 295
    invoke-virtual {p3}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p4}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 290
    return-void
.end method

.method static synthetic lambda$buildToggleSlice$0(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 3
    .param p0, "sliceData"    # Lcom/android/settings/slices/SliceData;
    .param p1, "subtitleText"    # Ljava/lang/CharSequence;
    .param p2, "contentIntent"    # Landroid/app/PendingIntent;
    .param p3, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p4, "sliceAction"    # Landroidx/slice/builders/SliceAction;
    .param p5, "rowBuilder"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 247
    nop

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/SliceAction;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p3, v2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 247
    return-void
.end method

.method static synthetic lambda$buildUnavailableSlice$4(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "summary"    # Ljava/lang/CharSequence;
    .param p3, "primaryAction"    # Landroidx/slice/builders/SliceAction;
    .param p4, "builder"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 368
    nop

    .line 369
    invoke-virtual {p4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 372
    invoke-virtual {v0, p3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 368
    return-void
.end method
