.class public Lcom/android/settings/datausage/BillingCyclePreference;
.super Landroid/support/v7/preference/Preference;
.source "BillingCyclePreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private final mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Lcom/android/settings/datausage/BillingCyclePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/BillingCyclePreference$1;-><init>(Lcom/android/settings/datausage/BillingCyclePreference;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    .line 44
    invoke-virtual {p0, p0}, Lcom/android/settings/datausage/BillingCyclePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/BillingCyclePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/BillingCyclePreference;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->updateEnabled()V

    return-void
.end method

.method private updateEnabled()V
    .locals 3

    .line 79
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    .line 80
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 81
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V

    .line 84
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V

    .line 85
    .end local v1
    :goto_1
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getSubSettingLauncher()Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public getSubSettingLauncher()Lcom/android/settings/core/SubSettingLauncher;
    .locals 3

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 99
    const v2, 0x7f120248

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 96
    return-object v1
.end method

.method public onAttached()V
    .locals 4

    .line 49
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 51
    return-void
.end method

.method public onDetached()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 56
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 57
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getSubSettingLauncher()Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 62
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 63
    iput p2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    .line 64
    iput-object p3, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 65
    iget-object v0, p3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 66
    .local v0, "cycleDay":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings_data_usage_v2"

    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120249

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCyclePreference;->setIntent(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
