.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "DataUsageSummaryPreference.java"


# static fields
.field private static final MILLIS_IN_A_DAY:J

.field static final SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final WARNING_AGE:J


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mChartEnabled:Z

.field private mCycleEndTimeMs:J

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mEndLabel:Ljava/lang/CharSequence;

.field private mHasMobileData:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field private mLimitInfoText:Ljava/lang/String;

.field private mNumPlans:I

.field private mProgress:F

.field private mSnapshotTimeMs:J

.field private mStartLabel:Ljava/lang/CharSequence;

.field private mUsagePeriod:Ljava/lang/String;

.field private mWifiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    .line 55
    const-string v0, "sans-serif-medium"

    .line 56
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    .line 97
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLayoutResource(I)V

    .line 98
    return-void
.end method

.method private calculateTruncatedUpdateAge()J
    .locals 7

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    sub-long/2addr v0, v2

    .line 317
    .local v0, "updateAgeMillis":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-ltz v2, :cond_0

    .line 318
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    div-long v5, v0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long/2addr v5, v2

    return-wide v5

    .line 319
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    .line 320
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    div-long v5, v0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long/2addr v5, v2

    return-wide v5

    .line 321
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-ltz v2, :cond_2

    .line 322
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    div-long v5, v0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long/2addr v5, v2

    return-wide v5

    .line 324
    :cond_2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->launchWifiDataUsage(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method private static launchWifiDataUsage(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 204
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "network_template"

    .line 205
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const-class v2, Lcom/android/settings/datausage/DataUsageList;

    .line 208
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 209
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 210
    .local v1, "launcher":Lcom/android/settings/core/SubSettingLauncher;
    const v2, 0x7f12108d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    .line 211
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 212
    return-void
.end method

.method private setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "carrierInfo"    # Landroid/widget/TextView;
    .param p2, "colorId"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 332
    return-void
.end method

.method private updateCarrierInfo(Landroid/widget/TextView;)V
    .locals 8
    .param p1, "carrierInfo"    # Landroid/widget/TextView;

    .line 272
    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->calculateTruncatedUpdateAge()J

    move-result-wide v4

    .line 277
    .local v4, "updateAgeMillis":J
    const/4 v1, 0x0

    .line 278
    .local v1, "updateTime":Ljava/lang/CharSequence;
    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 280
    const v2, 0x7f120370

    .local v2, "textResourceId":I
    :goto_0
    goto :goto_2

    .line 282
    .end local v2
    :cond_0
    const v2, 0x7f12093b

    goto :goto_0

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 286
    const v2, 0x7f120371

    .restart local v2
    goto :goto_1

    .line 288
    .end local v2
    :cond_2
    const v2, 0x7f12093c

    .line 290
    .restart local v2
    :goto_1
    nop

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    long-to-double v6, v4

    .line 290
    invoke-static {v3, v6, v7, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 293
    :goto_2
    nop

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    aput-object v7, v6, v0

    const/4 v0, 0x1

    aput-object v1, v6, v0

    .line 293
    invoke-static {v3, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    sget-wide v6, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    .line 299
    const v0, 0x1010038

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_3

    .line 302
    :cond_3
    const v0, 0x1010543

    sget-object v3, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    .line 304
    .end local v1
    .end local v2
    .end local v4
    :goto_3
    goto :goto_4

    .line 305
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :goto_4
    return-void
.end method

.method private updateCycleTimeText(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 256
    const v0, 0x7f0a0110

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 258
    .local v0, "cycleTime":Landroid/widget/TextView;
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 259
    .local v1, "millisLeft":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12024b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    :cond_0
    sget-wide v3, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    div-long v3, v1, v3

    long-to-int v3, v3

    .line 263
    .local v3, "daysLeft":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f12024a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10000f

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    .line 265
    invoke-virtual {v5, v6, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 263
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .end local v3
    :goto_1
    return-void
.end method

.method private updateDataUsageLabels(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 19
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    move-object/from16 v0, p0

    .line 215
    move-object/from16 v1, p1

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 217
    .local v2, "usageNumberField":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    const/16 v6, 0xa

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    .line 219
    .local v3, "usedResult":Landroid/text/format/Formatter$BytesResult;
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    .local v4, "usageNumberText":Landroid/text/SpannableString;
    nop

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070228

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 222
    .local v5, "textSize":I
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x21

    invoke-virtual {v4, v6, v8, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1204bd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 226
    .local v6, "template":Ljava/lang/CharSequence;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v4, v7, v8

    iget-object v9, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 227
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 228
    .local v7, "usageText":Ljava/lang/CharSequence;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    nop

    .line 231
    const v9, 0x7f0a04bc

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/datausage/MeasurableLinearLayout;

    .line 233
    .local v9, "layout":Lcom/android/settings/datausage/MeasurableLinearLayout;
    iget-boolean v11, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    if-eqz v11, :cond_1

    iget v11, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-ltz v11, :cond_1

    iget-wide v11, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    .line 234
    const v11, 0x7f0a011b

    invoke-virtual {v1, v11}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 235
    .local v11, "usageRemainingField":Landroid/widget/TextView;
    move-object v15, v9

    iget-wide v8, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    .end local v9
    .local v15, "layout":Lcom/android/settings/datausage/MeasurableLinearLayout;
    move-object/from16 v16, v11

    iget-wide v10, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    .end local v11
    .local v16, "usageRemainingField":Landroid/widget/TextView;
    sub-long/2addr v8, v10

    .line 236
    .local v8, "dataRemaining":J
    cmp-long v10, v8, v13

    if-ltz v10, :cond_0

    .line 237
    nop

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f120458

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/CharSequence;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8, v9}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 238
    invoke-static {v10, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 237
    move-object/from16 v11, v16

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .end local v16
    .restart local v11
    nop

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x1010435

    invoke-static {v10, v12}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v10

    .line 240
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_0

    .line 243
    .end local v11
    .restart local v16
    :cond_0
    move-object/from16 v11, v16

    .line 244
    .end local v16
    .restart local v11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f120457

    invoke-virtual {v10, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/CharSequence;

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    neg-long v3, v8

    .end local v3
    .end local v4
    .local v17, "usedResult":Landroid/text/format/Formatter$BytesResult;
    .local v18, "usageNumberText":Landroid/text/SpannableString;
    invoke-static {v13, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v12, v4

    .line 244
    invoke-static {v10, v12}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 243
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    nop

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010543

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    .line 246
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :goto_0
    move-object v3, v15

    invoke-virtual {v3, v2, v11}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    .line 250
    .end local v8
    .end local v11
    .end local v15
    .local v3, "layout":Lcom/android/settings/datausage/MeasurableLinearLayout;
    goto :goto_1

    .line 251
    .end local v17
    .end local v18
    .local v3, "usedResult":Landroid/text/format/Formatter$BytesResult;
    .restart local v4
    .restart local v9
    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v3, v9

    .end local v4
    .end local v9
    .local v3, "layout":Lcom/android/settings/datausage/MeasurableLinearLayout;
    .restart local v17
    .restart local v18
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    .line 253
    :goto_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 150
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 152
    const v0, 0x7f0a0135

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 153
    .local v0, "bar":Landroid/widget/ProgressBar;
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const v2, 0x7f0a0221

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateDataUsageLabels(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 166
    const v1, 0x7f0a04be

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    .local v1, "usageTitle":Landroid/widget/TextView;
    const v2, 0x7f0a00c9

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, "carrierInfo":Landroid/widget/TextView;
    const v5, 0x7f0a022e

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 169
    .local v5, "launchButton":Landroid/widget/Button;
    const v6, 0x7f0a0116

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 171
    .local v6, "limitInfo":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    if-eqz v7, :cond_2

    .line 172
    const v7, 0x7f1204bb

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    const v7, 0x7f0a0110

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 175
    .local v7, "cycleTime":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    new-instance v3, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$zBjNn20lFyV2SqYMtfKeIRkAo7w;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$zBjNn20lFyV2SqYMtfKeIRkAo7w;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v3, 0x7f120797

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(I)V

    .line 183
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    .end local v7
    goto :goto_4

    .line 185
    :cond_2
    iget v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 187
    invoke-direct {p0, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCarrierInfo(Landroid/widget/TextView;)V

    .line 188
    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v7, :cond_4

    .line 189
    new-instance v7, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$1NKWVGupHVFnsudApVgFBRMGUJg;

    invoke-direct {v7, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$1NKWVGupHVFnsudApVgFBRMGUJg;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 194
    :cond_4
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    :goto_2
    nop

    .line 197
    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 196
    :cond_5
    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_4
    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    .line 124
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 127
    :cond_0
    return-void
.end method

.method public setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/CharSequence;
    .param p2, "end"    # Ljava/lang/CharSequence;

    .line 130
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    .line 131
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 133
    return-void
.end method

.method public setLimitInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 105
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 108
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 110
    return-void
.end method

.method public setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "cycleEnd"    # J
    .param p3, "snapshotTime"    # J
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "numPlans"    # I
    .param p7, "launchIntent"    # Landroid/content/Intent;

    .line 114
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    .line 115
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    .line 116
    iput-object p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    .line 117
    iput p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    .line 118
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 120
    return-void
.end method

.method setUsageNumbers(JJZ)V
    .locals 0
    .param p1, "used"    # J
    .param p3, "dataPlanSize"    # J
    .param p5, "hasMobileData"    # Z

    .line 136
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    .line 137
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    .line 138
    iput-boolean p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 140
    return-void
.end method

.method setWifiMode(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isWifiMode"    # Z
    .param p2, "usagePeriod"    # Ljava/lang/String;

    .line 143
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    .line 144
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 146
    return-void
.end method
