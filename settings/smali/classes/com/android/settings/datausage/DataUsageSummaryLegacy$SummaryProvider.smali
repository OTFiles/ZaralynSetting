.class Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummaryLegacy.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummaryLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    .line 346
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 347
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 348
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 7
    .param p1, "listening"    # Z

    .line 352
    if-eqz p1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 355
    .local v0, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 356
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .local v1, "used":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 357
    .end local v1
    :cond_0
    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 360
    :cond_1
    iget-wide v1, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v1

    .line 362
    .restart local v1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1204aa

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 363
    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {v2, p0, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 365
    .end local v0
    .end local v1
    :cond_2
    return-void
.end method
