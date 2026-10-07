.class public Lcom/android/settings/notification/ZenModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

.field private mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "key"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    .line 48
    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 51
    :cond_0
    iput-object p3, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mKey:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    new-instance v0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/ZenModePreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    .line 58
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 65
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 87
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getSoundSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-void
.end method
