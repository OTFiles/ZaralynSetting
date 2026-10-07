.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageList.java"


# instance fields
.field private mApps:Landroid/support/v7/preference/PreferenceGroup;

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mHeader:Landroid/view/View;

.field private mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 92
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 522
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 546
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 570
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;
    .param p1, "x1"    # Lcom/android/settingslib/AppItem;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settingslib/AppItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/widget/LoadingViewController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;
    .param p1, "x1"    # Lcom/android/settingslib/net/ChartData;

    .line 77
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 8
    .param p0, "collapseKey"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p3, "itemCategory"    # I
    .param p5, "largest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .line 452
    .local p1, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    iget v0, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 453
    .local v0, "uid":I
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    .line 454
    .local v1, "item":Lcom/android/settingslib/AppItem;
    if-nez v1, :cond_0

    .line 455
    new-instance v2, Lcom/android/settingslib/AppItem;

    invoke-direct {v2, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object v1, v2

    .line 456
    iput p3, v1, Lcom/android/settingslib/AppItem;->category:I

    .line 457
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget v2, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 461
    iget-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    .line 462
    iget-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 473
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 474
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 476
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    nop

    .line 477
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 479
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 481
    return v3

    .line 484
    :cond_0
    const/4 v4, 0x1

    .line 485
    .local v4, "isReady":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 486
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    and-int/2addr v4, v7

    .line 488
    .end local v6
    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move v3, v7

    nop

    .line 496
    .local v3, "retVal":Z
    :cond_3
    return v3
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/android/settings/datausage/DataUsageList;Landroid/view/View;)V
    .locals 3
    .param p1, "btn"    # Landroid/view/View;

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 158
    const v2, 0x7f120248

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 162
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/settingslib/AppItem;

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "app_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 431
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 433
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/AppDataUsage;

    .line 434
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 435
    const v2, 0x7f120115

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 436
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 439
    return-void
.end method

.method private updateBody()V
    .locals 6

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 263
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v4, 0x0

    .line 264
    invoke-static {v3, v4}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 263
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 269
    const v1, 0x7f060140

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 270
    .local v1, "seriesColor":I
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 272
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 274
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    .line 279
    .end local v2
    :cond_1
    const/16 v2, 0x7f

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 280
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 279
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 281
    .local v2, "secondaryColor":I
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 282
    return-void
.end method

