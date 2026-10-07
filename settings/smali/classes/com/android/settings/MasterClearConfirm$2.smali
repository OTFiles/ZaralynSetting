.class Lcom/android/settings/MasterClearConfirm$2;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClearConfirm;->readboyDoMasterClear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mOldOrientation:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MasterClearConfirm;

    .line 292
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    iput-object p2, p0, Lcom/android/settings/MasterClearConfirm$2;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 292
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 298
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 292
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .line 304
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 305
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MasterClearConfirm$2;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$300(Lcom/android/settings/MasterClearConfirm;)V

    .line 309
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$400(Lcom/android/settings/MasterClearConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 314
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 318
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MasterClearConfirm$2;->mOldOrientation:I

    .line 319
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$2;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 320
    return-void
.end method
