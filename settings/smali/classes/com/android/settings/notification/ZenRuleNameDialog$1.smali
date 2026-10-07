.class Lcom/android/settings/notification/ZenRuleNameDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleNameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$isNew:Z

.field final synthetic val$originalRuleName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenRuleNameDialog;

    .line 90
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$editText:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$isNew:Z

    iput-object p4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$originalRuleName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$000(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "newName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$isNew:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$originalRuleName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$originalRuleName:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    return-void

    .line 101
    :cond_1
    sget-object v1, Lcom/android/settings/notification/ZenRuleNameDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenRuleNameDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;->onOk(Ljava/lang/String;Landroid/app/Fragment;)V

    .line 102
    return-void
.end method
