.class Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrateConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;
    .param p2, "context"    # Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    .line 72
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 71
    const v2, 0x7f120e06

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
