.class Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;
.super Landroid/os/AsyncTask;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SaveChosenLockWorkerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;Lcom/android/settings/password/SaveChosenLockWorkerBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/password/SaveChosenLockWorkerBase;
    .param p2, "x1"    # Lcom/android/settings/password/SaveChosenLockWorkerBase$1;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 114
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-virtual {v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 1
    .param p1, "resultData"    # Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
