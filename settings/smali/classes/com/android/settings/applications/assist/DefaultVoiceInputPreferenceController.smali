.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultVoiceInputPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    .line 51
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 52
    new-instance v0, Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/assist/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    .line 37
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    return-void
.end method

.method private getDefaultAppKey()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v0

    .line 148
    .local v0, "currentService":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 149
    const/4 v1, 0x0

    return-object v1

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updatePreference()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 144
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 77
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 80
    return-void
.end method

.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 10

    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getDefaultAppKey()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "defaultKey":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return-object v1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    .line 106
    .local v3, "info":Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;
    iget-object v4, v3, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    new-instance v1, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v7, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mUserId:I

    const/4 v9, 0x1

    move-object v4, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    return-object v1

    .line 110
    .end local v3
    :cond_1
    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    .line 113
    .local v3, "info":Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;
    iget-object v4, v3, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    new-instance v1, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v7, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mUserId:I

    const/4 v9, 0x1

    move-object v4, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    return-object v1

    .line 117
    .end local v3
    :cond_3
    goto :goto_1

    .line 118
    :cond_4
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "voice_input_settings"

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 2
    .param p1, "info"    # Lcom/android/settingslib/applications/DefaultAppInfo;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 124
    .local v0, "appInfo":Lcom/android/settingslib/applications/DefaultAppInfo;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->getSettingIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 126
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAvailable()Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    .line 63
    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v0

    .line 64
    .local v0, "currentVoiceService":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mUserId:I

    .line 65
    invoke-virtual {v1, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 66
    .local v1, "currentAssist":Landroid/content/ComponentName;
    invoke-static {v1, v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->isCurrentAssistVoiceService(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public onPause()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    .line 86
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    .line 92
    return-void
.end method
