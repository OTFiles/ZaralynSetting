.class public Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeAxis"
.end annotation


# static fields
.field private static final FIRST_DAY_OF_WEEK:I


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->FIRST_DAY_OF_WEEK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 398
    .local v0, "currentTime":J
    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->setBounds(JJ)Z

    .line 399
    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .line 440
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 441
    return-wide p3
.end method

.method public convertToPoint(J)F
    .locals 5
    .param p1, "value"    # J

    .line 429
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 5
    .param p1, "point"    # F

    .line 434
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 8

    .line 446
    const/16 v0, 0x20

    new-array v0, v0, [F

    .line 447
    .local v0, "ticks":[F
    const/4 v1, 0x0

    .line 450
    .local v1, "i":I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 451
    .local v2, "time":Landroid/text/format/Time;
    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 452
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    iget v4, v2, Landroid/text/format/Time;->weekDay:I

    sget v5, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->FIRST_DAY_OF_WEEK:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 453
    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->second:I

    iput v3, v2, Landroid/text/format/Time;->minute:I

    iput v3, v2, Landroid/text/format/Time;->hour:I

    .line 455
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 456
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 457
    .local v4, "timeMillis":J
    :goto_0
    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 458
    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 459
    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->convertToPoint(J)F

    move-result v7

    aput v7, v0, v1

    .line 461
    .end local v1
    move v1, v6

    .end local v6
    .restart local v1
    :cond_0
    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v6, v6, -0x7

    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 462
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 463
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    goto :goto_0

    .line 466
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    return-object v3
.end method

.method public hashCode()I
    .locals 3

    .line 403
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 2
    .param p1, "min"    # J
    .param p3, "max"    # J

    .line 408
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    .line 410
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .line 419
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 420
    iput p1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    .line 421
    const/4 v0, 0x1

    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 1
    .param p1, "value"    # J

    .line 472
    const/4 v0, 0x0

    return v0
.end method
