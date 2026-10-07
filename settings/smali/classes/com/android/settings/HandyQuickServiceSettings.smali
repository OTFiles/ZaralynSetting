.class public Lcom/android/settings/HandyQuickServiceSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "HandyQuickServiceSettings.java"


# instance fields
.field private final mReadboyGuideFeedbackTipListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field readboy_guide_feedback_tip:Landroid/support/v7/preference/PreferenceScreen;

.field readboy_guide_net:Landroid/support/v7/preference/PreferenceScreen;

.field readboy_guide_server_point:Landroid/support/v7/preference/PreferenceScreen;

.field readboy_help_and_feedback:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/android/settings/HandyQuickServiceSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HandyQuickServiceSettings$1;-><init>(Lcom/android/settings/HandyQuickServiceSettings;)V

    iput-object v0, p0, Lcom/android/settings/HandyQuickServiceSettings;->mReadboyGuideFeedbackTipListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 59
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 193
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/HandyQuickServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f150061

    invoke-virtual {p0, v1}, Lcom/android/settings/HandyQuickServiceSettings;->addPreferencesFromResource(I)V

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "isNeedShowTipPref":Z
    const-string v2, "readboy_guide_feedback_tip"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_feedback_tip:Landroid/support/v7/preference/PreferenceScreen;

    .line 71
    iget-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_feedback_tip:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_feedback_tip:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/HandyQuickServiceSettings;->mReadboyGuideFeedbackTipListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    :cond_0
    const-string v2, "readboy_guide_net"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_net:Landroid/support/v7/preference/PreferenceScreen;

    .line 77
    iget-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_net:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.dream.guide.ACTION_GUIDE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "intentGuide":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Readboy_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ro.product.model.id"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "devName":Ljava/lang/String;
    const-string v4, "model"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getEspPadSubModel()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "subModel":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    const-string v5, "sub_model"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_1
    invoke-static {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getDeviceSubMoreParamForGuide(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "subMoreParam":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 87
    const-string v6, "sub_more_param"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_2
    iget-object v6, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_net:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "readboy_guide_data_version"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 93
    .local v6, "savedSettingsVer":I
    const v7, 0xc8926fb

    .line 94
    .local v7, "lastNeedCleanGuideDataVer":I
    if-ge v6, v7, :cond_3

    .line 95
    new-instance v8, Ljava/util/ArrayList;

    const-string v9, "com.dream.guide"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v8}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanAppDataClear(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/settings/Utils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 97
    .local v8, "nowSettingsVer":I
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "readboy_guide_data_version"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_3
    const-string v2, "com.dream.guide"

    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 103
    const/4 v1, 0x1

    .line 104
    const-string v2, "readboy_guide_net"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    .line 108
    :cond_4
    const-string v2, "readboy_guide_server_point"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_server_point:Landroid/support/v7/preference/PreferenceScreen;

    .line 109
    iget-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_server_point:Landroid/support/v7/preference/PreferenceScreen;

    const/high16 v3, 0x10200000

    if-eqz v2, :cond_5

    .line 110
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v2, "itGuide":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.readboy.feedback"

    const-string v6, "com.readboy.feedback.activity.WebviewActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    const-string v4, "url"

    const-string v5, "https://www.readboy.com/simpleServicePoint"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v4, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_server_point:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 117
    .end local v2
    :cond_5
    const-string v2, "com.readboy.feedback"

    const-string v4, "com.readboy.feedback.activity.WebviewActivity"

    invoke-static {v0, v2, v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isActivityExsistByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 118
    const/4 v1, 0x1

    .line 119
    const-string v2, "readboy_guide_server_point"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    .line 123
    :cond_6
    const-string v2, "readboy_help_and_feedback"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_help_and_feedback:Landroid/support/v7/preference/PreferenceScreen;

    .line 124
    iget-object v2, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_help_and_feedback:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v2, :cond_7

    .line 125
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 126
    .restart local v2
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.readboy.feedback"

    const-string v5, "com.readboy.apphelp.MainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    iget-object v3, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_help_and_feedback:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 131
    .end local v2
    :cond_7
    const-string v2, "com.readboy.feedback"

    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 132
    const/4 v1, 0x1

    .line 133
    const-string v2, "readboy_help_and_feedback"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    .line 138
    :cond_8
    if-nez v1, :cond_9

    .line 139
    const-string v2, "readboy_guide_feedback_tip"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    .line 141
    :cond_9
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 198
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/HandyQuickServiceSettings;->refreshAllNeedShowPref()V

    .line 200
    return-void
.end method

.method public refreshAllNeedShowPref()V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/HandyQuickServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 148
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 149
    .local v1, "isNeedShowTipPref":Z
    const-string v2, "com.dream.guide"

    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 151
    const-string v2, "readboy_guide_net"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 152
    :cond_0
    const-string v2, "readboy_guide_net"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/HandyQuickServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_net:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 155
    :cond_1
    :goto_0
    const-string v2, "com.readboy.feedback"

    const-string v3, "com.readboy.feedback.activity.WebviewActivity"

    invoke-static {v0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isActivityExsistByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    const/4 v1, 0x1

    .line 157
    const-string v2, "readboy_guide_server_point"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    .line 158
    :cond_2
    const-string v2, "readboy_guide_server_point"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/HandyQuickServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_server_point:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 161
    :cond_3
    :goto_1
    const-string v2, "com.readboy.feedback"

    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    const/4 v1, 0x1

    .line 163
    const-string v2, "readboy_help_and_feedback"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_2

    .line 164
    :cond_4
    const-string v2, "readboy_help_and_feedback"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_5

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/HandyQuickServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_help_and_feedback:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 167
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 168
    const-string v2, "readboy_guide_feedback_tip"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    .line 169
    :cond_6
    const-string v2, "readboy_guide_feedback_tip"

    invoke-virtual {p0, v2}, Lcom/android/settings/HandyQuickServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_7

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/HandyQuickServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HandyQuickServiceSettings;->readboy_guide_feedback_tip:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 172
    :cond_7
    :goto_3
    return-void
.end method
