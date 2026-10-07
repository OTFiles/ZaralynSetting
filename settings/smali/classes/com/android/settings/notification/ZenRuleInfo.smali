.class public Lcom/android/settings/notification/ZenRuleInfo;
.super Ljava/lang/Object;
.source "ZenRuleInfo.java"


# instance fields
.field public configurationActivity:Landroid/content/ComponentName;

.field public defaultConditionId:Landroid/net/Uri;

.field public isSystem:Z

.field public packageLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public ruleInstanceLimit:I

.field public serviceComponent:Landroid/content/ComponentName;

.field public settingsAction:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 9
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 10
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    .line 12
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/settings/notification/ZenRuleInfo;

    .line 14
    .local v2, "that":Lcom/android/settings/notification/ZenRuleInfo;
    iget-boolean v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    iget-boolean v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-eq v3, v4, :cond_2

    return v1

    .line 15
    :cond_2
    iget v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    iget v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-eq v3, v4, :cond_3

    return v1

    .line 16
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 17
    :goto_0
    return v1

    .line 18
    :cond_5
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_6
    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 19
    :cond_7
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_8
    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20
    :goto_2
    return v1

    .line 21
    :cond_9
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_3

    :cond_a
    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_b

    .line 22
    :goto_3
    return v1

    .line 23
    :cond_b
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    iget-object v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_c
    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-eqz v3, :cond_d

    .line 24
    :goto_4
    return v1

    .line 25
    :cond_d
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_5

    :cond_e
    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_f

    .line 26
    :goto_5
    return v1

    .line 27
    :cond_f
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_10

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    iget-object v1, v2, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    .line 28
    :cond_10
    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_11

    goto :goto_6

    .line 27
    :cond_11
    move v0, v1

    :goto_6
    return v0

    .line 10
    .end local v2
    :cond_12
    :goto_7
    return v1
.end method
