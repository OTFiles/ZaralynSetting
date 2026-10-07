.class Lcom/android/settings/ForcePortraitAppLandscape$6;
.super Ljava/lang/Object;
.source "ForcePortraitAppLandscape.java"

# interfaces
.implements Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ForcePortraitAppLandscape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ForcePortraitAppLandscape;


# direct methods
.method constructor <init>(Lcom/android/settings/ForcePortraitAppLandscape;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 295
    iput-object p1, p0, Lcom/android/settings/ForcePortraitAppLandscape$6;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILjava/lang/Object;)V
    .locals 4
    .param p1, "forcusposition"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 302
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee========onItemClick====position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;

    if-eqz v0, :cond_0

    .line 304
    move-object v0, p2

    check-cast v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    .line 306
    .local v0, "pkgName":Ljava/lang/String;
    :try_start_0
    const-string v1, "ForcePAppL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "css2 killProcess pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/android/settings/ForcePortraitAppLandscape$6;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v1}, Lcom/android/settings/ForcePortraitAppLandscape;->access$600(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/ForcePortraitAppLandscape$6;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v1}, Lcom/android/settings/ForcePortraitAppLandscape;->access$600(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 310
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 312
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/ForcePortraitAppLandscape;->removeOneBgTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 313
    :catch_1
    move-exception v1

    .line 316
    .end local v0
    :cond_0
    :goto_1
    return-void
.end method

.method public onUpdateEmptyView()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$6;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-virtual {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->getMsgHandler()Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ForcePortraitAppLandscape$6$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ForcePortraitAppLandscape$6$1;-><init>(Lcom/android/settings/ForcePortraitAppLandscape$6;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    return-void
.end method

.method public onUpdateStatusView()V
    .locals 0

    .line 320
    return-void
.end method
