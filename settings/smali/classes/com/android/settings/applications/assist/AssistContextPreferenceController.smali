.class public Lcom/android/settings/applications/assist/AssistContextPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AssistContextPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 53
    new-instance v0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/AssistContextPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/AssistContextPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/assist/AssistContextPreferenceController;

    .line 38
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->updatePreference()V

    return-void
.end method

.method static isChecked(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_structure_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private updatePreference()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    instance-of v0, v0, Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 107
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->isChecked(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 108
    return-void

    .line 96
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 72
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 75
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "context"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 91
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_structure_enabled"

    .line 114
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 112
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->updatePreference()V

    .line 81
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->updatePreference()V

    .line 86
    return-void
.end method
