.class public Lcom/android/settings/dashboard/conditional/DndCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "DndCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;
    }
.end annotation


# static fields
.field static final DND_FILTER:Landroid/content/IntentFilter;


# instance fields
.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

.field private mRegistered:Z

.field private mZen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/DndCondition;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 53
    new-instance v0, Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    .line 54
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    sget-object v2, Lcom/android/settings/dashboard/conditional/DndCondition;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    .line 56
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 129
    const/16 v0, 0x17d

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1, v3, v2}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4
    .param p1, "index"    # I

    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 120
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    const-string v2, "DndCondition"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/conditional/DndCondition;->setActive(Z)V

    .line 122
    .end local v0
    nop

    .line 125
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPause()V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    .line 160
    :cond_0
    return-void
.end method

.method public onPrimaryClick()V
    .locals 2

    .line 107
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 109
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 110
    const v1, 0x7f12124e

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 111
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    sget-object v2, Lcom/android/settings/dashboard/conditional/DndCondition;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    .line 152
    :cond_0
    return-void
.end method

.method public refreshState()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 61
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 62
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    .line 63
    iget v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64
    .local v1, "zenModeEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    goto :goto_1

    .line 67
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 69
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/DndCondition;->setActive(Z)V

    .line 70
    return-void
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    .line 81
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    .line 82
    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 74
    const-string v0, "state"

    iget v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0
.end method
