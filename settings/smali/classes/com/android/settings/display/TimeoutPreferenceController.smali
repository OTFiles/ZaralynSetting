.class public Lcom/android/settings/display/TimeoutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeoutPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mScreenTimeoutKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mScreenTimeoutKey:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "currentTimeout"    # J
    .param p2, "entries"    # [Ljava/lang/CharSequence;
    .param p3, "values"    # [Ljava/lang/CharSequence;

    .line 97
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    array-length v0, p3

    array-length v2, p2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 103
    aget-object v2, p3, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 104
    .local v2, "timeout":J
    cmp-long v4, p0, v2

    if-nez v4, :cond_1

    .line 105
    aget-object v1, p2, v0

    return-object v1

    .line 102
    .end local v2
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0
    :cond_2
    return-object v1

    .line 99
    :cond_3
    :goto_1
    return-object v1
.end method

.method private updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V
    .locals 7
    .param p1, "preference"    # Lcom/android/settings/TimeoutListPreference;
    .param p2, "currentTimeout"    # J

    .line 113
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    .local v1, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120541

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_1

    .line 119
    .end local v2
    :cond_0
    invoke-static {p2, p3, v0, v1}, Lcom/android/settings/display/TimeoutPreferenceController;->getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 121
    .local v2, "timeoutDescription":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 122
    const-string v3, ""

    goto :goto_0

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120c29

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v2
    :goto_0
    move-object v2, v3

    .line 125
    .local v2, "summary":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mScreenTimeoutKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 86
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    move-object v1, p1

    check-cast v1, Lcom/android/settings/TimeoutListPreference;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/display/TimeoutPreferenceController;->updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V

    .line 91
    .end local v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "TimeoutPrefContr"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 60
    move-object v0, p1

    check-cast v0, Lcom/android/settings/TimeoutListPreference;

    .line 61
    .local v0, "timeoutListPreference":Lcom/android/settings/TimeoutListPreference;
    iget-object v1, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const-wide/16 v3, 0x7530

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 63
    .local v1, "currentTimeout":J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    .line 65
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 66
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_0

    .line 67
    iget-object v4, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 69
    .local v4, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v5, 0x0

    .line 70
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v5

    .line 71
    .local v5, "maxTimeout":J
    invoke-virtual {v0, v5, v6, v4}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 73
    .end local v4
    .end local v5
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/display/TimeoutPreferenceController;->updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V

    .line 75
    iget-object v4, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-string v5, "no_config_screen_timeout"

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 75
    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 78
    .restart local v4
    if-eqz v4, :cond_1

    .line 79
    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 81
    :cond_1
    return-void
.end method
