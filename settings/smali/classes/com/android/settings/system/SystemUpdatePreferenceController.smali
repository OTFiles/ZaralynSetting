.class public Lcom/android/settings/system/SystemUpdatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SystemUpdatePreferenceController.java"


# static fields
.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

.field private static final TAG:Ljava/lang/String; = "SysUpdatePrefContr"


# instance fields
.field private final mUm:Landroid/os/UserManager;

.field private final mUpdateManager:Landroid/os/SystemUpdateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const-string v0, "system_update_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 53
    const-string v0, "system_update"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemUpdateManager;

    iput-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUpdateManager:Landroid/os/SystemUpdateManager;

    .line 54
    return-void
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 127
    const-string v0, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "intentStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string v1, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "extra":Ljava/lang/String;
    const-string v2, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "extraVal":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_0
    const-string v4, "SysUpdatePrefContr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with extra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    .end local v1
    .end local v2
    .end local v3
    :cond_1
    return-void
.end method

.method public static synthetic lambda$getSummary$0(Lcom/android/settings/system/SystemUpdatePreferenceController;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUpdateManager:Landroid/os/SystemUpdateManager;

    invoke-virtual {v0}, Landroid/os/SystemUpdateManager;->retrieveSystemUpdateInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/system/SystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/system/SystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 68
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 72
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 59
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x2

    .line 58
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 8

    .line 90
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1200f7

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "summary":Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/android/settings/system/-$$Lambda$SystemUpdatePreferenceController$XHnSEfghEOzLX1wZid9rCEinHuU;

    invoke-direct {v5, p0}, Lcom/android/settings/system/-$$Lambda$SystemUpdatePreferenceController$XHnSEfghEOzLX1wZid9rCEinHuU;-><init>(Lcom/android/settings/system/SystemUpdatePreferenceController;)V

    invoke-direct {v2, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 97
    .local v2, "bundleFutureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 98
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 102
    .local v5, "updateInfo":Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 101
    nop

    .line 103
    const-string v6, "status"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0    # 0x3 0x4 0x5 0x2
    iget-object v1, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1200f6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_1    # 0x0
    const-string v6, "SysUpdatePrefContr"

    const-string v7, "Update statue unknown"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :pswitch_2    # 0x1
    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "version":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    iget-object v7, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v4

    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .end local v6
    :cond_0
    :goto_0
    return-object v0

    .line 99
    .end local v5
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SysUpdatePrefContr"

    const-string v4, "Error getting system update info."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_2    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
    .end packed-switch
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/system/SystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 79
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 80
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    const-string v2, "ci_action_on_sys_update_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-direct {p0, v1}, Lcom/android/settings/system/SystemUpdatePreferenceController;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    .line 85
    .end local v0
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
