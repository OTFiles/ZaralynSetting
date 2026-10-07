.class Lcom/android/settings/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ResetNetworkConfirm;

    .line 247
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 251
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 256
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/ResetNetworkConfirm;->access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 257
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v8, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 258
    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$300(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v4

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-boolean v5, v1, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v6

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZLandroid/app/ProgressDialog;)V

    .line 257
    invoke-static {v7, v8}, Lcom/android/settings/ResetNetworkConfirm;->access$202(Lcom/android/settings/ResetNetworkConfirm;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;)Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    .line 259
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    return-void
.end method
