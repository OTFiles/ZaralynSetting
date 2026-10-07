.class Lcom/readboy/store/dialogs/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/dialogs/BaseDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/dialogs/BaseDialog;


# direct methods
.method constructor <init>(Lcom/readboy/store/dialogs/BaseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/dialogs/BaseDialog;

    .line 51
    iput-object p1, p0, Lcom/readboy/store/dialogs/BaseDialog$1;->this$0:Lcom/readboy/store/dialogs/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 54
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog$1;->this$0:Lcom/readboy/store/dialogs/BaseDialog;

    iget-object v0, v0, Lcom/readboy/store/dialogs/BaseDialog;->listener:Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog$1;->this$0:Lcom/readboy/store/dialogs/BaseDialog;

    iget-object v0, v0, Lcom/readboy/store/dialogs/BaseDialog;->listener:Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;

    invoke-interface {v0}, Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;->onDismiss()V

    .line 57
    :cond_0
    return-void
.end method
