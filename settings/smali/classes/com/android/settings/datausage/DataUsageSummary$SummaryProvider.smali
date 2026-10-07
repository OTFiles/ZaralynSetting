.class Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
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

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    .line 309
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 310
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 311
    return-void
.end method

.method private formatFallbackData()Ljava/lang/CharSequence;
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 361
    .local v0, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 363
    :cond_0
    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 366
    :cond_1
    iget-wide v1, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private formatUsedData()Ljava/lang/CharSequence;
    .locals 7

    .line 340
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const-string v1, "telephony_subscription_service"

    .line 341
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 342
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 343
    .local v1, "defaultSubId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 346
    :cond_0
    nop

    .line 347
    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 348
    .local v2, "dfltPlan":Landroid/telephony/SubscriptionPlan;
    if-nez v2, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 351
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 354
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v3

    .line 355
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v5

    .line 354
    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public setListening(Z)V
    .locals 7
    .param p1, "listening"    # Z

    .line 315
    if-eqz p1, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1204aa

    new-array v2, v2, [Ljava/lang/Object;

    .line 319
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatUsedData()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v1

    .line 318
    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 323
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 325
    .local v0, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    if-nez v0, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1204ba

    .line 329
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 330
    .local v3, "wifiFormat":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v5, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 331
    invoke-static {v4, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    .line 332
    .local v4, "sizeText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    .line 333
    invoke-static {v3, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 332
    invoke-virtual {v5, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 337
    .end local v0
    .end local v3
    .end local v4
    :cond_2
    :goto_0
    return-void
.end method
