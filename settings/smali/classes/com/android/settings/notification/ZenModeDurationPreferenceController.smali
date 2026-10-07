.class public Lcom/android/settings/notification/ZenModeDurationPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeDurationPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mFragment:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Landroid/app/FragmentManager;

    .line 37
    const-string v0, "zen_mode_duration_settings"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mFragment:Landroid/app/FragmentManager;

    .line 39
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    const-string v0, "zen_mode_duration_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "zen_mode_duration_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 83
    new-instance v0, Lcom/android/settings/notification/SettingsZenDurationDialog;

    invoke-direct {v0}, Lcom/android/settings/notification/SettingsZenDurationDialog;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mFragment:Landroid/app/FragmentManager;

    const-string v2, "ZenModeDurationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/SettingsZenDurationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 61
    const-string v0, ""

    .line 62
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->getZenDuration()I

    move-result v1

    .line 63
    .local v1, "zenDuration":I
    if-gez v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f121204

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    if-nez v1, :cond_1

    .line 66
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f121205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3c

    if-lt v1, v4, :cond_2

    .line 69
    div-int/lit8 v4, v1, 0x3c

    .line 70
    .local v4, "hours":I
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100043

    new-array v3, v3, [Ljava/lang/Object;

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    .line 70
    invoke-virtual {v5, v6, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .end local v4
    goto :goto_0

    .line 73
    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121206

    new-array v3, v3, [Ljava/lang/Object;

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 73
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
