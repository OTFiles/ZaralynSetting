.class Lcom/readboy/store/dialogs/UpdateTipDialog$3;
.super Ljava/lang/Object;
.source "UpdateTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/dialogs/UpdateTipDialog;->getDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/dialogs/UpdateTipDialog;


# direct methods
.method constructor <init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/dialogs/UpdateTipDialog;

    .line 117
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog$3;->this$0:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog$3;->this$0:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdateTipDialog;->dismiss()V

    .line 121
    return-void
.end method
