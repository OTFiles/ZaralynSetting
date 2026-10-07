.class public Lcom/android/settings/security/VisiblePatternProfilePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VisiblePatternProfilePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_VISIBLE_PATTERN_PROFILE:Ljava/lang/String; = "visiblepattern_profile"

.field private static final TAG:Ljava/lang/String; = "VisPtnProfPrefCtrl"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mProfileChallengeUserId:I

.field private final mUm:Landroid/os/UserManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 58
    const-string v0, "visiblepattern_profile"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUserId:I

    .line 59
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUm:Landroid/os/UserManager;

    .line 60
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getAvailabilityStatus$0(Lcom/android/settings/security/VisiblePatternProfilePreferenceController;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 75
    .local v0, "isSecure":Z
    iget-object v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    .line 76
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 78
    .local v1, "hasPassword":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 81
    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 111
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 71
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/security/-$$Lambda$VisiblePatternProfilePreferenceController$rwDeZ_aTyFGsJcFkBXrMF4RE1tM;

    invoke-direct {v1, p0}, Lcom/android/settings/security/-$$Lambda$VisiblePatternProfilePreferenceController$rwDeZ_aTyFGsJcFkBXrMF4RE1tM;-><init>(Lcom/android/settings/security/VisiblePatternProfilePreferenceController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 84
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 85
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VisPtnProfPrefCtrl"

    const-string v3, "Error getting lock pattern state."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, 0x3

    return v2
.end method

.method public isChecked()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 116
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "isChecked"    # Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
