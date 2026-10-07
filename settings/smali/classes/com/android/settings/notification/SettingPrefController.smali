.class public abstract Lcom/android/settings/notification/SettingPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SettingPrefController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SettingPrefController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field protected mPreference:Lcom/android/settings/notification/SettingPref;

.field protected mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 50
    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SettingPrefController;

    .line 37
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SettingPrefController;

    .line 37
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/SettingPrefController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;-><init>(Lcom/android/settings/notification/SettingPrefController;)V

    iput-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    .line 62
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0}, Lcom/android/settings/notification/SettingPref;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/android/settings/notification/SettingPrefController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->register(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->register(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 77
    return-void
.end method
