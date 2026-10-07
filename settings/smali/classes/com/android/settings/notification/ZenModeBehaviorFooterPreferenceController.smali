.class public Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBehaviorFooterPreferenceController.java"


# instance fields
.field private final mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "titleRes"    # I

    .line 36
    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    iput p3, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mTitleRes:I

    .line 38
    return-void
.end method

.method private isDeprecatedZenMode(I)Z
    .locals 1
    .param p1, "zenMode"    # I

    .line 95
    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 98
    :pswitch_0    # 0x3 0x2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method


# virtual methods
.method protected getFooterText()Ljava/lang/String;
    .locals 8

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->getZenMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 61
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f1211d8

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 62
    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 64
    .local v1, "id":Landroid/net/Uri;
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 66
    sget-object v5, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v6, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "appOwner":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-virtual {v6, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 71
    .end local v5
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f121221

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 77
    .end local v1
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 78
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 81
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 82
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    .end local v5
    .end local v6
    :cond_3
    goto :goto_1

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12125c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 90
    .end local v0
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "footer_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->getFooterText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
