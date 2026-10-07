.class public Lcom/android/settings/display/AutoRotatePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoRotatePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AutoRotatePreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/AutoRotatePreferenceController;

    .line 30
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 74
    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/display/AutoRotatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_rotate"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/settings/display/AutoRotatePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AutoRotatePreferenceController$1;-><init>(Lcom/android/settings/display/AutoRotatePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 63
    return-void
.end method

.method public setChecked(Z)Z
    .locals 4
    .param p1, "isChecked"    # Z

    .line 90
    xor-int/lit8 v0, p1, 0x1

    .line 91
    .local v0, "isLocked":Z
    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0xcb

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 97
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 45
    iput-object p1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 47
    return-void
.end method
