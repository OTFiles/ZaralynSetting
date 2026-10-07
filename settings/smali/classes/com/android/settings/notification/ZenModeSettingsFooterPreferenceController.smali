.class public Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeSettingsFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 33
    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getFooterText()Ljava/lang/String;
    .locals 14

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 67
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const-string v1, ""

    .line 68
    .local v1, "footerText":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 71
    .local v2, "latestEndTime":J
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 72
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 73
    .local v4, "id":Landroid/net/Uri;
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 75
    sget-object v7, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "appOwner":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 77
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f12124a

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v7
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    if-nez v4, :cond_2

    .line 82
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f12124c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 85
    :cond_2
    sget-object v7, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-virtual {v7, v4}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseManualRuleTime(Landroid/net/Uri;)J

    move-result-wide v2

    .line 86
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_3

    .line 87
    sget-object v7, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 87
    invoke-virtual {v7, v2, v3, v8}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getFormattedTime(JI)Ljava/lang/CharSequence;

    move-result-object v7

    .line 89
    .local v7, "formattedTime":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f12124b

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .end local v4
    .end local v7
    :cond_3
    :goto_0
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 99
    .local v7, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 101
    sget-object v8, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->isTimeRule(Landroid/net/Uri;)Z

    move-result v8

    const v9, 0x7f121249

    if-nez v8, :cond_4

    .line 102
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v8, v6, v5

    invoke-virtual {v4, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 106
    :cond_4
    sget-object v8, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v10, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v10}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseAutomaticRuleEndTime(Landroid/net/Uri;)J

    move-result-wide v10

    .line 108
    .local v10, "endTime":J
    cmp-long v8, v10, v2

    if-lez v8, :cond_5

    .line 109
    move-wide v2, v10

    .line 110
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v12, v6, [Ljava/lang/Object;

    iget-object v13, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v13, v12, v5

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .end local v7
    .end local v10
    :cond_5
    goto :goto_1

    .line 116
    :cond_6
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "footer_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->getZenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    return v0

    .line 42
    :pswitch_0    # 0x2 0x3 0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->isAvailable()Z

    move-result v0

    .line 59
    .local v0, "isAvailable":Z
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->getFooterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method
