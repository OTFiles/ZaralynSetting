.class public Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UseOpenWifiPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDoFeatureSupportedScorersExist:Z

.field private mEnableUseWifiComponentName:Landroid/content/ComponentName;

.field private final mFragment:Landroid/app/Fragment;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    iput-object p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 57
    const-string v0, "network_score"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 59
    new-instance v0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateEnableUseWifiComponentName()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->checkForFeatureSupportedScorers()V

    .line 62
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateEnableUseWifiComponentName()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private checkForFeatureSupportedScorers()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    .line 74
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "scorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScorerAppData;

    .line 78
    .local v3, "scorer":Landroid/net/NetworkScorerAppData;
    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    .line 80
    return-void

    .line 82
    .end local v3
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    .line 84
    return-void
.end method

.method private isSettingEnabled()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "use_open_wifi_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "enabledUseOpenWifiPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 160
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "currentUseOpenWifiPackage":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private updateEnableUseWifiComponentName()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 67
    .local v0, "appData":Landroid/net/NetworkScorerAppData;
    nop

    .line 68
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    .line 69
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 89
    const-string v0, "use_open_wifi_automatically"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 90
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "use_open_wifi_automatically"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    return v0
.end method

.method public onActivityResult(II)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .line 165
    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "use_open_wifi_package"

    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    .line 171
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 100
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 139
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "use_open_wifi_automatically"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "use_open_wifi_package"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mFragment:Landroid/app/Fragment;

    const/16 v3, 0x190

    invoke-virtual {v2, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    return v1

    .line 141
    .end local v0
    :cond_2
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 95
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 114
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 119
    .local v0, "useOpenWifiPreference":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    .local v1, "isScorerSet":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 122
    .local v4, "doesActiveScorerSupportFeature":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 124
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 126
    if-nez v1, :cond_4

    .line 127
    const v2, 0x7f120f79

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 129
    :cond_4
    if-nez v4, :cond_5

    .line 130
    const v2, 0x7f120f78

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 133
    :cond_5
    const v2, 0x7f120f77

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 135
    :goto_2
    return-void
.end method
