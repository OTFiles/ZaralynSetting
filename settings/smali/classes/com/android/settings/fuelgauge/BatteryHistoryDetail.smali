.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

.field private mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mStats:Landroid/os/BatteryStats;

.field private mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V
    .locals 2
    .param p1, "provider"    # Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
    .param p2, "label"    # I
    .param p3, "groupId"    # I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "group":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryActiveView;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryActiveView;->setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V

    .line 119
    return-void
.end method

.method public static synthetic lambda$updateEverything$0(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/graph/UsageView;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/graph/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 98
    const v1, 0x7f0a00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x7f0a017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f120219

    const v3, 0x7f0a00d9

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f120220

    const v3, 0x7f0a038d

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f12021c

    const v3, 0x7f0a01b3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f12021b

    const v3, 0x7f0a01a3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f120218

    const v3, 0x7f0a00bf

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const v2, 0x7f120222

    const v3, 0x7f0a04f1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f120221

    const v3, 0x7f0a0107

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const v2, 0x7f12021f

    const v3, 0x7f0a00ce

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 111
    return-void
.end method

.method private updateEverything()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V

    .line 112
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 123
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "histFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "broadcast"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    .line 59
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 60
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x1010435

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 63
    .local v2, "accentColor":I
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x0

    const/high16 v6, 0x80000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 65
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x100000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 67
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x20000000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 69
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x8000000

    invoke-direct {v4, v2, v3, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 71
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x200000

    invoke-direct {v4, v2, v3, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 73
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryWifiParser;

    invoke-direct {v4, v2}, Lcom/android/settings/fuelgauge/BatteryWifiParser;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    .line 74
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, -0x80000000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 76
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryCellParser;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/BatteryCellParser;-><init>()V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    const v0, 0x7f0d0048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->updateEverything()V

    .line 90
    return-void
.end method
