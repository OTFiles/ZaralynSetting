.class public Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DataUsageSummaryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final KEY:Ljava/lang/String; = "status_header"

.field private static final PETA:J = 0x38d7ea4c68000L

.field private static final RELATIVE_SIZE_LARGE:F = 1.5625f

.field private static final RELATIVE_SIZE_SMALL:F = 0.64f

.field private static final TAG:Ljava/lang/String; = "DataUsageController"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCycleEnd:J

.field private mCycleStart:J

.field private mDataBarSize:J

.field private final mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private final mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

.field private final mDataUsageTemplate:I

.field private mDataplanCount:I

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private final mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private final mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mHasMobileData:Z

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mManageSubscriptionIntent:Landroid/content/Intent;

.field private final mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mSnapshotTime:J

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "dataUsageSummary"    # Lcom/android/settings/datausage/DataUsageSummary;

    .line 100
    const-string v0, "status_header"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    .line 103
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 105
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 106
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    .line 108
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 109
    .local v0, "defaultSubId":I
    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 110
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 111
    .local v1, "policyManager":Landroid/net/NetworkPolicyManager;
    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v2, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 113
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    .line 116
    new-instance v2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 117
    new-instance v2, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct {v2}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    .line 119
    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz v2, :cond_1

    .line 120
    const v2, 0x7f12037f

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    goto :goto_1

    .line 121
    :cond_1
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const v2, 0x7f12108c

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    goto :goto_1

    .line 124
    :cond_2
    const v2, 0x7f120600

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "telephony_subscription_service"

    .line 128
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 129
    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/net/DataUsageController;Lcom/android/settings/datausage/DataUsageInfoController;Landroid/net/NetworkTemplate;Lcom/android/settingslib/NetworkPolicyEditor;IZLandroid/telephony/SubscriptionManager;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/widget/EntityHeaderController;Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 1
    .param p1, "dataUsageController"    # Lcom/android/settingslib/net/DataUsageController;
    .param p2, "dataInfoController"    # Lcom/android/settings/datausage/DataUsageInfoController;
    .param p3, "defaultTemplate"    # Landroid/net/NetworkTemplate;
    .param p4, "policyEditor"    # Lcom/android/settingslib/NetworkPolicyEditor;
    .param p5, "dataUsageTemplate"    # I
    .param p6, "hasMobileData"    # Z
    .param p7, "subscriptionManager"    # Landroid/telephony/SubscriptionManager;
    .param p8, "activity"    # Landroid/app/Activity;
    .param p9, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p10, "entityHeaderController"    # Lcom/android/settings/widget/EntityHeaderController;
    .param p11, "dataUsageSummary"    # Lcom/android/settings/datausage/DataUsageSummary;

    .line 144
    const-string v0, "status_header"

    invoke-direct {p0, p8, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 146
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    .line 147
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 148
    iput-object p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 149
    iput p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 150
    iput-boolean p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    .line 151
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 152
    iput-object p8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    .line 153
    iput-object p9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 154
    iput-object p10, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 155
    iput-object p11, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    .line 156
    return-void
.end method

.method public static getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;
    .locals 7
    .param p0, "subManager"    # Landroid/telephony/SubscriptionManager;
    .param p1, "primaryId"    # I

    .line 291
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 293
    return-object v2

    .line 296
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionPlan;

    .line 299
    .local v1, "plan":Landroid/telephony/SubscriptionPlan;
    nop

    .line 297
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 298
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->saneSize(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 297
    move-object v2, v1

    goto :goto_0

    .line 299
    :cond_1
    nop

    .line 297
    :goto_0
    return-object v2
.end method

.method private refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    .line 254
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 255
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 256
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 257
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 258
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 259
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 261
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 262
    .local v2, "defaultSubId":I
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 263
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz v4, :cond_2

    .line 264
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    .line 265
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v4

    .line 266
    .local v4, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v5, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 267
    .local v5, "primaryPlan":Landroid/telephony/SubscriptionPlan;
    if-eqz v5, :cond_2

    .line 268
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    .line 269
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 270
    iget-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    invoke-static {v6, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 271
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 273
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 274
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 276
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v0

    .line 277
    .local v0, "rule":Landroid/util/RecurrenceRule;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 279
    iget-object v1, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v6

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 281
    :cond_1
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 284
    .end local v0
    .end local v4
    .end local v5
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 285
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->createManageSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    .line 286
    const-string v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " plans, dflt sub-id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", intent "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method private static saneSize(J)Z
    .locals 2
    .param p0, "value"    # J

    .line 303
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static unlimited(J)Z
    .locals 2
    .param p0, "size"    # J

    .line 307
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    .line 183
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 183
    :goto_1
    return v0
.end method

.method public onStart()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 161
    .local v0, "view":Landroid/support/v7/widget/RecyclerView;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    .line 162
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 163
    return-void
.end method

.method setCarrierValues(Ljava/lang/String;JJLandroid/content/Intent;)V
    .locals 0
    .param p1, "carrierName"    # Ljava/lang/String;
    .param p2, "snapshotTime"    # J
    .param p4, "cycleEnd"    # J
    .param p6, "intent"    # Landroid/content/Intent;

    .line 175
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    .line 176
    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 177
    iput-wide p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 178
    iput-object p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    .line 179
    return-void
.end method

.method setPlanValues(IJJ)V
    .locals 0
    .param p1, "dataPlanCount"    # I
    .param p2, "dataPlanSize"    # J
    .param p4, "dataPlanUse"    # J

    .line 167
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    .line 168
    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 169
    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 170
    iput-wide p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 171
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 189
    move-object v8, p1

    check-cast v8, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 192
    .local v8, "summaryPreference":Lcom/android/settings/datausage/DataUsageSummaryPreference;
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v9

    .line 194
    .local v9, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    .line 195
    invoke-virtual {v8, v7, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, v9}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 217
    :cond_0
    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-lez v0, :cond_1

    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v2, v10

    if-lez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120381

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 220
    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 221
    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v6

    .line 218
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v0, v2, v10

    if-lez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120380

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 225
    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v7

    .line 223
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v2, v10

    if-lez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12037e

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 229
    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v7

    .line 227
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {v8, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    .line 234
    :goto_0
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    .line 236
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_4

    .line 237
    invoke-virtual {v8, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {v8, v6}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 241
    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 240
    invoke-virtual {v8, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 242
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setProgress(F)V

    .line 244
    :goto_1
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    .line 246
    return-void

    .line 197
    .end local v9
    :cond_5
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 198
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 197
    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v9

    .line 199
    .restart local v9
    iget-object v0, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v8, v6, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;)V

    .line 200
    invoke-virtual {v8, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    .line 201
    iget-wide v1, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    .line 204
    invoke-virtual {v8, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    .line 205
    iget-wide v1, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    .line 210
    return-void
.end method
