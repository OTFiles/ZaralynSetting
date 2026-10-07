.class public Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AssistFlashScreenPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 54
    new-instance v0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    return-void
.end method

.method private getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private updatePreference()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    instance-of v0, v0, Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    goto :goto_2

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 114
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 116
    .local v0, "assistant":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->isChecked(Landroid/content/Context;)Z

    move-result v1

    .line 118
    .local v1, "isContextChecked":Z
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->isPreInstalledAssistant(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->willShowFlash(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    return-void

    .line 104
    .end local v0
    .end local v1
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method allowDisablingAssistDisclosure()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 76
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "flash"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->allowDisablingAssistDisclosure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPreInstalledAssistant(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 92
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_disclosure_enabled"

    .line 98
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 96
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    .line 82
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    .line 87
    return-void
.end method

.method willShowFlash(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method
