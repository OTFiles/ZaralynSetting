.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    .line 581
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 593
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 594
    .local v0, "on":Z
    return v0
.end method

.method public getButtonDescription()I
    .locals 1

    .line 585
    const v0, 0x7f120673

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 583
    const v0, 0x7f0a01f0

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .line 587
    if-eqz p1, :cond_0

    const v0, 0x7f080130

    goto :goto_0

    .line 588
    :cond_0
    const v0, 0x7f08012f

    .line 587
    :goto_0
    return v0
.end method

.method public getContainerId()I
    .locals 1

    .line 582
    const v0, 0x7f0a00a5

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 584
    const v0, 0x7f0a01f9

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 600
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .line 604
    const-string v0, "connectivity"

    .line 605
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 606
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 608
    .local v0, "sync":Z
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 633
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    return-void
.end method
