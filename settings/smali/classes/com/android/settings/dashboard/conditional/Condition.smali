.class public abstract Lcom/android/settings/dashboard/conditional/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# instance fields
.field private mIsActive:Z

.field private mIsSilenced:Z

.field private mLastStateChange:J

.field protected final mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

.field protected final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field protected mReceiverRegistered:Z


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 46
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 51
    iput-object p2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract getActions()[Ljava/lang/CharSequence;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method getLastChange()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    return-wide v0
.end method

.method public abstract getMetricsConstant()I
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSummary()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public isActive()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    return v0
.end method

.method public isSilenced()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V

    .line 73
    return-void
.end method

.method public abstract onActionClick(I)V
.end method

.method public onPause()V
    .locals 0

    .line 146
    return-void
.end method

.method public abstract onPrimaryClick()V
.end method

.method public onResume()V
    .locals 0

    .line 143
    return-void
.end method

.method onSilenceChanged(Z)V
    .locals 3
    .param p1, "silenced"    # Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    .line 110
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    goto :goto_0

    .line 119
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    .line 124
    :cond_2
    :goto_0
    return-void
.end method

.method public abstract refreshState()V
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 55
    const-string v0, "silence"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 56
    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    .line 57
    const-string v0, "last_state"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    .line 58
    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "silence"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "active"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string v0, "last_state"

    iget-wide v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-ne v0, p1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    .line 94
    return-void
.end method

.method public shouldShow()Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->isSilenced()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public silence()V
    .locals 4

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x174

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v3

    .line 100
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 102
    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    .line 105
    .end local v0
    :cond_0
    return-void
.end method
