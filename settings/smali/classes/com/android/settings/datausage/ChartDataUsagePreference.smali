.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsagePreference.java"


# instance fields
.field private mEnd:J

.field private final mLimitColor:I

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mStart:J

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    .line 54
    const v0, 0x1010543

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 55
    const v0, 0x1010038

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 56
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    .line 57
    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings/graph/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 10
    .param p1, "chart"    # Lcom/android/settings/graph/UsageView;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "top"    # I

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 132
    .local v0, "labels":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 133
    .local v1, "middleVisibility":I
    const/4 v2, 0x0

    .line 134
    .local v2, "topVisibility":I
    if-nez p2, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 139
    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 140
    const/4 v3, 0x2

    iget-wide v7, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const v4, 0x7f1204ac

    iget v9, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    invoke-direct {p0, v7, v8, v4, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v3

    .line 143
    :cond_1
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 144
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v5, 0x80000

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/android/settings/graph/UsageView;->setDividerLoc(I)V

    .line 145
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v3, v5

    long-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    .line 146
    .local v3, "weight":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 147
    .local v4, "above":F
    invoke-virtual {p1, v4, v3}, Lcom/android/settings/graph/UsageView;->setSideLabelWeights(FF)V

    .line 148
    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 149
    const/4 v5, 0x1

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const v8, 0x7f1204ad

    iget v9, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v0, v5

    .line 153
    .end local v3
    .end local v4
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p1, v1, v2}, Lcom/android/settings/graph/UsageView;->setDividerColors(II)V

    .line 155
    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "bytes"    # J
    .param p3, "str"    # I
    .param p4, "mLimitColor"    # I

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 160
    .local v0, "result":Landroid/text/format/Formatter$BytesResult;
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    .local v1, "label":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private toInt(J)I
    .locals 2
    .param p1, "l"    # J

    .line 127
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method calcPoints(Lcom/android/settings/graph/UsageView;)V
    .locals 17
    .param p1, "chart"    # Lcom/android/settings/graph/UsageView;

    move-object/from16 v0, p0

    .line 95
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 96
    .local v1, "points":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    .line 98
    .local v2, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v3, 0x0

    .line 100
    .local v3, "totalData":J
    iget-object v5, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v6, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v5, v6, v7}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v5

    .line 101
    .local v5, "start":I
    iget-object v6, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v7, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v6, v7, v8}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v6

    .line 102
    .local v6, "end":I
    if-gez v5, :cond_0

    return-void

    .line 104
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    move-wide v7, v3

    move-object v3, v2

    move v2, v5

    .local v2, "i":I
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v7, "totalData":J
    :goto_0
    if-gt v2, v6, :cond_2

    .line 106
    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v9, v2, v3}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 108
    iget-wide v9, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 109
    .local v9, "startTime":J
    iget-wide v11, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v11, v9

    .line 112
    .local v11, "endTime":J
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move v15, v5

    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .end local v5
    .local v15, "start":I
    add-long/2addr v13, v4

    add-long/2addr v7, v13

    .line 114
    if-nez v2, :cond_1

    .line 115
    iget-wide v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v4, v9, v4

    invoke-direct {v0, v4, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    :cond_1
    iget-wide v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v4, v9, v4

    const-wide/16 v13, 0x1

    add-long/2addr v4, v13

    invoke-direct {v0, v4, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v4

    const-wide/32 v13, 0x80000

    move/from16 v16, v6

    div-long v5, v7, v13

    .end local v6
    .local v16, "end":I
    long-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    iget-wide v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v4, v11, v4

    invoke-direct {v0, v4, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v4

    div-long v5, v7, v13

    long-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    .end local v9
    .end local v11
    add-int/lit8 v2, v2, 0x1

    move v5, v15

    move/from16 v6, v16

    goto :goto_0

    .line 120
    .end local v2
    .end local v15
    .end local v16
    .restart local v5
    .restart local v6
    :cond_2
    move v15, v5

    move/from16 v16, v6

    .end local v5
    .end local v6
    .restart local v15
    .restart local v16
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 121
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/settings/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    goto :goto_1

    .line 123
    :cond_3
    move-object/from16 v2, p1

    :goto_1
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 13

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v1, 0x0

    .line 80
    .local v1, "totalData":J
    iget-object v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v3, v4, v5}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v3

    .line 81
    .local v3, "start":I
    iget-object v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v4

    .line 83
    .local v4, "end":I
    move-wide v5, v1

    move-object v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v5, "totalData":J
    :goto_0
    if-gt v0, v4, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 87
    iget-wide v7, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v7, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    .line 90
    .local v7, "policyMax":J
    :goto_1
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/32 v11, 0x80000

    div-long/2addr v9, v11

    long-to-int v0, v9

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 62
    const v0, 0x7f0a011e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/graph/UsageView;

    .line 63
    .local v0, "chart":Lcom/android/settings/graph/UsageView;
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    if-nez v1, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v1

    .line 66
    .local v1, "top":I
    invoke-virtual {v0}, Lcom/android/settings/graph/UsageView;->clearPaths()V

    .line 67
    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/graph/UsageView;->configureGraph(II)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/graph/UsageView;)V

    .line 69
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iget-wide v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings/graph/UsageView;Landroid/net/NetworkPolicy;I)V

    .line 75
    return-void
.end method

.method public setColors(II)V
    .locals 0
    .param p1, "seriesColor"    # I
    .param p2, "secondaryColor"    # I

    .line 190
    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    .line 191
    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 193
    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .line 166
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 168
    return-void
.end method

.method public setNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "network"    # Landroid/net/NetworkStatsHistory;

    .line 185
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 187
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 171
    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    .line 172
    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 174
    return-void
.end method
