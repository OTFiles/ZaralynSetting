.class public Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;
.super Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;
.source "RingerVibrateCondition.java"


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08022b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 38
    const/16 v0, 0x559

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public refreshState()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;->setActive(Z)V

    .line 34
    return-void
.end method
