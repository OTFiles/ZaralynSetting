.class Lcom/readboy/store/AppUpdate/CheckHelper$1;
.super Ljava/lang/Object;
.source "CheckHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/AppUpdate/CheckHelper;->showUpdateDialog(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

.field final synthetic val$isForce:Z


# direct methods
.method constructor <init>(Lcom/readboy/store/AppUpdate/CheckHelper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 163
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$1;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iput-boolean p2, p0, Lcom/readboy/store/AppUpdate/CheckHelper$1;->val$isForce:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$1;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$002(Lcom/readboy/store/AppUpdate/CheckHelper;Z)Z

    .line 167
    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$1;->val$isForce:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$1;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$100(Lcom/readboy/store/AppUpdate/CheckHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$1;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$200(Lcom/readboy/store/AppUpdate/CheckHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$1;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$300(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/dialogs/UpdateTipDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdateTipDialog;->dismiss()V

    .line 173
    return-void
.end method
