.class public Lcom/android/settings/location/LocationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LocationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private mContext:Landroid/content/Context;

.field mLocationProvidersChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/location/LocationPreferenceController;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/settings/location/LocationPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationPreferenceController$1;-><init>(Lcom/android/settings/location/LocationPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mLocationProvidersChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static getLocationSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 108
    const v1, 0x7f1207bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 110
    :cond_0
    const v1, 0x7f1207bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 67
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 68
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "location"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mLocationProvidersChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationPreferenceController;->mLocationProvidersChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mLocationProvidersChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationPreferenceController;->mLocationProvidersChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 87
    iget-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/location/LocationPreferenceController;->getLocationSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public updateSummary()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/location/LocationPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 102
    return-void
.end method
