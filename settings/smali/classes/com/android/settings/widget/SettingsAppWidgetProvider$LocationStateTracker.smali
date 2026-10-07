.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationStateTracker"
.end annotation


# instance fields
.field private mCurrentLocationMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    .line 510
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 534
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    .line 536
    iget v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    if-nez v1, :cond_0

    .line 537
    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 536
    :goto_0
    return v2
.end method

.method public getButtonDescription()I
    .locals 1

    .line 516
    const v0, 0x7f12066c

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 514
    const v0, 0x7f0a01ee

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 2
    .param p1, "on"    # Z

    .line 518
    if-eqz p1, :cond_1

    .line 519
    iget v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 524
    const v0, 0x7f08012e

    return v0

    .line 522
    :cond_0
    const v0, 0x7f08012d

    return v0

    .line 528
    :cond_1
    const v0, 0x7f08012c

    return v0
.end method

.method public getContainerId()I
    .locals 1

    .line 513
    const v0, 0x7f0a009e

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 515
    const v0, 0x7f0a01f8

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 545
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 550
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 574
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 575
    return-void
.end method
