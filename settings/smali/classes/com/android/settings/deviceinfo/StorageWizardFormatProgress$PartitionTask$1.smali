.class Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

.field final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 96
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    mul-int/lit8 v2, p1, 0x28

    div-int/lit8 v2, v2, 0x64

    const/16 v3, 0x28

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->access$100(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method
