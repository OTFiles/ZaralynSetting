.class public Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockAfterTimeoutPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    iput p2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    .line 52
    iput-object p3, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 53
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 54
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 56
    return-void
.end method

.method private setupLockAfterPreference(Lcom/android/settings/TimeoutListPreference;)V
    .locals 11
    .param p1, "preference"    # Lcom/android/settings/TimeoutListPreference;

    .line 103
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 105
    .local v0, "currentTimeout":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 109
    .local v2, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v3, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    .line 111
    .local v3, "adminTimeout":J
    iget-object v5, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 111
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    .line 116
    .local v5, "displayTimeout":J
    const-wide/16 v7, 0x0

    sub-long v9, v3, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 117
    .local v7, "maxTimeout":J
    invoke-virtual {p1, v7, v8, v2}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 119
    .end local v2
    .end local v3
    .end local v5
    .end local v7
    :cond_0
    return-void
.end method

.method private updateLockAfterPreferenceSummary(Lcom/android/settings/TimeoutListPreference;)V
    .locals 13
    .param p1, "preference"    # Lcom/android/settings/TimeoutListPreference;

    .line 123
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120541

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "summary":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 127
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 129
    .local v0, "currentTimeout":J
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 130
    .local v2, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 131
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 132
    .local v4, "best":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "i":I
    .local v6, "best":I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_2

    .line 133
    aget-object v7, v3, v4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 134
    .local v7, "timeout":J
    cmp-long v9, v0, v7

    if-ltz v9, :cond_1

    .line 135
    move v6, v4

    .line 132
    .end local v7
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v4
    :cond_2
    iget-object v4, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v7, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-virtual {v4, v7, v8}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 141
    .local v4, "trustAgentLabel":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    .line 142
    aget-object v7, v3, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_3

    .line 143
    iget-object v7, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f1207d4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v5

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .end local v2
    .end local v3
    .end local v4
    .end local v6
    .local v0, "summary":Ljava/lang/CharSequence;
    .local v5, "summary":Ljava/lang/CharSequence;
    :goto_1
    move-object v0, v5

    goto :goto_2

    .line 146
    .end local v5
    .local v0, "currentTimeout":J
    .restart local v2
    .restart local v3
    .restart local v4
    .restart local v6
    :cond_3
    iget-object v7, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f1207ce

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v2, v6

    aput-object v11, v10, v5

    aput-object v4, v10, v8

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 150
    :cond_4
    iget-object v7, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f1207cd

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v10, v2, v6

    aput-object v10, v8, v5

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .end local v2
    .end local v3
    .end local v4
    .end local v6
    .local v0, "summary":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "lock_after_timeout"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x80000

    if-eq v0, v2, :cond_1

    .line 73
    return v1

    .line 71
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 91
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 97
    .end local v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "PrefControllerMixin"

    const-string v2, "could not persist lockAfter timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/android/settings/TimeoutListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->setupLockAfterPreference(Lcom/android/settings/TimeoutListPreference;)V

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/android/settings/TimeoutListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->updateLockAfterPreferenceSummary(Lcom/android/settings/TimeoutListPreference;)V

    .line 86
    return-void
.end method
