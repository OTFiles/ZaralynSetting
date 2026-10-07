.class Lcom/readboy/store/dialogs/UpdatingDialog$1;
.super Ljava/lang/Object;
.source "UpdatingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/dialogs/UpdatingDialog;
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

    .line 59
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdatingDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-virtual {v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/readboy/store/AppUpdate/R$dimen;->rb_app_update_appupdate_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 64
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-static {v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->access$000(Lcom/readboy/store/dialogs/UpdatingDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-static {v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->access$000(Lcom/readboy/store/dialogs/UpdatingDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog$1;->this$0:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-static {v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->access$000(Lcom/readboy/store/dialogs/UpdatingDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x19

    const/16 v3, 0x12c

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    return-void
.end method
