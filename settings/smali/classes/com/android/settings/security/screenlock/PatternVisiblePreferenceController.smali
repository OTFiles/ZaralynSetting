.class public Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PatternVisiblePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput p2, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mUserId:I

    .line 40
    iput-object p3, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 41
    return-void
.end method

.method private isPatternLock()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mUserId:I

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "visiblepattern"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->isPatternLock()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 55
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;->mUserId:I

    .line 56
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 57
    return-void
.end method
