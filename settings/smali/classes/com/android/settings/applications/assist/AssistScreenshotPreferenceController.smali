.class public Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AssistScreenshotPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;


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

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 53
    new-instance v0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    .line 38
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->updatePreference()V

    return-void
.end method

.method private updatePreference()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    instance-of v0, v0, Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 112
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_screenshot_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 114
    .local v0, "checked":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assist_structure_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    nop

    .line 117
    .local v1, "contextChecked":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 118
    return-void

    .line 102
    .end local v0
    .end local v1
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 69
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "screenshot"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

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

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 90
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_screenshot_enabled"

    .line 96
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 94
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->updatePreference()V

    .line 80
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->updatePreference()V

    .line 85
    return-void
.end method