.method private updateDetailData()V
    .locals 17

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v10

    .line 316
    .local v10, "start":J
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v12

    .line 317
    .local v12, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 319
    .local v14, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 321
    .local v1, "context":Landroid/content/Context;
    const/16 v16, 0x0

    .line 322
    .local v16, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v2, v2, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v9, 0x0

    move-wide v3, v10

    move-wide v5, v12

    move-wide v7, v14

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v16

    .line 327
    .end local v16
    .local v2, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    move-object/from16 v2, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 328
    invoke-static {v5, v10, v11, v12, v13}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 327
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 330
    if-eqz v2, :cond_1

    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 331
    .local v3, "totalBytes":J
    :goto_0
    invoke-static {v1, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 332
    .local v5, "totalPhrase":Ljava/lang/CharSequence;
    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const v7, 0x7f1204be

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method private updatePolicy()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 290
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v2, 0x7f0a0190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "configureButton":Landroid/view/View;
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 298
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    .line 305
    :cond_1
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 23
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 339
    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    const-wide/16 v4, 0x0

    .line 342
    .local v4, "largest":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 343
    .local v11, "currentUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 344
    .local v12, "userManager":Landroid/os/UserManager;
    invoke-virtual {v12}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 345
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v14, v6

    .line 347
    .local v14, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    const/4 v6, 0x0

    .line 348
    .local v6, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v9, v7

    .line 349
    .local v9, "size":I
    move-wide/from16 v16, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v16, "largest":J
    :goto_1
    move v10, v4

    .end local v4
    .local v10, "i":I
    if-ge v10, v9, :cond_7

    .line 350
    invoke-virtual {v1, v10, v6}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v8

    .line 353
    .end local v6
    .local v8, "entry":Landroid/net/NetworkStats$Entry;
    iget v7, v8, Landroid/net/NetworkStats$Entry;->uid:I

    .line 357
    .local v7, "uid":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 358
    .local v6, "userId":I
    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    if-eq v6, v11, :cond_1

    .line 362
    invoke-static {v6}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v18

    .line 363
    .local v18, "managedKey":I
    const/16 v19, 0x0

    move/from16 v4, v18

    move-object v5, v14

    move v15, v6

    move-object v6, v8

    .end local v6
    .local v15, "userId":I
    move/from16 v20, v7

    move/from16 v7, v19

    .end local v7
    .local v20, "uid":I
    move-object/from16 v19, v8

    move-object v8, v3

    .end local v8
    .local v19, "entry":Landroid/net/NetworkStats$Entry;
    move/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, v16

    .end local v9
    .end local v10
    .local v21, "size":I
    .local v22, "i":I
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v16

    .end local v18
    goto :goto_2

    .line 367
    .end local v15
    .end local v19
    .end local v20
    .end local v21
    .end local v22
    .restart local v6
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v10
    :cond_1
    move v15, v6

    move/from16 v20, v7

    move-object/from16 v19, v8

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .restart local v15
    .restart local v19
    .restart local v20
    .restart local v21
    .restart local v22
    :goto_2
    move/from16 v4, v20

    .line 368
    .local v4, "collapseKey":I
    const/4 v5, 0x2

    .line 386
    .local v5, "category":I
    move v7, v5

    move-wide/from16 v17, v16

    move/from16 v9, v20

    goto :goto_6

    .line 371
    .end local v4
    .end local v5
    .end local v15
    .end local v19
    .end local v20
    .end local v21
    .end local v22
    .restart local v6
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v10
    :cond_2
    move v15, v6

    move/from16 v20, v7

    move-object/from16 v19, v8

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .restart local v15
    .restart local v19
    .restart local v20
    .restart local v21
    .restart local v22
    invoke-virtual {v12, v15}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 372
    .local v4, "info":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_3

    .line 373
    const/4 v5, -0x4

    .line 374
    .local v5, "collapseKey":I
    const/4 v6, 0x2

    .local v6, "category":I
    goto :goto_3

    .line 377
    .end local v5
    .end local v6
    :cond_3
    invoke-static {v15}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    .line 378
    .restart local v5
    nop

    .end local v4
    const/4 v6, 0x0

    .restart local v6
    :goto_3
    move v4, v6

    .line 380
    .end local v6
    .local v4, "category":I
    nop

    .line 386
    move v7, v4

    move-wide/from16 v17, v16

    move/from16 v9, v20

    move/from16 v16, v5

    goto :goto_7

    .line 381
    .end local v4
    .end local v5
    .end local v15
    .end local v19
    .end local v20
    .end local v21
    .end local v22
    .local v6, "userId":I
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v10
    :cond_4
    move v15, v6

    move/from16 v20, v7

    move-object/from16 v19, v8

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .restart local v15
    .restart local v19
    .restart local v20
    .restart local v21
    .restart local v22
    const/4 v4, -0x4

    move/from16 v9, v20

    if-eq v9, v4, :cond_6

    .end local v20
    .local v9, "uid":I
    const/4 v4, -0x5

    if-ne v9, v4, :cond_5

    goto :goto_4

    .line 385
    :cond_5
    const/16 v4, 0x3e8

    .line 386
    .local v4, "collapseKey":I
    const/4 v5, 0x2

    goto :goto_5

    .line 382
    .end local v4
    :cond_6
    :goto_4
    move v4, v9

    .line 383
    .restart local v4
    const/4 v5, 0x2

    .line 386
    .end local v4
    .local v7, "category":I
    .local v16, "collapseKey":I
    .local v17, "largest":J
    :goto_5
    move v7, v5

    move-wide/from16 v17, v16

    :goto_6
    move/from16 v16, v4

    .line 388
    :goto_7
    move/from16 v4, v16

    move-object v5, v14

    move-object/from16 v6, v19

    move-object v8, v3

    move/from16 v20, v9

    move-wide/from16 v9, v17

    .end local v9
    .restart local v20
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v16

    .line 349
    .end local v7
    .end local v15
    .end local v17
    .end local v20
    .local v16, "largest":J
    add-int/lit8 v4, v22, 0x1

    .end local v22
    .local v4, "i":I
    move/from16 v9, v21

    goto/16 :goto_1

    .line 391
    .end local v4
    .end local v19
    .end local v21
    .local v6, "entry":Landroid/net/NetworkStats$Entry;
    .local v9, "size":I
    :cond_7
    move/from16 v21, v9

    .end local v9
    .restart local v21
    array-length v4, v2

    .line 392
    .local v4, "restrictedUidsMax":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    if-ge v5, v4, :cond_a

    .line 393
    aget v7, v2, v5

    .line 395
    .local v7, "uid":I
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 396
    goto :goto_9

    .line 399
    :cond_8
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/AppItem;

    .line 400
    .local v8, "item":Lcom/android/settingslib/AppItem;
    if-nez v8, :cond_9

    .line 401
    new-instance v9, Lcom/android/settingslib/AppItem;

    invoke-direct {v9, v7}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object v8, v9

    .line 402
    const-wide/16 v9, -0x1

    iput-wide v9, v8, Lcom/android/settingslib/AppItem;->total:J

    .line 403
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget v9, v8, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v14, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    :cond_9
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/settingslib/AppItem;->restricted:Z

    .line 392
    .end local v7
    .end local v8
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 409
    .end local v5
    :cond_a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 410
    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 411
    const/4 v5, 0x0

    .restart local v5
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_c

    .line 412
    const-wide/16 v7, 0x0

    cmp-long v7, v16, v7

    if-eqz v7, :cond_b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/AppItem;

    iget-wide v7, v7, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v9, 0x64

    mul-long/2addr v7, v9

    div-long v7, v7, v16

    long-to-int v15, v7

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    :goto_b
    move v7, v15

    .line 413
    .local v7, "percentTotal":I
    new-instance v8, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 414
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/AppItem;

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v8, v9, v10, v7, v15}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V

    .line 415
    .local v8, "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    new-instance v9, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v9, v0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 424
    iget-object v9, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 411
    .end local v7
    .end local v8
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 426
    .end local v5
    :cond_c
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 120
    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "DataUsage"

    const-string v2, "No bandwidth control; leaving"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 134
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 137
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 139
    new-instance v1, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v1, v0}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 141
    const v1, 0x7f150038

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->addPreferencesFromResource(I)V

    .line 142
    const-string v1, "usage_amount"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    .line 143
    const-string v1, "chart_data"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 144
    const-string v1, "apps_group"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    .line 146
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 231
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 233
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 234
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 222
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 193
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    .line 198
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageList$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 150
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$YolaBauY8HvHsYGl5vfnCCKHiAQ;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$YolaBauY8HvHsYGl5vfnCCKHiAQ;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 164
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 186
    new-instance v0, Lcom/android/settings/widget/LoadingViewController;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0248

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 188
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 189
    return-void
.end method

.method processArgument()V
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 239
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 240
    const-string v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    if-ne v2, v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 244
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.provider.extra.SUB_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 246
    const-string v1, "network_template"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 248
    .end local v2
    :cond_1
    return-void
.end method
