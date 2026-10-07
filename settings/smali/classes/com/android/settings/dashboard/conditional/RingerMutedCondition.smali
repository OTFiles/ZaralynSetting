.class public Lcom/android/settings/dashboard/conditional/RingerMutedCondition;
.super Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;
.source "RingerMutedCondition.java"


# instance fields
.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 36
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mNotificationManager:Landroid/app/NotificationManager;

    .line 37
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 53
    const/16 v0, 0x558

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public refreshState()V
    .locals 5

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "zen":I
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 46
    .local v3, "zenModeEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 48
    .local v4, "isSilent":Z
    :goto_1
    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->setActive(Z)V

    .line 49
    return-void
.end method
