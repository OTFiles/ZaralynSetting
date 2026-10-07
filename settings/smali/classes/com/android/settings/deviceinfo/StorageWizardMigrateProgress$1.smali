.class Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMigrateProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    .line 60
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 5
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I

    move-result v0

    if-eq v0, p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    .line 66
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    const-string v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v1, -0x64

    if-ne p2, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_3

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "finishIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.DISK_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v4, v4, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->startActivity(Landroid/content/Intent;)V

    .line 81
    .end local v1
    .end local v2
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    const v2, 0x7f12071d

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->finishAffinity()V

    goto :goto_1

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setCurrentProgress(I)V

    .line 91
    :goto_1
    return-void
.end method
