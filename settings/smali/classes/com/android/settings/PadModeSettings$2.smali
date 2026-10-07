.class Lcom/android/settings/PadModeSettings$2;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PadModeSettings;->removeAllTask(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$actM:Landroid/app/ActivityManager;

.field final synthetic val$recentTsk:Landroid/app/ActivityManager$RecentTaskInfo;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$2;->val$actM:Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/settings/PadModeSettings$2;->val$recentTsk:Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$2;->val$actM:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PadModeSettings$2;->val$recentTsk:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->removeTask(I)Z

    .line 527
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 528
    :goto_0
    return-void
.end method
