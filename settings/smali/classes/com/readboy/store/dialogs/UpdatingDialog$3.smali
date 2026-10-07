.class Lcom/readboy/store/dialogs/UpdatingDialog$3;
.super Ljava/lang/Object;
.source "UpdatingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/dialogs/UpdatingDialog;->getDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/dialogs/UpdatingDialog;


# direct methods
.method constructor <init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/dialogs/UpdatingDialog;

    .line 111
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdatingDialog$3;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog$3;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    iget-object v0, v0, Lcom/readboy/store/dialogs/UpdatingDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog$3;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    iget-object v0, v0, Lcom/readboy/store/dialogs/UpdatingDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog$3;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    iget-object v0, v0, Lcom/readboy/store/dialogs/UpdatingDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 117
    :cond_0
    return-void
.end method
