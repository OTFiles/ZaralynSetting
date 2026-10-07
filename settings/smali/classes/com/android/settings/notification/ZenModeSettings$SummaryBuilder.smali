.class public Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 8
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    .local p2, "filteredCategories":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "enabledCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_b

    aget v4, v1, v3

    .line 253
    .local v4, "category":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, p1, v4}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 254
    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 255
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1211d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 256
    :cond_0
    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    .line 257
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121219

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 259
    :cond_1
    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 260
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f12125b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 262
    :cond_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 263
    iget v5, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v5, :cond_3

    .line 264
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1211d6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 267
    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121247

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 270
    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 271
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121213

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_5
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 273
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121222

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_6
    const/16 v6, 0x8

    const v7, 0x7f1211d5

    if-ne v4, v6, :cond_9

    .line 275
    iget v6, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v6, :cond_7

    .line 276
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_7
    iget v6, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v6, v5, :cond_8

    .line 279
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1211fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_8
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121254

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :cond_9
    const/16 v5, 0x10

    if-ne v4, v5, :cond_a

    .line 286
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 288
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121224

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v4
    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 294
    :cond_b
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 1
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "categoryType"    # I

    .line 298
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "category"    # Ljava/lang/Integer;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    .line 142
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 141
    :goto_1
    return v0
.end method

.method static synthetic lambda$getMsgEventReminderSettingSummary$2(Ljava/lang/Integer;)Z
    .locals 3
    .param p0, "category"    # Ljava/lang/Integer;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v2, v0, :cond_1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    .line 160
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 158
    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$getSoundSettingSummary$0(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "category"    # Ljava/lang/Integer;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v1, v0, :cond_1

    const/16 v0, 0x40

    .line 117
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x80

    .line 118
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 116
    :goto_1
    return v0
.end method


# virtual methods
.method getAutomaticRulesSummary()Ljava/lang/String;
    .locals 6

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    .line 228
    .local v0, "count":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f12124d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100044

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 229
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_0
    return-object v1
.end method

.method getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 214
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 8
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 140
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "enabledCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 144
    .local v1, "numCategories":I
    if-nez v1, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f12121c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 146
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 147
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f1211fa

    new-array v3, v3, [Ljava/lang/Object;

    .line 148
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 147
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f1211fb

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 152
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 150
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 6

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 237
    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    .line 238
    .local v1, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    if-eqz v1, :cond_1

    .line 239
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 240
    .local v3, "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    .line 241
    .local v4, "rule":Landroid/app/AutomaticZenRule;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 244
    .end local v3
    .end local v4
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    return v0
.end method

.method getMsgEventReminderSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 8
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 157
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "enabledCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 162
    .local v1, "numCategories":I
    if-nez v1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f12121c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 164
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 166
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 167
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f120731

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v2

    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 167
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 169
    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v5, "summaries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 177
    .end local v5
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .restart local v5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121220

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getSoundSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 9
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 115
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "enabledCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 120
    .local v1, "numCategories":I
    if-nez v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121276

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 123
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f12127a

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 123
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 125
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 126
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f12127d

    new-array v4, v4, [Ljava/lang/Object;

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 128
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 126
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 129
    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 130
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v7, 0x7f12127b

    new-array v5, v5, [Ljava/lang/Object;

    .line 131
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 130
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121279

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getSoundSummary()Ljava/lang/String;
    .locals 10

    .line 188
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    .line 190
    .local v0, "zenMode":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 192
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v1}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "description":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f121252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    :cond_0
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121253

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    .end local v3
    .end local v4
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v3

    .line 202
    .local v3, "count":I
    if-lez v3, :cond_2

    .line 203
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121251

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100045

    new-array v2, v2, [Ljava/lang/Object;

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v1

    .line 204
    invoke-virtual {v7, v8, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 203
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f121250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
