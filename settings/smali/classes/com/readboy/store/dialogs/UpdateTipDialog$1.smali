.class Lcom/readboy/store/dialogs/UpdateTipDialog$1;
.super Ljava/lang/Object;
.source "UpdateTipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/dialogs/UpdateTipDialog;
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

    .line 62
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-virtual {v1}, Lcom/readboy/store/dialogs/UpdateTipDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/readboy/store/AppUpdate/R$dimen;->rb_app_update_appupdate_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdateTipDialog;

    iget-object v1, v1, Lcom/readboy/store/dialogs/UpdateTipDialog;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdateTipDialog;

    iget-object v1, v1, Lcom/readboy/store/dialogs/UpdateTipDialog;->layout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    return-void
.end method
