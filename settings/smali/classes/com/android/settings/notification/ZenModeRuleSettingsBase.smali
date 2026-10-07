.class public abstract Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDisableListeners:Z

.field protected mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

.field protected mId:Ljava/lang/String;

.field protected mRule:Landroid/app/AutomaticZenRule;

.field protected mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private getZenRule()Landroid/app/AutomaticZenRule;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 3

    .line 138
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getZenRule()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 139
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private toastAndFinish()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f121238

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 151
    return-void
.end method

.method private updateControls()V
    .locals 1

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControlsInternal()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateHeader()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 162
    return-void
.end method

.method private updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 8
    .param p1, "controller"    # Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 110
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 116
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    if-nez v2, :cond_1

    .line 117
    const-string v3, "ZenModeSettings"

    const-string v4, "Cannot find preference with key %s in Controller %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 117
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 122
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 90
    const v0, 0x7f1206a3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate getIntent()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    if-nez v0, :cond_1

    .line 58
    const-string v1, "ZenModeSettings"

    const-string v2, "No intent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 60
    return-void

    .line 63
    :cond_1
    const-string v1, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 65
    const-string v1, "ZenModeSettings"

    const-string v2, "rule id is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 67
    return-void

    .line 70
    :cond_2
    sget-boolean v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    return-void

    .line 75
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onCreateInternal()V

    .line 77
    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onResume()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    .line 86
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    .line 135
    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateHeader()V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 99
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 106
    return-void
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 3
    .param p1, "newConditionId"    # Landroid/net/Uri;

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 127
    return-void
.end method
