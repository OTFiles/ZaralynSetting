.class public Lcom/android/settings/location/LocationServicePreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "LocationServicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field static final INTENT_FILTER_INJECTED_SETTING_CHANGED:Landroid/content/IntentFilter;


# instance fields
.field private mCategoryLocationServices:Landroid/support/v7/preference/PreferenceCategory;

.field private final mFragment:Lcom/android/settings/location/LocationSettings;

.field mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

.field private final mInjector:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.InjectedSettingChanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationServicePreferenceController;->INTENT_FILTER_INJECTED_SETTING_CHANGED:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/location/LocationSettings;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 55
    new-instance v0, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v0, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/LocationServicePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/SettingsInjector;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/SettingsInjector;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/location/LocationSettings;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p4, "injector"    # Lcom/android/settings/location/SettingsInjector;

    .line 61
    invoke-direct {p0, p1, p3}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    .line 63
    iput-object p4, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/SettingsInjector;

    .line 64
    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationServicePreferenceController;)Lcom/android/settings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationServicePreferenceController;

    .line 36
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method private getLocationServices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/SettingsInjector;

    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Lcom/android/settings/location/LocationSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v2}, Lcom/android/settings/location/LocationEnabler;->isManagedProfileRestrictedByBase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    .line 133
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 85
    const-string v0, "location_services"

    .line 86
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroid/support/v7/preference/PreferenceCategory;

    .line 87
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "location_services"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/SettingsInjector;

    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v1}, Lcom/android/settings/location/LocationEnabler;->isManagedProfileRestrictedByBase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 78
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/location/SettingsInjector;->hasInjectedSettings(I)Z

    move-result v0

    return v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/settings/location/LocationServicePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationServicePreferenceController$1;-><init>(Lcom/android/settings/location/LocationServicePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/LocationServicePreferenceController;->INTENT_FILTER_INJECTED_SETTING_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/location/LocationServicePreferenceController;->getLocationServices()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 94
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/widget/RestrictedAppPreference;

    if-eqz v3, :cond_0

    .line 95
    move-object v3, v2

    check-cast v3, Lcom/android/settings/widget/RestrictedAppPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/RestrictedAppPreference;->checkRestrictionAndSetDisabled()V

    .line 97
    .end local v2
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-static {v0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 99
    return-void
.end method
