.class public abstract Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "AdjustVolumeRestrictedPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/settings/accounts/AccountRestrictionHelper;
    .param p3, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 55
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    const-string v2, "no_adjust_volume"

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 60
    return-void
.end method
