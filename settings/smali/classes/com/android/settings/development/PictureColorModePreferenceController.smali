.class public Lcom/android/settings/development/PictureColorModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "PictureColorModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private mPreference:Lcom/android/settings/development/ColorModePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ColorModePreference;

    iput-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    .line 59
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    .line 62
    :cond_0
    return-void
.end method

.method getColorModeDescriptionsSize()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "picture_color_mode"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mIsAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getColorModeDescriptionsSize()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->isWideColorGamut()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isWideColorGamut()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->stopListening()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->startListening()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    .line 71
    return-void
.end method
