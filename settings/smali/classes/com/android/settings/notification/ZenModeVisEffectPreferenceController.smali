.class public Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mEffect:I

.field protected final mKey:Ljava/lang/String;

.field protected final mMetricsCategory:I

.field protected final mParentSuppressedEffects:[I

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "visualEffect"    # I
    .param p5, "metricsCategory"    # I
    .param p6, "parentSuppressedEffects"    # [I

    .line 42
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 43
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    .line 45
    iput p5, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    .line 46
    iput-object p6, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    .line 47
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 65
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 67
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 56
    iget v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007c

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 57
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 91
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 93
    .local v0, "suppressEffect":Z
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    .line 95
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v0

    .line 73
    .local v0, "suppressed":Z
    const/4 v1, 0x0

    .line 74
    .local v1, "parentSuppressed":Z
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    array-length v4, v2

    move v5, v1

    move v1, v3

    .end local v1
    .local v5, "parentSuppressed":Z
    :goto_0
    if-ge v1, v4, :cond_0

    aget v6, v2, v1

    .line 76
    .local v6, "parentEffect":I
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v7

    or-int/2addr v5, v7

    .line 75
    .end local v6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    move v1, v5

    .end local v5
    .restart local v1
    :cond_1
    if-eqz v1, :cond_2

    .line 80
    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    .line 82
    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    goto :goto_1

    .line 84
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    .line 85
    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    :goto_1
    return-void
.end method
