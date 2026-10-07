.class public Lcom/android/settings/notification/ZenModeBackend;
.super Ljava/lang/Object;
.source "ZenModeBackend.java"


# static fields
.field protected static final ZEN_MODE_FROM_ANYONE:Ljava/lang/String; = "zen_mode_from_anyone"

.field protected static final ZEN_MODE_FROM_CONTACTS:Ljava/lang/String; = "zen_mode_from_contacts"

.field protected static final ZEN_MODE_FROM_NONE:Ljava/lang/String; = "zen_mode_from_none"

.field protected static final ZEN_MODE_FROM_STARRED:Ljava/lang/String; = "zen_mode_from_starred"

.field private static sInstance:Lcom/android/settings/notification/ZenModeBackend;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field protected mPolicy:Landroid/app/NotificationManager$Policy;

.field protected mZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "ZenModeSettingsBackend"

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenMode()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->updatePolicy()V

    .line 68
    return-void
.end method

.method private clearDeprecatedEffects(I)I
    .locals 1
    .param p1, "effects"    # I

    .line 172
    and-int/lit8 v0, p1, -0x4

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/settings/notification/ZenModeBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    return-object v0
.end method

.method protected static getKeyFromSetting(I)Ljava/lang/String;
    .locals 1
    .param p0, "contactType"    # I

    .line 233
    packed-switch p0, :pswitch_data_0

    .line 242
    const-string v0, "zen_mode_from_none"

    return-object v0

    .line 239
    :pswitch_0    # 0x2
    const-string v0, "zen_mode_from_starred"

    return-object v0

    .line 237
    :pswitch_1    # 0x1
    const-string v0, "zen_mode_from_contacts"

    return-object v0

    .line 235
    :pswitch_2    # 0x0
    const-string v0, "zen_mode_from_anyone"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private getNewSuppressedEffects(ZI)I
    .locals 2
    .param p1, "suppress"    # Z
    .param p2, "effectType"    # I

    .line 160
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 162
    .local v0, "effects":I
    if-eqz p1, :cond_0

    .line 163
    or-int/2addr v0, p2

    goto :goto_0

    .line 165
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    .line 168
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->clearDeprecatedEffects(I)I

    move-result v1

    return v1
.end method

.method private getPrioritySenders(I)I
    .locals 2
    .param p1, "category"    # I

    .line 219
    const/4 v0, -0x1

    .line 221
    .local v0, "categorySenders":I
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v1

    return v1

    .line 225
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v1

    return v1

    .line 229
    :cond_1
    return v0
.end method

.method protected static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x387093d3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v0, v1, :cond_3

    const v1, -0x19386538

    if-eq v0, v1, :cond_2

    const v1, 0xb2d30af

    if-eq v0, v1, :cond_1

    const v1, 0x1b955bea

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 288
    return v5

    .line 285
    :pswitch_0    # 0x2
    return v4

    .line 283
    :pswitch_1    # 0x1
    return v2

    .line 281
    :pswitch_2    # 0x0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method


# virtual methods
.method protected addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 2
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    .line 300
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 301
    .end local v0
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getContactsSummary(I)I
    .locals 3
    .param p1, "category"    # I

    .line 247
    const/4 v0, -0x1

    .line 251
    .local v0, "contactType":I
    const v1, 0x7f121217

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 252
    return v1

    .line 255
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    .line 265
    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 274
    return v1

    .line 271
    :pswitch_0    # 0x2
    const v1, 0x7f121218

    return v1

    .line 269
    :pswitch_1    # 0x1
    const v1, 0x7f121216

    return v1

    .line 267
    :pswitch_2    # 0x0
    const v1, 0x7f121215

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method protected getNewPriorityCategories(ZI)I
    .locals 2
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 114
    .local v0, "priorityCategories":I
    if-eqz p1, :cond_0

    .line 115
    or-int/2addr v0, p2

    goto :goto_0

    .line 117
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    .line 119
    :goto_0
    return v0
.end method

.method protected getPriorityCallSenders()I
    .locals 1

    .line 123
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0

    .line 127
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getPriorityMessageSenders()I
    .locals 1

    .line 131
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0

    .line 134
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getZenMode()I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 101
    iget v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    return v0
.end method

.method protected isPriorityCategoryEnabled(I)Z
    .locals 1
    .param p1, "categoryType"    # I

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isVisualEffectSuppressed(I)Z
    .locals 1
    .param p1, "visualEffect"    # I

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeZenRule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ruleId"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected savePolicy(IIII)V
    .locals 2
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .line 154
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 156
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 157
    return-void
.end method

.method protected saveSenders(II)V
    .locals 9
    .param p1, "category"    # I
    .param p2, "val"    # I

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    .line 181
    .local v0, "priorityCallSenders":I
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v1

    .line 182
    .local v1, "priorityMessagesSenders":I
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->getPrioritySenders(I)I

    move-result v2

    .line 184
    .local v2, "categorySenders":I
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 185
    .local v4, "allowSenders":Z
    :goto_0
    if-ne p2, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    .line 187
    .local v3, "allowSendersFrom":I
    :goto_1
    const-string v5, ""

    .line 188
    .local v5, "stringCategory":Ljava/lang/String;
    const/16 v6, 0x8

    if-ne p1, v6, :cond_2

    .line 189
    const-string v5, "Calls"

    .line 190
    move v0, v3

    .line 193
    :cond_2
    const/4 v6, 0x4

    if-ne p1, v6, :cond_3

    .line 194
    const-string v5, "Messages"

    .line 195
    move v1, v3

    .line 198
    :cond_3
    invoke-virtual {p0, v4, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewPriorityCategories(ZI)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v7, v7, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p0, v6, v0, v1, v7}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    .line 201
    sget-boolean v6, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPrefChange allow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " allow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "From="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    return-void
.end method

.method protected saveSoundPolicy(IZ)V
    .locals 4
    .param p1, "category"    # I
    .param p2, "allow"    # Z

    .line 147
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewPriorityCategories(ZI)I

    move-result v0

    .line 148
    .local v0, "priorityCategories":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    .line 150
    return-void
.end method

.method protected saveVisualEffectsPolicy(IZ)V
    .locals 4
    .param p1, "category"    # I
    .param p2, "suppress"    # Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_settings_updated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewSuppressedEffects(ZI)I

    move-result v0

    .line 142
    .local v0, "suppressedEffects":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    .line 144
    return-void
.end method

.method protected setZenMode(I)V
    .locals 3
    .param p1, "zenMode"    # I

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 88
    return-void
.end method

.method protected setZenModeForDuration(I)V
    .locals 4
    .param p1, "minutes"    # I

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 91
    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 93
    .local v0, "conditionId":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getZenMode()I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 96
    return-void
.end method

.method protected setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rule"    # Landroid/app/AutomaticZenRule;

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    return v0
.end method

.method protected updatePolicy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 74
    :cond_0
    return-void
.end method

.method protected updateZenMode()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 79
    return-void
.end method
