.class public Lcom/android/settings/network/NetworkDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 215
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "x2"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p3, "x3"    # Landroid/app/Fragment;
    .param p4, "x4"    # Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p3, "fragment"    # Landroid/app/Fragment;
    .param p4, "mobilePlanHost"    # Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Landroid/app/Fragment;",
            "Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/network/MobilePlanPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V

    .line 90
    .local v0, "mobilePlanPreferenceController":Lcom/android/settings/network/MobilePlanPreferenceController;
    new-instance v1, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 92
    .local v1, "wifiPreferenceController":Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;
    new-instance v2, Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, "mobileNetworkPreferenceController":Lcom/android/settings/network/MobileNetworkPreferenceController;
    new-instance v3, Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/network/VpnPreferenceController;-><init>(Landroid/content/Context;)V

    .line 96
    .local v3, "vpnPreferenceController":Lcom/android/settings/network/VpnPreferenceController;
    new-instance v4, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 99
    .local v4, "privateDnsPreferenceController":Lcom/android/settings/network/PrivateDnsPreferenceController;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/network/MobilePlanPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 100
    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 101
    invoke-virtual {v2, v5}, Lcom/android/settings/network/MobileNetworkPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 102
    invoke-virtual {v3, v5}, Lcom/android/settings/network/VpnPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 106
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 107
    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 108
    invoke-virtual {p1, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 109
    invoke-virtual {p1, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 112
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v6, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v7, Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v7, Lcom/android/settings/network/ProxyPreferenceController;

    invoke-direct {v7, p0}, Lcom/android/settings/network/ProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Lcom/android/settings/network/ProxyPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-object v6
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "controller"    # Lcom/android/settings/network/MobilePlanPreferenceController;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/MobilePlanPreferenceController;->setMobilePlanDialogMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1, v0, v1, p0, p0}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 148
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 149
    const/16 v0, 0x261

    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 75
    const v0, 0x7f1206ce

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "NetworkDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 53
    const/16 v0, 0x2ea

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 63
    const v0, 0x7f150073

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 70
    const-class v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->setFragment(Landroid/app/Fragment;)V

    .line 71
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .line 131
    const-string v0, "NetworkDashboardFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog: dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    const-class v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 136
    .local v0, "controller":Lcom/android/settings/network/MobilePlanPreferenceController;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/settings/network/MobilePlanPreferenceController;->getMobilePlanDialogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;

    invoke-direct {v3, v0}, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;-><init>(Lcom/android/settings/network/MobilePlanPreferenceController;)V

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 136
    return-object v1
.end method

.method public showMobilePlanMessageDialog()V
    .locals 1

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->showDialog(I)V

    .line 127
    return-void
.end method
