.class Lcom/android/settings/ExportLogFragment$4$1;
.super Ljava/lang/Object;
.source "ExportLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ExportLogFragment$4;->onSendEnd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ExportLogFragment$4;

.field final synthetic val$emailId:Ljava/lang/String;

.field final synthetic val$emailTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ExportLogFragment$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ExportLogFragment$4;

    .line 537
    iput-object p1, p0, Lcom/android/settings/ExportLogFragment$4$1;->this$1:Lcom/android/settings/ExportLogFragment$4;

    iput-object p2, p0, Lcom/android/settings/ExportLogFragment$4$1;->val$emailId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/ExportLogFragment$4$1;->val$emailTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$4$1;->this$1:Lcom/android/settings/ExportLogFragment$4;

    iget-object v0, v0, Lcom/android/settings/ExportLogFragment$4;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-virtual {v0}, Lcom/android/settings/ExportLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ExportLogFragment$4$1;->this$1:Lcom/android/settings/ExportLogFragment$4;

    iget-object v1, v1, Lcom/android/settings/ExportLogFragment$4;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-virtual {v1}, Lcom/android/settings/ExportLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u4e0a\u4f20Log\u5df2\u5b8c\u6210\uff0c\u975e\u5e38\u611f\u8c22\u60a8\u7684\u914d\u5408\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u8bf7\u5728%s\u7684\u90ae\u4ef6:\r\n%s\u91cc\u4e0b\u8f7d\u9644\u4ef6"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/ExportLogFragment$4$1;->val$emailId:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/settings/ExportLogFragment$4$1;->val$emailTitle:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 544
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120b02

    const/4 v3, 0x0

    .line 545
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 546
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 547
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 550
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 551
    :goto_0
    return-void
.end method
