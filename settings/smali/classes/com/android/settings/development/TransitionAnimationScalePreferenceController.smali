.class public Lcom/android/settings/development/TransitionAnimationScalePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "TransitionAnimationScalePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final DEFAULT_VALUE:F = 1.0f

.field static final TRANSITION_ANIMATION_SCALE_SELECTOR:I = 0x1


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v0, "window"

    .line 50
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method private updateAnimationScaleValue()V
    .locals 5

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 93
    .local v0, "scale":F
    const/4 v1, 0x0

    .line 94
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 96
    .local v3, "val":F
    cmpg-float v4, v0, v3

    if-gtz v4, :cond_0

    .line 97
    move v1, v2

    .line 98
    goto :goto_1

    .line 94
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    .line 102
    .local v2, "listPreference":Landroid/support/v7/preference/ListPreference;
    iget-object v3, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 104
    :catch_0
    move-exception v0

    .line 107
    :goto_2
    return-void
.end method

.method private writeAnimationScaleOption(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 81
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_1

    .line 81
    :cond_0
    const/high16 v0, 0x3f800000

    .line 82
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1    # 1.4E-45f

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->updateAnimationScaleValue()V

    .line 86
    .end local v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 84
    :goto_1
    nop

    .line 87
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "transition_animation_scale"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p2}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->updateAnimationScaleValue()V

    .line 71
    return-void
.end method
