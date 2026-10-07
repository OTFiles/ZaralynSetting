.class public Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkDetailsFragment.java"


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 125
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    new-instance v6, Landroid/os/Handler;

    .line 130
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    const-class v3, Landroid/net/wifi/WifiManager;

    .line 132
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 125
    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    invoke-static/range {v2 .. v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->newInstance(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 135
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 80
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 81
    const/16 v0, 0x25b

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "WifiNetworkDetailsFrg"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 65
    const/16 v0, 0x351

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 75
    const v0, 0x7f1500c9

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1210f7

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f0801a4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 101
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canModifyNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->showDialog(I)V

    .line 115
    :goto_0
    return v1
.end method
